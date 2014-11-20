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
                     @include('partials.content')
                     @yield('content')
                </div>
            </div>
        </div>
        @include('layouts.partials.footer')
    </body>
@stop

@section('script')

@stop