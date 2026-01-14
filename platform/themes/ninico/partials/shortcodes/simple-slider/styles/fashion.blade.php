<style>
.slider-area .item-content .item-slider .contents ul {
    list-style: none;
}
    /***Button***/
.btn1 {
  display: inline-block;
  position: relative;
  padding: 0 60px;
  line-height: 50px;
  height: 50px;
  background: #0198B5;
  text-transform: uppercase;
  font-weight: 500;
  color: #fff;
  cursor: pointer;
  text-transform: capitalize;
  -webkit-clip-path: polygon(12% 0%, 100% 0, 88% 100%, 0% 100%);
  clip-path: polygon(12% 0%, 100% 0, 88% 100%, 0% 100%);
  border: 1px solid transparent;
  font-family: 'Audiowide';
  text-align: center;
}

@media only screen and (max-width: 320px) {
  .btn1 {
    clip-path: none;
    padding: 0 30px;
  }

  .btn1::after {
    display: none;
  }

  .btn1::before {
    display: none;
  }
}

.btn1:hover {
  background: transparent;
  color: #fff;
  border: 1px solid #0198B5;
}

.btn2 {
  display: inline-block;
  position: relative;
  padding: 0 60px;
  line-height: 46px;
  height: 50px;
  background: transparent;
  border: 2px solid #0198B5;
  text-transform: uppercase;
  font-weight: 500;
  color: #0198B5;
  cursor: pointer;
  text-transform: capitalize;
  -webkit-clip-path: polygon(11% 0%, 100% 0, 88% 100%, 0% 100%);
  clip-path: polygon(11% 0%, 100% 0, 88% 100%, 0% 100%);
  margin-left: -27px;
  font-family: 'Audiowide';
  text-align: center;
}

@media only screen and (max-width: 320px) {
  .btn2 {
    clip-path: none;
    margin: 0;
    padding: 0 30px;
  }

  .btn2:before {
    display: none;
  }
}

.btn1::before {
  content: '';
  position: absolute;
  left: 11px;
  top: -5px;
  bottom: -5px;
  width: 2px;
  transform: rotate(27deg);
  background: #0198B5;
}

.btn1:after {
  content: '';
  position: absolute;
  right: 11px;
  top: -5px;
  bottom: -5px;
  width: 2px;
  transform: rotate(27deg);
  background: #0198B5;
}

.btn2:after {
  content: '';
  position: absolute;
  right: 11px;
  top: -5px;
  bottom: -5px;
  width: 2px;
  transform: rotate(24deg);
  background: #0198B5;
}

.btn2:before {
  content: '';
  position: absolute;
  left: 11px;
  top: -5px;
  bottom: -5px;
  width: 2px;
  transform: rotate(24deg);
  background: #0198B5;
  ;
}



@media only screen and (max-width: 320px) {
  .btn2:after {
    display: none;
  }
}

.btn2:hover {
  background: #0198B5;
  color: #fff;
}

.btn3 {
  display: inline-block;
  color: #0198B5;
  font-weight: 500;
  text-transform: capitalize;
  text-align: center;
}

.btn3 i {
  padding-left: 8px;
}

.btn3:hover {
  color: #111;
}

.btn4 {
  display: inline-block;
  position: relative;
  padding: 0 60px;
  line-height: 46px;
  height: 50px;
  background: transparent;
  border: 2px solid #0198B5;
  text-transform: uppercase;
  font-weight: 500;
  color: #111;
  cursor: pointer;
  text-transform: capitalize;
  -webkit-clip-path: polygon(12% 0%, 100% 0, 89% 100%, 0% 100%);
  clip-path: polygon(12% 0%, 100% 0, 89% 100%, 0% 100%);
  font-family: 'Audiowide';
  text-align: center;
}

@media only screen and (max-width: 320px) {
  .btn4 {
    clip-path: none;
    padding: 0 30px;
  }
}

.btn4:after {
  content: '';
  position: absolute;
  right: 11px;
  top: -5px;
  bottom: -5px;
  width: 2px;
  transform: rotate(27deg);
  background: #0198B5;
}

@media only screen and (max-width: 320px) {
  .btn4:after {
    display: none;
  }
}

.btn4:before {
  content: '';
  position: absolute;
  left: 11px;
  top: -5px;
  bottom: -5px;
  width: 2px;
  transform: rotate(27.8deg);
  background: #0198B5;
}

