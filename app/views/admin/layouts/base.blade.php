<!doctype html>
<html>
<head>
	@include('admin.layouts.partials.header')
</head>
<body>
    @include('admin.layouts.partials.navbar')
    <div class="wrapper">
        <div class="container">
            <div class="row">
                @include('admin.layouts.partials.sidebar')
                {{--@include('layouts.partials.content')--}}
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