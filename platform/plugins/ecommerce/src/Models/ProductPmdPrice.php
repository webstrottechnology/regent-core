<?php

namespace Botble\Ecommerce\Models;

use Botble\Base\Models\BaseModel;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class ProductPmdPrice extends BaseModel
{
    protected $table = 'ec_product_pmd_prices';

    protected $fillable = [
        'product_id',
        'min_qty',
        'max_qty',
        'price',
    ];
    
    protected $casts = [
        'min_qty' => 'integer',
        'max_qty' => 'integer',
        'price' => 'decimal:2',
    ];

    /**
     * Relationship with Product
     */
    public function product(): BelongsTo
    {
        return $this->belongsTo(Product::class, 'product_id');
    }

    /**
     * Get quantity range display
     */
    public function getRangeAttribute(): string
    {
        if ($this->max_qty == 0) {
            return "{$this->min_qty}+";
        }
        
        return "{$this->min_qty} - {$this->max_qty}";
    }

    /**
     * Get formatted price
     */
    public function getFormattedPriceAttribute(): string
    {
        return '£' . number_format($this->price, 2);
    }

    /**
     * Check if quantity falls in this tier
     */
    public function isQuantityInRange(int $quantity): bool
    {
        if ($quantity < $this->min_qty) {
            return false;
        }
        
        if ($this->max_qty == 0) {
            return true; // 0 means no upper limit
        }
        
        return $quantity <= $this->max_qty;
    }

    /**
     * Scope for getting tier for specific quantity
     */
    public function scopeForQuantity($query, int $quantity)
    {
        return $query->where('min_qty', '<=', $quantity)
                    ->where(function($q) use ($quantity) {
                        $q->where('max_qty', '>=', $quantity)
                          ->orWhere('max_qty', 0);
                    });
    }
}