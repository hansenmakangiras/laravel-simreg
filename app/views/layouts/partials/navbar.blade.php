<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-inverse-collapse">
                <i class="icon-reorder shaded"></i></a><a class="brand" href="index.html">PMK LP3I Makassar v1.0 </a>
                    <div class="nav-collapse collapse navbar-inverse-collapse">
                        <ul class="nav nav-icons">
                            <li class="active"><a href="#"><i class="icon-envelope"></i></a></li>
                            <li><a href="#"><i class="icon-eye-open"></i></a></li>
                            <li><a href="#"><i class="icon-bar-chart"></i></a></li>
                        </ul>
                        <form class="navbar-search pull-left input-append" action="#">
                            <input type="text" class="span3">
                            <button class="btn" type="button">
                                <i class="icon-search"></i>
                            </button>
                        </form>
                        <ul class="nav pull-right">
                            <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Frontend
                                <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Lihat Web</a></li>
                                    <li><a href="#">Kirim Email</a></li>
                                    <li class="divider"></li>
                                    <li class="nav-header">Developer</li>
                                    <li><a href="#">About Developer</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Dukungan </a></li>
                            <li class="nav-user dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <img src="{{asset('assets/images/user.png')}}" class="nav-avatar" />
                            <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Profil Anda</a></li>
                            <li><a href="#">Ubah Profil</a></li>
                            <li><a href="#">Pengaturan Akun</a></li>
                            <li class="divider"></li>
                            <li><a href="{{{ URL::to('/users/logout') }}}">Keluar</a></li>
                        </ul>
                    </li>
                </ul>
            </div><!-- /.nav-collapse -->
        </div><!-- /container -->
    </div><!-- /navbar-inner -->
</div><!-- /navbar -->