@extends('layout.base')

@section('style-head')
     <link href="{{asset('assets/css/social-coloredicons-buttons.css')}}" rel="stylesheet">
     <link href="{{asset('assets/plugins/jquery.ambiance/jquery.ambiance.css')}}" rel="stylesheet">
     <link href="{{asset('assets/css/animation.css')}}" rel="stylesheet">
@stop

@section('body')
    <body>
        @include('layouts.partials.navbar')
        <div class="wrapper">
            <div class="container">
                <div class="row">
                    @include('layouts.partials.sidebar')
                     @include('layouts.partials.rightbar')
                     @yield('content')
                </div>
            </div>
        </div>
        @include('layouts.partials.footer')
    </body>
@stop

@section('script-end')
    <script src="{{asset('scripts/jquery-1.9.1.min.js')}}" type="text/javascript"></script>
    <script src="{{asset('scripts/jquery-ui-1.10.1.custom.min.js')}}" type="text/javascript"></script>
    <script src="{{asset('bootstrap/js/bootstrap.min.js')}}" type="text/javascript"></script>
    <script src="{{asset('scripts/flot/jquery.flot.js')}}" type="text/javascript"></script>
    <script src="{{asset('scripts/flot/jquery.flot.resize.js')}}" type="text/javascript"></script>
    <script src="{{asset('scripts/datatables/jquery.dataTables.js')}}" type="text/javascript"></script>
    <script src="{{asset('scripts/common.js')}}" type="text/javascript"></script>
@stop