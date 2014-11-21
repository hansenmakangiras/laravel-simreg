    <div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-inverse-collapse">
					<i class="icon-reorder shaded"></i>
				</a>
			  	<a class="brand" href="index.html">
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