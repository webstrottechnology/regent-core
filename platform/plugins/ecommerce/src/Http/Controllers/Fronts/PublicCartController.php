<?php

namespace Botble\Ecommerce\Http\Controllers\Fronts;

use Botble\Base\Http\Controllers\BaseController;
use Botble\Ecommerce\AdsTracking\FacebookPixel;
use Botble\Ecommerce\AdsTracking\GoogleTagManager;
use Botble\Ecommerce\Cart\Cart as CartInstance;
use Botble\Ecommerce\Enums\DiscountTypeEnum;
use Botble\Ecommerce\Facades\Cart;
use Botble\Ecommerce\Facades\EcommerceHelper;
use Botble\Ecommerce\Facades\OrderHelper;
use Botble\Ecommerce\Http\Requests\CartRequest;
use Botble\Ecommerce\Http\Requests\UpdateCartRequest;
use Botble\Ecommerce\Models\Discount;
use Botble\Ecommerce\Models\Product;
use Botble\Ecommerce\Services\HandleApplyCouponService;
use Botble\Ecommerce\Services\HandleApplyPromotionsService;
use Botble\SeoHelper\Facades\SeoHelper;
use Botble\Theme\Facades\Theme;
use Exception;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Route;
use Throwable;

class PublicCartController extends BaseController
{
    protected ?array $cachedCartData = null;

    protected ?object $cachedCartInstance = null;

    public function __construct(
        protected HandleApplyPromotionsService $applyPromotionsService,
        protected HandleApplyCouponService $handleApplyCouponService
    ) {
    }

    protected function getCartInstance(): CartInstance
    {
        if ($this->cachedCartInstance === null) {
            $this->cachedCartInstance = Cart::instance('cart');
        }

        return $this->cachedCartInstance;
    }

    public function index()
    {
        $promotionDiscountAmount = 0;
        $couponDiscountAmount = 0;

        $products = new Collection();
        $crossSellProducts = new Collection();

        if (Cart::instance('cart')->isNotEmpty()) {
            [$products, $promotionDiscountAmount, $couponDiscountAmount] = $this->getCartData();

            $crossSellProducts = get_cart_cross_sale_products(
                $products->pluck('original_product.id')->all(),
                (int) theme_option('number_of_cross_sale_product', 4)
            ) ?: new Collection();
        }

        $title = __('Shopping Cart');

        SeoHelper::setTitle(theme_option('ecommerce_cart_seo_title') ?: $title)
            ->setDescription(theme_option('ecommerce_cart_seo_description'));

        Theme::breadcrumb()->add($title, route('public.cart'));

        app(GoogleTagManager::class)->viewCart();

        return Theme::scope(
            'ecommerce.cart',
            compact('promotionDiscountAmount', 'couponDiscountAmount', 'products', 'crossSellProducts'),
            'plugins/ecommerce::themes.cart'
        )->render();
    }

    protected function applyPmdPricingToCart(): void
{
    $customer = auth('customer')->user();
    if (! $customer || ! $customer->is_pmd) {
        return;
    }

    $cart = Cart::instance('cart');

    foreach ($cart->content() as $rowId => $cartItem) {

        $product = Product::query()->find($cartItem->id);
        if (! $product) {
            continue;
        }

        $originalProduct = $product->original_product ?? $product;

        if (! $originalProduct->has_pmd_pricing) {
            continue;
        }

        $qty = $cartItem->qty;

        $pmdPrices = DB::table('ec_product_pmd_prices')
            ->where('product_id', $originalProduct->id)
            ->orderBy('min_qty')
            ->get();

        foreach ($pmdPrices as $tier) {
            if (
                $qty >= $tier->min_qty &&
                ($tier->max_qty === null || $qty <= $tier->max_qty)
            ) {
                // 🔥 FORCE PRICE UPDATE
                $cart->update($rowId, [
                    'price' => (float) $tier->price,
                ]);

                break;
            }
        }
    }
}


    public function store(CartRequest $request)
{
    $response = $this->httpResponse();

    $product = Product::query()->find($request->input('id'));

    if (! $product) {
        return $response
            ->setError()
            ->setMessage(__('This product is out of stock or not exists!'));
    }

    // ============================================
    // DIRECT PMD PRICE CALCULATION - NO BUGS
    // ============================================
    $quantity = $request->input('qty', 1);
    
    // Start with regular price
    $price = $product->price()->getPrice(false);
    
    // Check if user is PMD
    $isPmdUser = $product->userIsPmd();
    
    if ($isPmdUser && $product->has_pmd_pricing) {
        $pmdPrice = $product->getPmdPriceForQuantity($quantity);
        if ($pmdPrice !== null) {
            $price = (float) $pmdPrice;
        }
    }
    
    // DEBUG: Log the price being used
    \Log::info('CART ADD - Direct Price Calculation', [
        'product_id' => $product->id,
        'quantity' => $quantity,
        'is_pmd_user' => $isPmdUser,
        'price_used' => $price,
        'pmd_price' => $pmdPrice ?? null
    ]);
    // ============================================

    // Add to cart DIRECTLY with correct price
    Cart::instance('cart')->add(
        $product->id,
        $product->name,
        $quantity,
        $price, // <-- CORRECT PRICE
        ['image' => $product->image]
    );

    $response->setMessage(__(
        'Added product :product to cart successfully!',
        ['product' => $product->name]
    ));

    return $response->setData([
        'status' => true,
        'count' => Cart::instance('cart')->count(),
        'total_price' => format_price(Cart::instance('cart')->rawTotal()),
    ]);
}

