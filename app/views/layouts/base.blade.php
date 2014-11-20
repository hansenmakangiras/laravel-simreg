<!DOCTYPE html>

<html lang="en">

	<head>

        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>
            PMK LP3I Makassar
            @yield('title')
        </title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Sistem Informasi PMK LP3I Makassar v1.0">
        <meta name="author" content="Hansen Makangiras">

        <link type="text/css" href="{{asset('bootstrap/css/bootstrap.min.css')}}" rel="stylesheet">
        <link type="text/css" href="{{asset('bootstrap/css/bootstrap-responsive.min.css')}}" rel="stylesheet">
        <link type="text/css" href="{{asset('css/theme.css')}}" rel="stylesheet">

        <link type="text/css" href="{{asset('images/icons/css/font-awesome.css')}}" rel="stylesheet">
        <link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>

        @yield('style-head')

        @yield('script-head')

	</head>

    @yield('body')

    @yield('script-end')

</html>