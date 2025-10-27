<style>

</style>
<link href="https://fonts.googleapis.com/css2?family=Audiowide&display=swap" rel="stylesheet">

<header class="header">
    <div class="container-fluid">
        <div class="row align-items-center">
            
            <!-- Logo -->
            <div class="col-md-3 col-sm-4 col-4">
                <div class="logo-area">
                    <a href="{{ url('/') }}">
                        <img src="{{ RvMedia::getImageUrl(theme_option('logo')) }}" alt="Logo" />
                    </a>
                </div>
            </div>
            <!-- Desktop Menu -->
            <div class="col-md-9 col-sm-8 col-6 d-none d-lg-block">
                <div class="main-header d-flex align-items-center justify-content-end">
                    
                    <!-- Navigation Menu -->
                    <div class="main-menus me-4">
                        <nav>
                            {!! Menu::renderMenuLocation('main-menu', ['view' => 'menu']) !!}
                        </nav>
                    </div>

                    <!-- Search -->
                    <div class="serach-header me-4">
                        {!! Theme::partial('header-search-bar') !!}
                    </div>

                    <!-- Icons -->
                     
                    <div class="header-meta__social d-flex align-items-center me-4">
                        {{-- Cart --}}
                        @if(EcommerceHelper::isCartEnabled())
                            <button class="header-cart p-relative tp-cart-toggle" title="Cart">
                                <i class="fal fa-shopping-cart"></i>
                                <span class="tp-product-count">{{ Cart::instance('cart')->count() }}</span>
                            </button>
                        @endif

                        {{-- Compare --}}
                        @if(EcommerceHelper::isCompareEnabled())
                            <a href="{{ route('public.compare') }}" class="header-cart p-relative" title="Compare">
                                <i class="fal fa-exchange"></i>
                                <span class="tp-product-compare-count">{{ Cart::instance('compare')->count() }}</span>
                            </a>
                        @endif

                        {{-- Wishlist --}}
                        @if(EcommerceHelper::isWishlistEnabled())
                            <a href="{{ route('public.wishlist') }}" title="Wishlist">
                                <i class="fal fa-heart"></i>
                            </a>
                        @endif

                        {{-- User --}}
                        @auth('customer')
                            <a href="{{ route('customer.overview') }}" title="{{ auth('customer')->user()->name }}">
                                <i class="fal fa-user"></i>
                            </a>
                        @else
                            <a href="{{ route('customer.login') }}" title="{{ __('Login') }}">
                                <i class="fal fa-user"></i>
                            </a>
                        @endauth
                    </div>

                    <!-- Hotline -->
                    @if($hotline = theme_option('hotline'))
                        <div class="menu-contact d-flex align-items-center">
                            <i class="fal fa-phone-alt me-2"></i>
                            <a href="tel:{{ $hotline }}">{{ $hotline }}</a>
                        </div>
                    @endif
                </div>
            </div>

            <!-- Mobile Menu -->
            <div class="col-6 col-sm-6 d-lg-none d-flex justify-content-end">
                <div class="mobile-menu-toggle">
                    <button class="mobile-menu-btn">
                        <i class="fal fa-bars"></i>
                    </button>
                </div>
            </div>

        </div>
    </div>

    <!-- Mobile Menu Wrapper -->
    <div class="mobilemenu d-lg-none">
        <div class="mobile-menu">
            <nav>
                {!! Menu::renderMenuLocation('main-menu', ['view' => 'menu']) !!}
            </nav>
        </div>
    </div>

</header>
{!! Theme::partial('navbar') !!}

<script>
document.addEventListener("DOMContentLoaded", function() {
    const toggleBtn = document.querySelector(".mobile-menu-btn");
    const mobileMenu = document.querySelector(".mobilemenu");
    const icon = toggleBtn.querySelector("i");

    // Mobile menu toggle
    if (toggleBtn && mobileMenu) {
        toggleBtn.addEventListener("click", function() {
            mobileMenu.classList.toggle("active");

            // icon change logic
            if (mobileMenu.classList.contains("active")) {
                icon.classList.remove("fa-bars");
                icon.classList.add("fa-times"); // cross
            } else {
                icon.classList.remove("fa-times");
                icon.classList.add("fa-bars"); // back to menu
            }
        });
    }

    // Submenu toggle for mobile
    const submenuParents = document.querySelectorAll(".mobilemenu li.has-dropdown");

    submenuParents.forEach(function(parent) {
        const link = parent.querySelector("a");
        const submenu = parent.querySelector("ul.submenu");

        if (link && submenu) {
            link.addEventListener("click", function(e) {
                e.preventDefault(); // stop normal link click
                parent.classList.toggle("open");
                submenu.classList.toggle("open");
            });
        }
    });
});
</script>



