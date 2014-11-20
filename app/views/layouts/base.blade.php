<!doctype html>
<html>
<head>
	@include('layouts.partials.header')
</head>
<body>
    @include('layouts.partials.navbar')
    <div class="wrapper">
        <div class="container">
            <div class="row">
                @include('layouts.partials.sidebar')
                @include('layouts.partials.content')
            </div>
        </div>
    </div>
    @include('layouts.partials.footer')
    @include('layouts.partials.script')
</body>

</html>