@media only screen and (max-width: 320px) {
  .btn4:before {
    display: none;
  }
}

.btn4:hover {
  background: #0198B5;
  color: #fff;
}


    .carousel,
    .carousel-inner,
    .carousel-item {
        height: 100vh; /* Full screen height for each slide */
    }

    .fashion-slide {
        height: 100%;
        background-size: cover;
        background-position: center;
        position: relative;
        align-items: center;
        justify-content: center;
    }

    .fashion-slide::before {
        content: "";
        position: absolute;
        inset: 0;
        background: rgba(0,0,0,0.4); /* dark overlay */
    }

    /* Backgrounds */
    .fashion-slide-1 {
        
        background-image: url('{{ asset('storage/1.jpg') }}');
    }

    .fashion-slide-2 {
        background-image: url('{{ asset('storage/2.jpg') }}');
    }

    .fashion-slide-3 {
        background-image: url('{{ asset('storage/3.jpg') }}');
    }
    
    
     .fashion-slide-4 {
        background-image: url('{{ asset('storage/4-2.jpg') }}');
    }








    .overlay-content {
        position: relative;
        z-index: 2;
        max-width: 700px;
        padding: 20px;
        text-align: center;
        height: 90vh;
        vertical-align: middle;
        display: table-cell;
    }



/*....................................
3. Slider area start here
....................................*/
.slider-area {
  display: block;
  position: relative;
}

.slider_section_overlay {
  position: absolute;
  top: 0%;
  left: 0%;
  right: 0%;
  bottom: 0%;
  background: rgba(0, 0, 0, 0.4);
}

.slider-area .item-content .item-slider.items1 {
  position: relative;
  background: url(images/sliders/1.jpg);
}

.slider-area .item-content .item-slider.items2 {
  position: relative;
  background: url(images/sliders/2.jpg);
}

.slider-area .item-content .item-slider.items3 {
  position: relative;
  background: url(images/sliders/3.jpg);
}

.slider-area .item-content .item-slider.items4 {
  position: relative;
  background: url(images/sliders/4.jpg);
}

.slider-area .item-content .item-slider .contents {
  height: 90vh;
  vertical-align: middle;
  display: table-cell;
}

.slider-area .item-content .item-slider .contents ul li {
  font-size: 16px;
  line-height: 30px;
  color: #ececec;
  position: relative;
  padding-left: 20px;
}

.slider-area .item-content .item-slider .contents ul li:after {
  content: '';
  width: 8px;
  height: 8px;
  display: inline-block;
  border-radius: 50px;
  background-color: #0198b5;
  left: 0;
  top: 50%;
  transform: translateY(-50%);
  position: absolute;
}

@media only screen and (max-width: 992px) {
  .slider-area .item-content .item-slider .contents {
    height: 100vh;
  }

}

@media only screen and (max-width: 768px) {
  .slider-area .item-content .item-slider .contents {
    padding-top: 125px;
  }

  header .main-header {
    line-height: 0;
    height: 0;
    margin-top: -12px;
  }

}

.slider-area .item-content .item-slider .contents h6 {
  font-weight: 600;
  font-size: 26px;
  line-height: 100%;
  text-transform: uppercase;
  color: #0198B5;
}

.slider-area .item-content .item-slider .contents h2 {
  display: block;
  font-family: 'Audiowide';
  font-size: 50px;
  color: #fff;
  font-weight: 400;
}

@media only screen and (max-width: 1200px) {
  .slider-area .item-content .item-slider .contents h2 {
    margin: 0 0 20px;
  }
}

@media only screen and (max-width: 768px) {
  .slider-area .item-content .item-slider .contents h2 {
    font-size: 36px;
  }
}

@media only screen and (max-width: 320px) {
  .slider-area .item-content .item-slider .contents h2 {
    font-size: 30px;
  }
}

.slider-area .item-content .item-slider .contents p {
  font-weight: 400;
  font-size: 20px;
  line-height: 30px;
  padding: 0 0 40px;
  color: #ececec;
  position: relative;
}

.slider-area .item-content .item-slider .contents p:after {
  content: '';
  width: 20%;
  height: 1px;
  background: #0198B5;
  position: absolute;
  bottom: 0;
  left: 0;
}

