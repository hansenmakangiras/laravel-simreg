<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/
//Route::get('/','HomeController@showWelcome');
Route::get('/', function () {
    return View::make('admin.dashboard');
});

Route::get('post','PostController@show');

Route::get('post/listing',array('uses' => 'PostController@listing', 'as' => 'post.listing'));
Route::get('post/single',array('uses' => 'PostController@single', 'as' => 'post.single'));

//Route::get('post/listing',array('uses' => 'PostController@listing', 'as' => 'get.post.listing'));
//Route::get('post/{id}/{slug}',array('uses' => 'PostController@single', 'as' => 'get.post.single'))->where(array('id' => '[1-9][0-9]*', 'slug' => '[a-zA-Z0-9-_]+'));
//Route::post('post/{id}',array('uses' => 'PostController@update', 'as' => 'post.post.single'))->where('id','[1-9][0-9]*');
Route::resource('user','UserController');
//

// Confide routes
Route::get('users/create', 'UsersController@create');
Route::post('users', 'UsersController@store');
Route::get('users/login', 'UsersController@login');
Route::post('users/login', 'UsersController@doLogin');
Route::get('users/confirm/{code}', 'UsersController@confirm');
Route::get('users/forgot_password', 'UsersController@forgotPassword');
Route::post('users/forgot_password', 'UsersController@doForgotPassword');
Route::get('users/reset_password/{token}', 'UsersController@resetPassword');
Route::post('users/reset_password', 'UsersController@doResetPassword');
Route::get('users/logout', 'UsersController@logout');

Route::filter('owner_role', function()
{
    if (! Entrust::hasRole('Owner') ) // Checks the current user
    {
        App::abort(404);
    }
});

// Only owners will have access to routes within admin/advanced
Route::when('admin/advanced*', 'owner_role');