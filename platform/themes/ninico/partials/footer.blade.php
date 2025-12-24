@php
    $footerColor = Theme::get('footerColor');
@endphp
<!--
<footer>
    <div
        class="footer-area pt-65"
        style="
            background-color: {{ Theme::get('footerBackgroundColor') ?: theme_option('footer_background_color', '#F8F8F8') }};
            --footer-text-color: {{ Theme::get('footerTextColor') ?: theme_option('footer_text_color', '#000000') }};
            --footer-text-muted-color: {{ Theme::get('footerTextMutedColor') ?: theme_option('footer_text_muted_color', '#686666') }};
            --footer-border-color: {{ Theme::get('footerBorderColor') ?: theme_option('footer_border_color', '#E0E0E0') }};
        "
    >
        <div class="container">
            <div class="main-footer pb-15 mb-30">
                <div class="row">
                    {!! dynamic_sidebar('footer_sidebar') !!}
                </div>
            </div>
            <div class="footer-cta pb-20">
                <div class="row justify-content-between align-items-center">
                    {!! dynamic_sidebar('footer_middle_sidebar') !!}
                </div>
            </div>
        </div>
        <div class="footer-copyright" style="background-color: {{ Theme::get('footerBottomBackgroundColor') ?: theme_option('footer_bottom_background_color', '#ededed') }}">
            <div class="container">
                <div class="row">
                    {!! dynamic_sidebar('footer_bottom_sidebar') !!}
                </div>
            </div>
        </div>
    </div>
</footer>
-->




    <section class="subscribe-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <div class="subscribe">
                        <span class="ico"><i class="far fa-envelope"></i></span>
                        <div class="conts">
                            <h2>Get Our Latest News</h2>
                            <p>Subscribe our Newsletter Now !</p>
                        </div>
                        {!! dynamic_sidebar('primary_sidebar') !!}


                        <!-- <form>
                            <input type="email" placeholder="Email Address">
                            <button type="submit" class="btn1">Subscribe</button>
                        </form> -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--Subscribe area End here-->

    <!--Footer area start here-->
    <footer class="jarallax">
        <div class="footer-top section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-6">
                        <div class="foo-about">
                            <figure><img src="/storage/logo-2.png" alt="" /></figure>
                            <div class="contents">
                                <p>Regent Rogue delivers precision arms and tactical gear engineered for professionals
                                    who demand reliability.</p>
                                <a href="/about" class="btn3">read more <i class="fas fa-arrow-right"></i></a>
                            </div>
                            <ul class="foo-social">
                                <!-- Facebook -->
                                <li>
                                    <a href="https://www.facebook.com/profile.php?id=61571614301088">
                                        <i class="fab fa-facebook-f"></i>
                                    </a>
                                </li>
                            
                                <!-- SVG Icon (used as custom X/Twitter style) -->
                            
                                <!-- Instagram -->
                                <li>
                                    <a href="https://www.instagram.com/regent.rogue/">
                                        <i class="fab fa-instagram"></i>
                                    </a>
                                </li>
                            
                                <!-- LinkedIn -->
                                <li>
                                    <a href="https://www.linkedin.com/company/regentrogue/">
                                        <i class="fab fa-linkedin-in"></i>
                                    </a>
                                </li>
                            </ul>

                        </div>
                    </div>
                     <div class="col-lg-4 col-md-6">
                        <h2>UseFull Links</h2>
                        <div class="useFullBox">
                            <ul>
                                <li>
                                    <a href="/about">
                                        <svg width="12" height="12" viewBox="0 0 12 12" fill="none"
                                            xmlns="http://www.w3.org/2000/svg">
                                            <path d="M5.15385 1L10 6L5.15385 11M1 1L5.84615 6L1 11" stroke="#0198B5"
                                                stroke-width="1.5"></path>
                                        </svg>
                                        About
                                    </a>
                                </li>
                                 <li>
                                    <a href="/partners">
                                        <svg width="12" height="12" viewBox="0 0 12 12" fill="none"
                                            xmlns="http://www.w3.org/2000/svg">
                                            <path d="M5.15385 1L10 6L5.15385 11M1 1L5.84615 6L1 11" stroke="#0198B5"
                                                stroke-width="1.5"></path>
                                        </svg>
                                        Partners
                                    </a>
                                </li>
                                 <li>
                                    <a href="/products">
                                        <svg width="12" height="12" viewBox="0 0 12 12" fill="none"
                                            xmlns="http://www.w3.org/2000/svg">
                                            <path d="M5.15385 1L10 6L5.15385 11M1 1L5.84615 6L1 11" stroke="#0198B5"
                                                stroke-width="1.5"></path>
                                        </svg>
                                        Products
                                    </a>
                                </li>
                                 <li>
                                    <a href="/contact">
                                        <svg width="12" height="12" viewBox="0 0 12 12" fill="none"
                                            xmlns="http://www.w3.org/2000/svg">
                                            <path d="M5.15385 1L10 6L5.15385 11M1 1L5.84615 6L1 11" stroke="#0198B5"
                                                stroke-width="1.5"></path>
                                        </svg>
                                        Contact
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <h2>Product Shop</h2>
                        <div class="products-foo">
                            <ul>
                                <li>
                                       <a href=""><img src="/storage/sm1.png"
                                            alt="" /></a>
                                 
                                </li>
                                <li>
                                       <a href=""><img src="/storage/sm2.png"
                                            alt="" /></a>
                                </li>
                                <li>
                                    <a href=""><img src="/storage/sm3.png"
                                            alt="" /></a>
                                </li>
                                <li>
                                    <a href=""><img src="/storage/sm4.png"
                                            alt="" /></a>
                                </li>
                            </ul>
                            <p>For More Products and Gun Click Here!</p>
                            <a href="/products" class="btn1">Our Shop</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <div class="container">
                <div class="copyrightGroup">

                    <div class="copyright sm-t-center">
                        <p>©2025 
                            Regent Rogue Ltd & LLC. All rights reserved</p>
                    </div>


                    <div class="foo-links sm-t-center">
                        <ul>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Terms & Conditions</a></li>
                            <li><a href="#">Copyright Policy</a></li>
                        </ul>
                    </div>

                </div>
            </div>
        </div>
    </footer>