.slider-area .item-content .item-slider .contents span {
  font-weight: 400;
  font-size: 20px;
  line-height: 100%;
  color: #FFFFFF;
  display: inline-block;
  margin-bottom: 30px;
}

@media only screen and (max-width: 1200px) {
  .slider-area .item-content .item-slider .contents p {
    width: 70%;
    margin: 0 0 25px;
  }
}

@media only screen and (max-width: 992px) {
  .slider-area .item-content .item-slider .contents p {
    width: 80%;
    margin: 0 0 25px;
  }
}

@media only screen and (max-width: 480px) {
  .slider-area .item-content .item-slider .contents p {
    width: 95%;
  }
}

.slider-area .item-content .item-slider .contents .buttons {
  display: block;
}

.slider-area .item-content .item-slider .contents .buttons a:first-child:after {
  content: '';
  position: absolute;
  right: 11px;
  top: -5px;
  bottom: -5px;
  width: 2px;
  transform: rotate(24deg);
  background: #0198B5;
}

@media only screen and (max-width: 320px) {
  .slider-area .item-content .item-slider .contents .buttons a:first-child:after {
    display: none;
  }
}

.slider-area .item-content .item-slider .contents .buttons a:last-child {
  color: #fff;
}

@media only screen and (max-width: 320px) {
  .slider-area .item-content .item-slider .contents .buttons a:last-child {
    display: none;
  }
}

.slider-area .bx-wrapper {
  margin: 0;
  border: 0;
}

.slider-area .bx-wrapper .bx-viewport {
  padding: 0;
  left: 0;
  right: 0;
  box-shadow: none;
  border: none;
}

.slider-area .item-thumbnail {
  position: relative;
  left: 0;
  right: 0;
  bottom: 0;
  z-index: 99999;
  display: flex;
}

.slider-area .item-thumbnail {
  display: flex;
}

@media only screen and (max-width: 992px) {
  .slider-area .item-thumbnail {
    display: none;
  }
}

.slider-area .item-thumbnail a {
  padding: 40px 20px;
  background: #030B1A;
  position: relative;
}

.slider-area .item-thumbnail a:after {
  content: '';
  position: absolute;
  right: 0;
  top: 20%;
  bottom: 20%;
  width: 2px;
  background: rgba(255, 255, 255, 0.05);
}

.slider-area .item-thumbnail a.active {
  background: #01040A;
}

.slider-area .item-thumbnail a .items .dbox .dleft figure {
  display: block;
}

.slider-area .item-thumbnail a .items .dbox .dleft figure img {
  border-radius: 5px;
  display: block;
}

.slider-area .item-thumbnail a .items .dbox .dright .content {
  padding: 18px 0;
}

.slider-area .item-thumbnail a .items .dbox .dright .content h3 {
  font-size: 22px;
  color: #fff;
  font-family: 'Audiowide';
  font-weight: 400;
  margin: 0 0 10px;
}

.slider-area .item-thumbnail a .items .dbox .dright .content p {
  font-family: 'Audiowide';
  font-size: 18px;
  color: #0198B5;
  margin: 0;
}

