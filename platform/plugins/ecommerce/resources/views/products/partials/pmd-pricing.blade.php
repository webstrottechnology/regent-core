{{-- PMD Pricing Matrix --}}
<style>
    .remove-pmd-row i.fas.fa-trash {
    margin: 0;
}
</style>

<div class="card mb-3 pmd-pricing-box" @if(!(old('has_pmd_pricing', $product->has_pmd_pricing ?? false))) style="display: none;" @endif>
    <div class="card-header">
        <h4 class="card-title">PMD Pricing Matrix</h4>
    </div>
    
    <div class="card-body">
        <div class="alert alert-info mb-3">
            <i class="fas fa-info-circle"></i> Configure quantity-based pricing tiers for PMD users.
        </div>
        
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th width="30%">Min Quantity</th>
                    <th width="30%">Max Quantity (Optional)</th>
                    <th width="30%">Unit Price (£)</th>
                    <th width="10%">Action</th>
                </tr>
            </thead>
            
            <tbody id="pmd-price-rows">
                {{-- Check if we have existing PMD prices --}}
                @php
                    $pmdPrices = [];
                    if (isset($product) && $product && method_exists($product, 'pmdPrices')) {
                        $pmdPrices = $product->pmdPrices;
                    }
                @endphp
                
                @if($pmdPrices && count($pmdPrices) > 0)
                    @foreach($pmdPrices as $index => $row)
                    <tr>
                        <td>
                            <input type="number" 
                                   name="pmd_prices[min_qty][]" 
                                   value="{{ $row->min_qty ?? '' }}" 
                                   class="form-control" 
                                   min="1" 
                                   required>
                        </td>
                        <td>
                            <input type="number" 
                                   name="pmd_prices[max_qty][]" 
                                   value="{{ $row->max_qty ?? '' }}" 
                                   class="form-control" 
                                   min="1"
                                   placeholder="Leave blank for unlimited">
                        </td>
                        <td>
                            <div class="input-group">
                                <span class="input-group-text">£</span>
                                <input type="number" 
                                       step="0.01" 
                                       name="pmd_prices[price][]" 
                                       value="{{ $row->price ?? '' }}" 
                                       class="form-control" 
                                       min="0" 
                                       required>
                            </div>
                        </td>
                        <td>
                            <button type="button" class="btn btn-sm btn-danger remove-pmd-row" onclick="removePmdRow(this)">
                                <i class="fas fa-trash"></i>
                            </button>
                        </td>
                    </tr>
                    @endforeach
                @else
                    {{-- Show at least one empty row --}}
                    <tr>
                        <td>
                            <input type="number" 
                                   name="pmd_prices[min_qty][]" 
                                   class="form-control" 
                                   min="1" 
                                   placeholder="e.g. 1"
                                   required>
                        </td>
                        <td>
                            <input type="number" 
                                   name="pmd_prices[max_qty][]" 
                                   class="form-control" 
                                   min="1"
                                   placeholder="e.g. 49 (optional)">
                        </td>
                        <td>
                            <div class="input-group">
                                <span class="input-group-text">£</span>
                                <input type="number" 
                                       step="0.01" 
                                       name="pmd_prices[price][]" 
                                       class="form-control" 
                                       min="0" 
                                       placeholder="e.g. 87.99"
                                       required>
                            </div>
                        </td>
                        <td>
                            <button type="button" class="btn btn-sm btn-danger remove-pmd-row" onclick="removePmdRow(this)">
                                <i class="fas fa-trash"></i>
                            </button>
                        </td>
                    </tr>
                @endif
            </tbody>
        </table>
        
        <div class="mt-3">
            <a href="javascript:void(0)" 
               class="btn btn-primary" 
               id="add-pmd-row"
               onclick="addPmdRowSingle(event)">
                <i class="fas fa-plus"></i> Add Pricing Tier
            </a>
            
            <a href="javascript:void(0)" 
               class="btn btn-outline-info" 
               onclick="addSampleDataSingle(event)">
                <i class="fas fa-magic"></i> Add Sample Tiers
            </a>
        </div>
        
        <div class="mt-3">
            <small class="text-muted">
                <strong>Example:</strong> 1-49 units: £87.99 | 50-99 units: £85.79 | 100+ units: £83.59
            </small>
        </div>
    </div>
</div>

<script>
// ============================================
// SINGLE FUNCTION FOR ADDING ROW (NO DUPLICATE)
// ============================================
let rowAdded = false;

