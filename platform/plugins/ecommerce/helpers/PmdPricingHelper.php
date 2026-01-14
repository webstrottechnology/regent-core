<?php
// File: platform/plugins/ecommerce/helpers/PmdPricingHelper.php

namespace Botble\Ecommerce\Helpers;

use Botble\Ecommerce\Models\Product;
use Botble\Ecommerce\Models\Customer;
use Illuminate\Support\Facades\Auth;

class PmdPricingHelper
{
    /**
     * Get price for product based on user type and quantity
     */
    public static function getPrice($product, $quantity = 1, $customer = null): float
    {
        if (!$product instanceof Product) {
            $product = Product::with(['pmdPrices'])->find($product);
        }
        
        if (!$product) {
            return 0;
        }
        
        // Get customer if not provided
        if (!$customer && Auth::check()) {
            $customer = Customer::find(Auth::id());
        }
        
        // Check if customer is PMD and product has PMD pricing
        $isPmdUser = $customer && $customer->isPmdUser();
        $hasPmdPricing = $product->hasPmdPricing();
        
        if ($isPmdUser && $hasPmdPricing) {
            $pmdPrice = $product->getPmdPriceForQuantity($quantity);
            if ($pmdPrice !== null) {
                return (float) $pmdPrice;
            }
        }
        
        // Return normal price (sale price if available)
        return $product->sale_price ? (float) $product->sale_price : (float) $product->price;
    }
    
    /**
     * Calculate total price for multiple quantities
     */
    public static function calculateTotal($product, $quantity, $customer = null): float
    {
        $unitPrice = self::getPrice($product, $quantity, $customer);
        return $unitPrice * $quantity;
    }
    
    /**
     * Get PMD pricing table for product
     */
    public static function getPmdPricingTable($productId): array
    {
        $product = Product::with(['pmdPrices'])->find($productId);
        
        if (!$product || !$product->hasPmdPricing()) {
            return [];
        }
        
        return $product->pmdPrices->map(function($tier) use ($product) {
            $regularPrice = $product->sale_price ?: $product->price;
            $savings = $regularPrice - $tier->price;
            $savingsPercent = ($savings / $regularPrice) * 100;
            
            return [
                'range' => $tier->range,
                'price' => (float) $tier->price,
                'formatted_price' => '£' . number_format($tier->price, 2),
                'savings' => '£' . number_format($savings, 2),
                'savings_percent' => round($savingsPercent, 1),
                'min_qty' => $tier->min_qty,
                'max_qty' => $tier->max_qty
            ];
        })->toArray();
    }
    
    /**
     * Check if current user can see PMD pricing
     */
    public static function canSeePmdPricing($customer = null): bool
    {
        if (!$customer && Auth::check()) {
            $customer = Customer::find(Auth::id());
        }
        
        return $customer && $customer->isPmdUser();
    }
    
    /**
     * Check if product is visible to current user
     */
    public static function isProductVisible($product): bool
    {
        if (!$product instanceof Product) {
            $product = Product::find($product);
        }
        
        if (!$product) {
            return false;
        }
        
        // If product is PMD-only, check if user is PMD
        if ($product->is_pmd_product) {
            $customer = Auth::check() ? Customer::find(Auth::id()) : null;
            return $customer && $customer->isPmdUser();
        }
        
        return true;
    }
    
    /**
     * Format price with currency
     */
    public static function formatPrice($price): string
    {
        return '£' . number_format($price, 2);
    }
    
    /**
     * Get applicable tier for quantity
     */
    public static function getApplicableTier($productId, $quantity): ?array
    {
        $product = Product::with(['pmdPrices'])->find($productId);
        
        if (!$product || !$product->hasPmdPricing()) {
            return null;
        }
        
        foreach ($product->pmdPrices as $tier) {
            if ($quantity >= $tier->min_qty) {
                if ($tier->max_qty == 0 || $quantity <= $tier->max_qty) {
                    return [
                        'min_qty' => $tier->min_qty,
                        'max_qty' => $tier->max_qty,
                        'price' => (float) $tier->price,
                        'range' => $tier->range,
                        'formatted_price' => '£' . number_format($tier->price, 2)
                    ];
                }
            }
        }
        
        return null;
    }
}