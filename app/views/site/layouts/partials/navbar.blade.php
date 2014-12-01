    <header>
        <!-- ===========================
        HERO AREA
        =========================== -->
        <div id="hero">
            <div class="container herocontent">
                <h2 class="wow fadeInUp" data-wow-duration="2s">Welcome To PMK LP3I Makassar</h2>
                <h4 class="wow fadeInDown" data-wow-duration="3s">Official Website PMK LP3I Makassar.</h4>
            </div>

            <!-- Featured image on the Hero area -->
            <img class="heroshot wow bounceInUp" data-wow-duration="4s" src="{{asset('site/img/hero-img.png')}}" alt="Featured Work">
        </div><!--HERO AREA END-->

        <!-- ===========================
         NAVBAR START
         =========================== -->
          <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
               <div class="container">

                      <div class="navbar-header">
                       <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                           <span class="sr-only">Toggle navigation</span>
                           <span class="icon-bar"></span>
                           <span class="icon-bar"></span>
                           <span class="icon-bar"></span>
                        </button>

                           <a class="navbar-brand" href="#hero">
                            <!-- Replace Drifolio Bootstrap with your Site Name and remove icon-grid to remove the placeholder icon -->
                            <span class="brandicon icon-grid"></span>
                            <span class="brandname">PMK LP3I Makassar 2014</span>
                        </a>
                    </div>

                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right"><!--YOUR NAVIGATION ITEMS STRAT BELOW-->
                        <li><a href="#about"><span class="btnicon icon-user"></span>Tentang</a></li>
                        <li><a href="#services"><span class="btnicon icon-cup"></span>Divisi</a></li>
                        <li><a href="#portfolio"><span class="btnicon icon-rocket"></span>Gallery</a></li>
                        <li><a href="#testimonials"><span class="btnicon icon-bubble"></span>Testimonials</a></li>

                        <!--don't forget to replace my email address below with yours-->
                        <li><a href="mailto:info-pmk@pmklp3imks.wc.it"><span class="btnicon icon-envelope-open"></span>Info</a></li>
                        <li class="active"><a href=""><span class="btnicon icon-cloud-download"></span>Download</a></li>
                        <li><a href="{{URL::to('users/login')}}"><span class="btnicon icon-user"></span>Login</a></li>
                    </ul>

                </div><!--.nav-collapse -->
            </div>
        </nav><!--navbar end-->
    </header><!--header end-->
    <!-- ===========================
     FEATURED CLIENTS SECTION START
    =========================== -->
    <div id="clients">
        <div class="container">
            <div class="col-md-3">
                <h4>Proudly worked with:</h4>
            </div>
            <div class="col-md-9">
                <ul><!--CLIENTS LOGO-->
                    <li><img src="{{asset('site/img/payoneer.png')}}" alt="Payoneer"></li>
                    <li><img src="{{asset('site/img/amazon.png')}}" alt="Amazon"></li>
                    <li><img src="{{asset('site/img/elance-odesk.png')}}" alt="Elance-oDesk"></li>
                    <li><img src="{{asset('site/img/curb.png')}}" alt="Curb Envy"></li>
                </ul><!--CLIENTS LOGO END-->
            </div>
        </div>
        <hr><!-- SECTION SEPARETOR LINE -->
    </div><!--FEATURED CLIENTS SECTION END-->