function addPmdRowSingle(event) {
    if (event) {
        event.preventDefault();
        event.stopPropagation();
        event.stopImmediatePropagation();
    }
    
    console.log('✅ addPmdRowSingle called');
    
    // Prevent multiple calls
    if (rowAdded) {
        console.log('⚠️ Row already being added');
        return false;
    }
    
    rowAdded = true;
    
    try {
        var tbody = document.getElementById('pmd-price-rows');
        if (!tbody) {
            console.error('Tbody not found');
            rowAdded = false;
            return false;
        }
        
        var newRow = document.createElement('tr');
        newRow.innerHTML = `
            <td>
                <input type="number" 
                       name="pmd_prices[min_qty][]" 
                       class="form-control" 
                       min="1" 
                       required>
            </td>
            <td>
                <input type="number" 
                       name="pmd_prices[max_qty][]" 
                       class="form-control" 
                       min="1"
                       placeholder="Leave blank for unlimited">
            </td>
            <td>
                <div class="input-group">
                    <span class="input-group-text">£</span>
                    <input type="number" 
                           step="0.01" 
                           name="pmd_prices[price][]" 
                           class="form-control" 
                           min="0" 
                           required>
                </div>
            </td>
            <td>
                <button type="button" 
                        class="btn btn-sm btn-danger remove-pmd-row" 
                        onclick="removePmdRow(this)">
                    <i class="fas fa-trash"></i>
                </button>
            </td>
        `;
        
        tbody.appendChild(newRow);
        console.log('✅ Single row added. Total: ' + tbody.querySelectorAll('tr').length);
        
    } catch (error) {
        console.error('Error adding row:', error);
    }
    
    rowAdded = false;
    return false;
}

// ============================================
// SINGLE FUNCTION FOR SAMPLE DATA
// ============================================
function addSampleDataSingle(event) {
    if (event) {
        event.preventDefault();
        event.stopPropagation();
    }
    
    console.log('✅ addSampleDataSingle called');
    
    var tbody = document.getElementById('pmd-price-rows');
    if (!tbody) return false;
    
    // Clear existing rows
    tbody.innerHTML = '';
    
    var sampleTiers = [
        { min: 1, max: 49, price: 87.99 },
        { min: 50, max: 99, price: 85.79 },
        { min: 100, max: 149, price: 83.59 },
        { min: 150, max: 249, price: 81.39 },
        { min: 250, max: 499, price: 79.99 },
        { min: 500, max: null, price: 75.99 }
    ];
    
    sampleTiers.forEach(function(tier, index) {
        var row = document.createElement('tr');
        row.innerHTML = `
            <td>
                <input type="number" 
                       name="pmd_prices[min_qty][]" 
                       value="${tier.min}" 
                       class="form-control" 
                       min="1" 
                       required>
            </td>
            <td>
                <input type="number" 
                       name="pmd_prices[max_qty][]" 
                       value="${tier.max || ''}" 
                       class="form-control" 
                       min="1"
                       placeholder="Leave blank for unlimited">
            </td>
            <td>
                <div class="input-group">
                    <span class="input-group-text">£</span>
                    <input type="number" 
                           step="0.01" 
                           name="pmd_prices[price][]" 
                           value="${tier.price}" 
                           class="form-control" 
                           min="0" 
                           required>
                </div>
            </td>
            <td>
                <button type="button" 
                        class="btn btn-sm btn-danger remove-pmd-row" 
                        onclick="removePmdRow(this)">
                    <i class="fas fa-trash"></i>
                </button>
            </td>
        `;
        tbody.appendChild(row);
    });
    
    console.log('✅ Sample tiers added: ' + sampleTiers.length);
    return false;
}

// ============================================
// REMOVE ROW FUNCTION
// ============================================
function removePmdRow(button) {
    event.preventDefault();
    event.stopPropagation();
    
    var row = button.closest('tr');
    if (row) {
        var tbody = document.getElementById('pmd-price-rows');
        var rowCount = tbody.querySelectorAll('tr').length;
        
        if (rowCount > 1) {
            row.remove();
            console.log('✅ Row removed. Remaining: ' + (rowCount - 1));
        } else {
            console.log('⚠️ Cannot remove the last row');
        }
    }
    return false;
}

// ============================================
// TOGGLE PMD PRICING MATRIX
// ============================================
document.addEventListener('DOMContentLoaded', function() {
    // Wait a bit for page to fully load
    setTimeout(function() {
        var pmdToggle = document.querySelector('input[name="has_pmd_pricing"]');
        var pmdBox = document.querySelector('.pmd-pricing-box');
        
        console.log('PMD Toggle Setup:', {
            toggle: pmdToggle ? 'Found' : 'Not found',
            box: pmdBox ? 'Found' : 'Not found',
            checked: pmdToggle ? pmdToggle.checked : 'N/A'
        });
        
        if (pmdToggle && pmdBox) {
            // Initial state - show if checked
            if (pmdToggle.checked) {
                pmdBox.style.display = 'block';
            }
            
            // Toggle on change
            pmdToggle.addEventListener('change', function() {
                console.log('PMD Toggle changed to:', this.checked);
                if (this.checked) {
                    pmdBox.style.display = 'block';
                } else {
                    pmdBox.style.display = 'none';
                }
            });
        }
    }, 100);
});

// ============================================
// PREVENT DUPLICATE EVENT HANDLERS
// ============================================
(function() {
    // Remove any existing event listeners
    var oldBtn = document.getElementById('add-pmd-row');
    if (oldBtn) {
        var newBtn = oldBtn.cloneNode(true);
        oldBtn.parentNode.replaceChild(newBtn, oldBtn);
    }
    
    // Clear global functions to prevent duplicates
    if (window.addNewRow) delete window.addNewRow;
    if (window.addPmdRowDirect) delete window.addPmdRowDirect;
    if (window.addPmdRowNow) delete window.addPmdRowNow;
})();
</script>