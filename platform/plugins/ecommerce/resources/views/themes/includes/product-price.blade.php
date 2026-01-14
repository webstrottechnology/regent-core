@php
    // Use the SAME guard as ProductRepository.php
    use Illuminate\Support\Facades\Auth;
    
    $customer = Auth::guard('customer')->user();
    $isPmdUser = $customer && $customer->is_pmd == 1;
    
    $hasPmdPricing = $product->has_pmd_pricing && $product->pmdPrices && $product->pmdPrices->count() > 0;
    
    // DEBUG - Check what's happening
    echo "<!-- DEBUG: Customer guard user: " . ($customer ? 'YES (ID: ' . $customer->id . ')' : 'NO') . " -->\n";
    echo "<!-- DEBUG: Customer is_pmd: " . ($customer ? $customer->is_pmd : 'N/A') . " -->\n";
    echo "<!-- DEBUG: isPmdUser: " . ($isPmdUser ? 'YES' : 'NO') . " -->\n";
    echo "<!-- DEBUG: hasPmdPricing: " . ($hasPmdPricing ? 'YES' : 'NO') . " -->\n";
@endphp

<div class="product-price mb-3">
    {{-- Regular price --}}
    <div class="d-flex align-items-center mb-2">
        @if ($product->front_sale_price != $product->price)
            <span class="original-price me-2 text-decoration-line-through text-muted">
                {{ format_price($product->price_with_taxes) }}
            </span>
            <span class="current-price text-primary fw-bold fs-4">
                {{ format_price($product->front_sale_price_with_taxes) }}
            </span>
        @else
            <span class="current-price text-primary fw-bold fs-4">
                {{ format_price($product->front_sale_price_with_taxes) }}
            </span>
        @endif
    </div>

    {{-- PMD Price for PMD users --}}
    @if ($hasPmdPricing && $isPmdUser)
        <div class="pmd-price-section mt-2 p-3 bg-light rounded border">
            <div class="d-flex align-items-center mb-2">
                <span class="badge bg-warning text-dark me-2">
                    <i class="fas fa-crown me-1"></i>PMD MEMBER
                </span>
                <h5 class="mb-0 text-success">Your Bulk Pricing</h5>
            </div>
            
            <div class="tier-list">
                @foreach ($product->pmdPrices->sortBy('min_qty') as $tier)
                    <div class="tier-item d-flex justify-content-between align-items-center p-2 mb-2 border-bottom">
                        <div>
                            <span class="fw-bold">{{ $tier->min_qty }}+ units</span>
                            @if ($tier->max_qty > 0)
                                <small class="text-muted ms-2">(up to {{ $tier->max_qty }})</small>
                            @else
                                <small class="text-muted ms-2">(no limit)</small>
                            @endif
                        </div>
                        <div class="text-end">
                            <div class="text-success fw-bold fs-5">{{ format_price($tier->price) }}</div>
                            <small class="text-muted">per unit</small>
                        </div>
                    </div>
                @endforeach
            </div>
            
            {{-- Show savings --}}
            @php
                $lowestTier = $product->pmdPrices->sortBy('price')->first();
                $regularPrice = $product->front_sale_price_with_taxes;
            @endphp
            
            @if ($lowestTier && $lowestTier->price < $regularPrice)
                <div class="mt-3 pt-3 border-top">
                    <div class="alert alert-success py-2 mb-0">
                        <i class="fas fa-tag me-2"></i>
                        <strong>Save {{ format_price($regularPrice - $lowestTier->price) }} per unit</strong> on bulk orders
                    </div>
                </div>
            @endif
        </div>
        
    @elseif ($hasPmdPricing && !$isPmdUser)
        {{-- PMD Teaser for non-PMD users --}}
        <div class="pmd-teaser mt-2">
            <div class="alert alert-info py-2 px-3 mb-0">
                <i class="fas fa-info-circle me-2"></i>
                <strong>Bulk discounts available!</strong>
                @if ($customer)
                    <a href="{{ route('customer.edit-account') }}" class="btn btn-sm btn-warning ms-2">
                        Enable PMD to view pricing
                    </a>
                @else
                    <a href="{{ route('customer.login') }}" class="btn btn-sm btn-primary ms-2">
                        Login to View PMD Pricing
                    </a>
                @endif
            </div>
        </div>
    @endif
</div>