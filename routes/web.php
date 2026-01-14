<?php

use Illuminate\Support\Facades\Route;
use Botble\Ecommerce\Models\Product;

// ==============================================
// PMD PRICING ROUTES
// ==============================================
Route::middleware(['web'])->group(function () {
    Route::get('/products/{id}/calculate-pmd-price', function($id) {
    $product = Product::with('pmdPrices')->findOrFail($id);
    $quantity = request('quantity', 1);
    
    // Check if user is PMD - UPDATED
    $isPmdUser = $product->userIsPmd();
    
    if (!$isPmdUser) {
        return response()->json([
            'success' => false,
            'message' => 'PMD pricing available only for PMD users'
        ], 403);
    }
    
    // Get PMD price using product model method
    $pmdPrice = $product->getPmdPriceForQuantity($quantity);
    
    // If no PMD price found, use regular price
    if (!$pmdPrice) {
        $pmdPrice = $product->sale_price ?: $product->price;
    }
    
    return response()->json([
        'success' => true,
        'quantity' => $quantity,
        'unit_price' => $pmdPrice,
        'total_price' => $pmdPrice * $quantity
    ]);
})->name('products.calculate-pmd-price');
});


// Test route for PMD pricing
Route::get('/test-pmd', function() {
    // Enable error reporting
    error_reporting(E_ALL);
    ini_set('display_errors', 1);
    
    try {
        // Your test code from above
        $customer = \Botble\Ecommerce\Models\Customer::find(1);
        if (!$customer) {
            return "Customer not found";
        }
        
        $customer->is_pmd = 1;
        $customer->save();
        
        \Illuminate\Support\Facades\Auth::guard('customer')->login($customer);
        
        $product = \Botble\Ecommerce\Models\Product::find(275);
        if (!$product) {
            return "Product not found";
        }
        
        $html = "<h3>PMD Test Results</h3>";
        $html .= "<p>Customer: {$customer->email} (PMD: " . ($customer->is_pmd ? 'Yes' : 'No') . ")</p>";
        $html .= "<p>Product: {$product->name}</p>";
        
        $isPmd = $product->userIsPmd();
        $html .= "<p>userIsPmd(): " . ($isPmd ? 'Yes' : 'No') . "</p>";
        
        $pmdPrice = $product->getPmdPriceForQuantity(60);
        $html .= "<p>PMD Price for 60: £{$pmdPrice}</p>";
        
        // Clear and add to cart
        \Botble\Ecommerce\Facades\Cart::instance('cart')->destroy();
        
        $request = new \Illuminate\Http\Request(['qty' => 60]);
        $orderHelper = app(\Botble\Ecommerce\Supports\OrderHelper::class);
        $cartItems = $orderHelper->handleAddCart($product, $request);
        
        $cartItem = \Botble\Ecommerce\Facades\Cart::instance('cart')->content()->first();
        if ($cartItem) {
            $html .= "<p>Cart Price: £{$cartItem->price}</p>";
            $html .= "<p>" . ($cartItem->price == $pmdPrice ? "✅ SUCCESS" : "❌ FAILED") . "</p>";
        }
        
        return $html;
        
    } catch (Exception $e) {
        return "Error: " . $e->getMessage() . "<br>" . $e->getTraceAsString();
    }
});


Route::get('/cart/add-direct/{productId}/{qty}', function($productId, $qty) {
    // Set customer as PMD
    $customer = \Botble\Ecommerce\Models\Customer::find(1);
    $customer->is_pmd = 1;
    $customer->save();
    auth()->guard('customer')->login($customer);
    
    // Get product and PMD price
    $product = \Botble\Ecommerce\Models\Product::find($productId);
    $pmdPrice = $product->getPmdPriceForQuantity($qty);
    
    // Add to cart
    \Botble\Ecommerce\Facades\Cart::instance('cart')->add(
        $product->id,
        $product->name,
        $qty,
        $pmdPrice,
        ['image' => $product->image]
    );
    
    return redirect('/cart');
});


Route::get('/test-direct-cart', function() {
    // Enable all errors
    error_reporting(E_ALL);
    ini_set('display_errors', 1);
    
    echo "<h2>Direct Cart Test</h2>";
    
    // 1. Check file paths
    $cartFile = base_path('platform/plugins/ecommerce/src/Cart/Cart.php');
    $cartItemFile = base_path('platform/plugins/ecommerce/src/Cart/CartItem.php');
    
    echo "<p>Cart.php exists: " . (file_exists($cartFile) ? 'Yes' : 'No') . "</p>";
    echo "<p>CartItem.php exists: " . (file_exists($cartItemFile) ? 'Yes' : 'No') . "</p>";
    
    // 2. Check if fixes are in files
    $cartContent = file_get_contents($cartFile);
    $hasCartFix = strpos($cartContent, '$cartItem->price = $originalPrice;') !== false;
    echo "<p>Cart.php has fix: " . ($hasCartFix ? '✅ Yes' : '❌ No') . "</p>";
    
    $cartItemContent = file_get_contents($cartItemFile);
    $hasCartItemFix = strpos($cartItemContent, '// DON\'T let product override the price') !== false;
    echo "<p>CartItem.php has fix: " . ($hasCartItemFix ? '✅ Yes' : '❌ No') . "</p>";
    
    // 3. Test direct cart addition
    echo "<h3>Testing Cart Addition</h3>";
    
    // Clear cart
    \Botble\Ecommerce\Facades\Cart::instance('cart')->destroy();
    
    // Add directly with price 90
    \Botble\Ecommerce\Facades\Cart::instance('cart')->add(
        275,
        'Test Product',
        51,
        90, // Direct PMD price
        ['image' => 'test.jpg']
    );
    
    // Check
    $item = \Botble\Ecommerce\Facades\Cart::instance('cart')->content()->first();
    echo "<p>Added with price: £90</p>";
    echo "<p>Cart shows price: £" . $item->price . "</p>";
    echo "<p>" . ($item->price == 90 ? '✅ SUCCESS' : '❌ FAILED') . "</p>";
    
    echo "<hr><a href='/cart' target='_blank'>Check Cart Page</a>";
});