</style>
<div id="fashionCarousel" class="carousel slide" data-bs-ride="carousel" data-bs-interval="4000">

    <!-- Dots -->
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#fashionCarousel" data-bs-slide-to="0" class="active"></button>
        <button type="button" data-bs-target="#fashionCarousel" data-bs-slide-to="1"></button>
        <button type="button" data-bs-target="#fashionCarousel" data-bs-slide-to="2"></button>
         <button type="button" data-bs-target="#fashionCarousel" data-bs-slide-to="3"></button>
    </div>

    <!-- Slides -->
    <div class="carousel-inner slider-area">

        <!-- Slide 1 -->
        <div class="carousel-item active">
            <div class="item-content fashion-slide fashion-slide-1">
                <div class="item-slider items1 bg-img">
                    <div class="slider_section_overlay"></div>
                    <div class="container position-relative">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="contents">
                                    <h2 class="wow animated fadeInDown" data-wow-duration="1s">MS:5.7K
                                        SUPPRESSOR</h2>
                                    <ul>
                                        <li class="wow animated fadeInUp" data-wow-duration="1.5s">Sleek,
                                            modern,
                                            and instantly recognizable in the firearms world.</li>
                                        <li class="wow animated fadeInUp" data-wow-duration="1.5s">Suppressors
                                            have a high-tech, tactical feel that reinforces Regent Rogue as
                                            cutting-edge.</li>
                                        <li class="wow animated fadeInUp" data-wow-duration="1.5s">Strong visual
                                            appeal if shown in a dramatic dark/light contrast.</li>
                                    </ul>
                                    <p class="wow animated fadeInUp" data-wow-duration="1.5s"></p>
                                    <div class="buttons wow animated fadeInUp" data-wow-duration="2s">
                                        <a href="/products" class="btn1">buy now</a>
                                        <a href="/products" class="btn2">read more</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Slide 2 -->
        <div class="carousel-item">
            <div class="item-content fashion-slide fashion-slide-2">
                <div class="item-slider items2 bg-img">
                    <div class="slider_section_overlay"></div>
                    <div class="container position-relative">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="contents">
                                    <h2 class="wow animated fadeInDown" data-wow-duration="1s">ALPHA Gen II –
                                        Complete Modular Operator's System</h2>
                                    <ul>
                                        <li class="wow animated fadeInUp" data-wow-duration="1.5s">“Complete
                                            system”
                                            products are impactful because they imply full capability, premium
                                            gear.
                                        </li>
                                        <li class="wow animated fadeInUp" data-wow-duration="1.5s">Great to
                                            highlight Regent Rogue as not just selling parts, but whole operator
                                            solutions.
                                        </li>
                                    </ul>
                                    <p class="wow animated fadeInUp" data-wow-duration="1.5s"></p>
                                    <div class="buttons wow animated fadeInUp" data-wow-duration="2s">
                                        <a href="/products" class="btn1">buy now</a>
                                        <a href="/products" class="btn2">read more</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Slide 3 -->
        <div class="carousel-item">
            <div class="item-content fashion-slide fashion-slide-3">
                <div class="item-slider items3 bg-img">
                    <div class="slider_section_overlay"></div>
                    <div class="container position-relative">
                        <div class="row">
                            <div class="col-sm-12">
                                 <div class="contents">
                                    <h2 class="wow animated fadeInDown" data-wow-duration="1s">ALPHA Gen II –
                                        Complete Modular Operator's System</h2>
                                    <ul>
                                        <li class="wow animated fadeInUp" data-wow-duration="1.5s">“Complete
                                            system”
                                            products are impactful because they imply full capability, premium
                                            gear.
                                        </li>
                                        <li class="wow animated fadeInUp" data-wow-duration="1.5s">Great to
                                            highlight Regent Rogue as not just selling parts, but whole operator
                                            solutions.
                                        </li>
                                    </ul>
                                    <p class="wow animated fadeInUp" data-wow-duration="1.5s"></p>
                                    <div class="buttons wow animated fadeInUp" data-wow-duration="2s">
                                        <a href="/products" class="btn1">buy now</a>
                                        <a href="/products" class="btn2">read more</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="carousel-item">
            <div class="item-content fashion-slide fashion-slide-4">
                <div class="item-slider items4 bg-img">
                    <div class="slider_section_overlay"></div>
                    <div class="container position-relative">
                        <div class="row">
                            <div class="col-sm-12">
                                  <div class="contents">
                                    <h2 class="wow animated fadeInDown" data-wow-duration="1s">X-Pole™ –
                                        Tactical
                                        Glass Breaching Pole</h2>
                                    <ul>
                                        <li class="wow animated fadeInUp" data-wow-duration="1.5s">Unique and
                                            dramatic tool — not every competitor shows something this
                                            specialized.
                                        </li>
                                        <li class="wow animated fadeInUp" data-wow-duration="1.5s">Instantly
                                            communicates serious tactical innovation.
                                        </li>
                                        <li class="wow animated fadeInUp" data-wow-duration="1.5s">Visually
                                            strong
                                            for hero banners.</li>
                                    </ul>
                                    <p class="wow animated fadeInUp" data-wow-duration="1.5s"></p>
                                    <div class="buttons wow animated fadeInUp" data-wow-duration="2s">
                                        <a href="/products" class="btn1">buy now</a>
                                        <a href="/products" class="btn2">read more</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- Arrows -->
    <button class="carousel-control-prev" type="button" data-bs-target="#fashionCarousel" data-bs-slide="prev">
        <span class="carousel-control-prev-icon"></span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#fashionCarousel" data-bs-slide="next">
        <span class="carousel-control-next-icon"></span>
    </button>

</div>
