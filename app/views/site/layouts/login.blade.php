<!doctype html>
<html>
<head>
	@include('admin.layouts.partials.header')
</head>
<body>
    <div class="navbar navbar-fixed-top">
        <div class="navbar-inner">
            <div class="container">
                <a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-inverse-collapse">
                    <i class="icon-reorder shaded"></i>
                </a>
                <a class="brand" href="{{ URL::to('/') }}">
                    PMK LP3I Makassar 2014
                </a>
                <div class="nav-collapse collapse navbar-inverse-collapse">
                    <ul class="nav pull-right">
                        <li>
                            <a href="{{{ URL::to('/users/create') }}}">Sign Up</a></li>
                        <li>
                            <a href="{{{ URL::to('/users/forgot_password') }}}">{{{ Lang::get('confide::confide.login.forgot_password') }}}</a>
                        </li>
                    </ul>
                </div><!-- /.nav-collapse -->
            </div>
        </div><!-- /navbar-inner -->
    </div><!-- /navbar -->
    <div class="wrapper">
        <div class="container">
            <div class="row">
                <div class="span9">
                    <div class="content">
                        @if (Session::has('message'))
                            <p class="alert">{{ Session::get('message') }}</p>
                        @endif
                        @yield('content')
                    </div>
                </div>
            </div>
        </div>
    </div>
    @include('admin.layouts.partials.footer')
    @include('admin.layouts.partials.script')
</body>

</html>