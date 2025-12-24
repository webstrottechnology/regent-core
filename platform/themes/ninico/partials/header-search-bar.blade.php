@if(is_plugin_active('ecommerce'))
    <div class="header-search-bar">
        <form action="{{ route('public.products') }}" class="position-relative form--quick-search" data-url="{{ route('public.ajax.search-products') }}" method="GET">
            <div class="search-info p-relative">
                <input 
                    type="text" 
                    name="q" 
                    class="input-search-product" 
                    placeholder="{{ __('Search products...') }}" 
                    value="{{ BaseHelper::stringify(request()->query('q')) }}" 
                    autocomplete="off"
                >
                <button class="header-search-icon" title="search">
                    <i class="fal fa-search"></i>
                </button>
            </div>
            <div class="panel--search-result"></div>
        </form>
    </div>
@endif
