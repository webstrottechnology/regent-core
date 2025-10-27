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
                        <form>
                            <input type="email" placeholder="Email Address">
                            <button type="submit" class="btn1">Subscribe</button>
                        </form>
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
                                <a href="" class="btn3">read more <i class="fas fa-arrow-right"></i></a>
                            </div>
                            <ul class="foo-social">
                                <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                <li><a href="#">
                                        <svg width="16" height="14" viewBox="0 0 16 14" fill="none"
                                            xmlns="http://www.w3.org/2000/svg">
                                            <path
                                                d="M12.6011 0L8.55906 4.47295L5.06392 0H0L6.04935 7.65673L0.316343 14H2.77104L7.19579 9.10489L11.0631 14H16L9.69417 5.92973L15.0542 0H12.6011ZM11.7403 12.5785L2.8657 1.34635H4.32443L13.0995 12.5777L11.7403 12.5785Z"
                                                fill="white" />
                                        </svg>
                                    </a></li>
                                <li><a href="#"><i class="fab fa-youtube"></i></a></li>
                                <li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <h2>latest News</h2>
                        <div class="foo-news">
                            <div class="newslists">
                                <div class="dbox">
                                    <div class="dleft">
                                        <figure><img src="/storage/sm-1.png" alt="" /></figure>
                                    </div>
                                    <div class="dright">
                                        <div class="content">
                                            <h4><a href="#">Expanding Breaching Solutions</a></h4>
                                            <p>From shotgun mounts to advanced entry tools...</p>
                                            <span><i class="fas fa-calendar"></i> 19-Aug-2025</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="newslists">
                                <div class="dbox">
                                    <div class="dleft">
                                        <figure><img src="/storage/sm-2.png" alt="" /></figure>
                                    </div>
                                    <div class="dright">
                                        <div class="content">
                                            <h4><a href="#">MS:5.7K Suppressor</a></h4>
                                            <p>We're proud to introduce the MS:5.7K Suppressor...</p>
                                            <span><i class="fas fa-calendar"></i> 20-Aug-2025</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
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
                            <a href="" class="btn1">Our Shop</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <div class="container">
                <div class="copyrightGroup">

                    <div class="copyright sm-t-center">
                        <p>Copyright © 2025 <a href="javascript:void(0);"><span>REGENT ROGUE</span> </a>Store.
                            Design by <a href="#"><span>Tiny Panda</span></a></p>
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