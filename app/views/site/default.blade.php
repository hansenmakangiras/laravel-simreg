<!DOCTYPE html>
<html lang="en">
    <head>
        @include('site.layouts.partials.header')
    </head>
    <body data-spy="scroll">
    <!-- Preloader -->
        <div id="preloader">
            <div id="status">
                <div class="loadicon icon-moustache wow tada infinite" data-wow-duration="8s"></div>
            </div>
        </div>
    @include('site.layouts.partials.navbar')

    <!-- ===========================
    ABOUT SECTION START
    =========================== -->
     <div id="about" class="container">
        @include('site.pages.about')
     </div><!-- ABOUT SECTION END -->

    <hr><!-- SECTION SEPARETOR LINE -->

    <!-- ===========================
    SERVICE SECTION START
    =========================== -->
    <div id="services" class="container">
         @include('site.pages.services')
    </div><!-- SERVICE SECTION END -->

    <!-- ===========================
    PORTFOLIO SECTION START
    =========================== -->
    <div id="portfolio">
        @include('site.pages.portfolio')
    </div><!-- PORTFOLIO SECTION END -->

    <!-- ===========================
    TESTIMONIAL SECTION START
    =========================== -->
    <div id="testimonials" class="container">
        @include('site.pages.testimonials')
    </div><!-- TESTIMONIAL SECTION END -->

    @include('site.layouts.partials.footer')
    @include('site.layouts.partials.script')

  </body>
</html>