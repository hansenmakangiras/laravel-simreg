<?php

/*
|--------------------------------------------------------------------------
| Application & Route Filters
|--------------------------------------------------------------------------
|
| Below you will find the "before" and "after" events for the application
| which may be used to do any work before or after a request into your
| application. Here you may also register your custom route filters.
|
*/

App::before(function($request)
{
	//
});


App::after(function($request, $response)
{
	//
});

/*
|--------------------------------------------------------------------------
| Authentication Filters
|--------------------------------------------------------------------------
|
| The following filters are used to verify that the user of the current
| session is logged into this application. The "basic" filter easily
| integrates HTTP Basic authentication for quick, simple checking.
|
*/

Route::filter('auth', function()
{
	if (Auth::guest())
	{
		if (Request::ajax())
		{
			return Response::make('Unauthorized', 401);
		}
		else
		{
			return Redirect::guest('login');
		}
	}
});

// Only authenticated users will be able to access routes that begins with
// 'admin'. Ex: 'admin/posts', 'admin/categories'.
//Route::when('admin*', 'auth');

// Entrust Filter
Entrust::routeNeedsRole('admin*', 'Admin', function () {
    return Redirect::guest('users/login');
});

// Only users with roles that have the 'manage_posts' permission will
// be able to access any route within admin/post.
Entrust::routeNeedsPermission( 'admin/post*', 'manage_posts' );
// If a user has `manage_posts`, `manage_comments` or both they will have access.
//Entrust::routeNeedsPermission( 'admin/post*', array('manage_posts','manage_comments'), null, false );

//---------------------------------------------------------------------------------------------------------------------------------------

// Only owners will have access to routes within admin/advanced
//Entrust::routeNeedsRole( 'admin/advanced*', 'Owner' );
Entrust::routeNeedsRole( 'admin/advanced*', 'Owner', Redirect::to('/home') );
// If a user is a member of `Owner`, `Writer` or both they will have access.
//Entrust::routeNeedsRole( 'admin/advanced*', array('Owner','Writer'), null, false );

//---------------------------------------------------------------------------------------------------------------------------------------

// Optionally the second parameter can be an array of permissions or roles.
// User would need to match all roles or permissions for that route.
Entrust::routeNeedsPermission( 'admin/post*', array('manage_posts','manage_comments') );

//---------------------------------------------------------------------------------------------------------------------------------------
Entrust::routeNeedsRole( 'admin/advanced*', array('Owner','Writer') );
// If a user is a member of `Owner`, `Writer` or both, or user has `manage_posts`, `manage_comments` they will have access.
// You can set the 4th parameter to true then user must be member of Role and must has Permission.
//Entrust::routeNeedsRoleOrPermission( 'admin/advanced*', array('Owner','Writer'), array('manage_posts','manage_comments'), null, false);

/*Route::filter('auth.basic', function()
{
	return Auth::basic();
});*/

/*
|--------------------------------------------------------------------------
| Guest Filter
|--------------------------------------------------------------------------
|
| The "guest" filter is the counterpart of the authentication filters as
| it simply checks that the current user is not logged in. A redirect
| response will be issued if they are, which you may freely change.
|
*/

Route::filter('guest', function()
{
	if (Auth::check()) return Redirect::to('/');
});

/*
|--------------------------------------------------------------------------
| CSRF Protection Filter
|--------------------------------------------------------------------------
|
| The CSRF filter is responsible for protecting your application against
| cross-site request forgery attacks. If this special token in a user
| session does not match the one given in this request, we'll bail.
|
*/

Route::filter('csrf', function()
{
	if (Session::token() != Input::get('_token'))
	{
		throw new Illuminate\Session\TokenMismatchException;
	}
});