    public function update(UpdateCartRequest $request)
    {
        if ($request->has('checkout')) {
            $token = OrderHelper::getOrderSessionToken();

            return $this
                ->httpResponse()
                ->setNextUrl(route('public.checkout.information', $token));
        }

        $data = $request->input('items', []);

        $outOfQuantity = false;
        foreach ($data as $item) {
            $cartItem = Cart::instance('cart')->get($item['rowId']);

            if (! $cartItem) {
                continue;
            }

            /**
             * @var Product $product
             */
            $product = Product::query()->find($cartItem->id);

            if ($product) {
                $originalQuantity = $product->quantity;
                $product->quantity = (int) $product->quantity - (int) Arr::get($item, 'values.qty', 0) + 1;

                if ($product->quantity < 0) {
                    $product->quantity = 0;
                }

                if ($product->isOutOfStock()) {
                    $outOfQuantity = true;
                } else {
                    Cart::instance('cart')->update($item['rowId'], Arr::get($item, 'values'));
                }

                $product->quantity = $originalQuantity;
            }
        }

        if ($outOfQuantity) {
            return $this
                ->httpResponse()
                ->setError()
                ->setData($this->getDataForResponse())
                ->setMessage(__('One or all products are not enough quantity so cannot update!'));
        }

        return $this
            ->httpResponse()
            ->setData($this->getDataForResponse())
            ->setMessage(__('Update cart successfully!'));
    }

    public function destroy(string $id)
    {
        try {
            $cartItem = Cart::instance('cart')->get($id);
            $product = Product::query()->find($cartItem->id);

            $googleTagManager = app(GoogleTagManager::class);

            if ($product) {
                $trackingData = $googleTagManager->formatProductTrackingData($product->original_product, $cartItem->qty);
            }

            $googleTagManager->removeFromCart($cartItem);

            Cart::instance('cart')->remove($id);

            $responseData = [
                ...$this->getDataForResponse(),
            ];

            if (isset($trackingData)) {
                $responseData['extra_data'] = $trackingData;
            }

            return $this
                ->httpResponse()
                ->setData($responseData)
                ->setMessage(__('Removed item from cart successfully!'));
        } catch (Throwable) {
            return $this
                ->httpResponse()
                ->setError()
                ->setMessage(__('Cart item is not existed!'));
        }
    }

    public function empty()
    {
        Cart::instance('cart')->destroy();

        return $this
            ->httpResponse()
            ->setData(Cart::instance('cart')->content())
            ->setMessage(__('Empty cart successfully!'));
    }

    protected function getCartData(): array
    {
        if ($this->cachedCartData !== null) {
            return $this->cachedCartData;
        }

        $cartInstance = $this->getCartInstance();
        $products = $cartInstance->products();

        $cartData = [
            'rawTotal' => $cartInstance->rawTotal(),
            'cartItems' => $cartInstance->content(),
            'countCart' => $cartInstance->count(),
            'productItems' => $products,
        ];

        $promotionDiscountAmount = $this->applyPromotionsService->execute(null, $cartData);

        $couponDiscountAmount = $this->applyAutoCouponCode();

        $sessionData = OrderHelper::getOrderSessionData();

        if (session()->has('applied_coupon_code')) {
            $couponDiscountAmount = (float) Arr::get($sessionData, 'coupon_discount_amount', 0);
        }

        $this->cachedCartData = [$products, $promotionDiscountAmount, $couponDiscountAmount];

        return $this->cachedCartData;
    }

    protected function getDataForResponse(): array
    {
        $cartContent = null;

        $cartInstance = $this->getCartInstance();

        $cartData = $this->getCartData();

        [$products, $promotionDiscountAmount, $couponDiscountAmount] = $cartData;

        $cartCount = $cartInstance->count();
        $cartSubTotal = $cartInstance->rawSubTotal();
        $cartContentData = $cartInstance->content();

        if (Route::is('public.cart.*')) {
            $crossSellProducts = collect();
            if ($products->isNotEmpty()) {
                $productIds = $products->pluck('original_product.id')->filter()->unique()->all();

                if (! empty($productIds)) {
                    $crossSellProducts = get_cart_cross_sale_products(
                        $productIds,
                        (int) theme_option('number_of_cross_sale_product', 4)
                    ) ?: collect();
                }
            }

            $cartContent = view(
                EcommerceHelper::viewPath('cart'),
                compact('products', 'promotionDiscountAmount', 'couponDiscountAmount', 'crossSellProducts')
            )->render();
        }

        $additionalData = apply_filters('ecommerce_cart_additional_data', [], $cartData);

        return apply_filters('ecommerce_cart_data_for_response', [
            'count' => $cartCount,
            'total_price' => format_price($cartSubTotal),
            'content' => $cartContentData,
            'cart_content' => $cartContent,
            ...$additionalData,
        ], $cartData);
    }

    protected function applyAutoCouponCode(): float
    {
        $couponDiscountAmount = 0;

        if ($couponCode = session('auto_apply_coupon_code')) {
            $coupon = Discount::query()
                ->where('code', $couponCode)
                ->where('apply_via_url', true)
                ->where('type', DiscountTypeEnum::COUPON)
                ->exists();

            if ($coupon) {
                $couponData = $this->handleApplyCouponService->execute($couponCode);

                if (! Arr::get($couponData, 'error')) {
                    $couponDiscountAmount = Arr::get($couponData, 'data.discount_amount', 0);
                }
            }
        }

        return (float) $couponDiscountAmount;
    }
}
