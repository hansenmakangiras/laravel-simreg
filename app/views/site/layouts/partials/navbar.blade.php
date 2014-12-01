    <header>
        <!-- ===========================
        HERO AREA
        =========================== -->
        <div id="hero">
            <div class="container herocontent">
                <h2 class="wow fadeInUp" data-wow-duration="2s">Drifolio the Awesome</h2>
                <h4 class="wow fadeInDown" data-wow-duration="3s">Exclusively crafted  for the super lazy designers like me who designed thousand of websites till today but never got a chance to build one himself.</h4>
            </div>

            <!-- Featured image on the Hero area -->
            <img class="heroshot wow bounceInUp" data-wow-duration="4s" src="img/hero-img.png" alt="Featured Work">
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
                            <span class="brandname">Drifolio Bootstrap</span>
                        </a>
                    </div>

                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right"><!--YOUR NAVIGATION ITEMS STRAT BELOW-->
                        <li><a href="#about"><span class="btnicon icon-user"></span>About</a></li>
                        <li><a href="#services"><span class="btnicon icon-cup"></span>Services</a></li>
                        <li><a href="#portfolio"><span class="btnicon icon-rocket"></span>Portfolio</a></li>
                        <li><a href="#testimonials"><span class="btnicon icon-bubble"></span>Testimonials</a></li>

                        <!--don't forget to replace my email address below with yours-->
                        <li><a href="mailto:m@creatrix.us"><span class="btnicon icon-envelope-open"></span>Contact</a></li>
                        <li class="active"><a href=""><span class="btnicon icon-cloud-download"></span>Download CV</a></li>
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
                    <li><img src="img/payoneer.png" alt="Payoneer"></li>
                    <li><img src="img/amazon.png" alt="Amazon"></li>
                    <li><img src="img/elance-odesk.png" alt="Elance-oDesk"></li>
                    <li><img src="img/curb.png" alt="Curb Envy"></li>
                </ul><!--CLIENTS LOGO END-->
            </div>
        </div>
        <hr><!-- SECTION SEPARETOR LINE -->
    </div><!--FEATURED CLIENTS SECTION END-->