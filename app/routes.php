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

/** ------------------------------------------
 *  Route model binding
 *  ------------------------------------------
 */
Route::model('user', 'User');
Route::model('comment', 'Comment');
Route::model('category', 'Category');
Route::model('post', 'Post');
Route::model('role', 'Role');

/** ------------------------------------------
 *  Route constraint patterns
 *  ------------------------------------------
 */
Route::pattern('comment', '[0-9]+');
Route::pattern('category','[0-9]+');
Route::pattern('post', '[0-9]+');
Route::pattern('user', '[0-9]+');
Route::pattern('role', '[0-9]+');
Route::pattern('token', '[0-9a-z]+');

/** ------------------------------------------
 *  Admin Routes
 *  ------------------------------------------
 */
Route::group(array('prefix' => 'admin', 'before' => 'auth'), function()
{
    # Comment Management
    Route::get('comments/{comment}/edit', 'AdminCommentsController@getEdit');
    Route::post('comments/{comment}/edit', 'AdminCommentsController@postEdit');
    Route::get('comments/{comment}/delete', 'AdminCommentsController@getDelete');
    Route::post('comments/{comment}/delete', 'AdminCommentsController@postDelete');
    Route::controller('comments', 'AdminCommentsController');

    # Category Management
    Route::get('categories/{category}/show', 'AdminBlogsController@getShow');
    Route::get('categories/{category}/edit', 'AdminCategoriesController@getEdit');
    Route::post('categories/{category}/edit', 'AdminCategoriesController@postEdit');
    Route::get('categories/{category}/delete', 'AdminCategoriesController@getDelete');
    Route::post('categories/{category}/delete', 'AdminCategoriesController@postDelete');
    Route::controller('categories', 'AdminCategoriesController');

    # Blog Management
    Route::get('blogs/{post}/show', 'AdminBlogsController@getShow');
    Route::get('blogs/{post}/edit', 'AdminBlogsController@getEdit');
    Route::post('blogs/{post}/edit', 'AdminBlogsController@postEdit');
    Route::get('blogs/{post}/delete', 'AdminBlogsController@getDelete');
    Route::post('blogs/{post}/delete', 'AdminBlogsController@postDelete');
    Route::controller('blogs', 'AdminBlogsController');

    # User Management
    Route::get('users/{user}/show', 'AdminUsersController@getShow');
    Route::get('users/{user}/edit', 'AdminUsersController@getEdit');
    Route::post('users/{user}/edit', 'AdminUsersController@postEdit');
    Route::get('users/{user}/delete', 'AdminUsersController@getDelete');
    Route::post('users/{user}/delete', 'AdminUsersController@postDelete');
    Route::get('users/create', 'AdminUsersController@getCreate');
    Route::controller('users', 'AdminUsersController');

    # User Role Management
    Route::get('roles/{role}/show', 'AdminRolesController@getShow');
    Route::get('roles/{role}/edit', 'AdminRolesController@getEdit');
    Route::post('roles/{role}/edit', 'AdminRolesController@postEdit');
    Route::get('roles/{role}/delete', 'AdminRolesController@getDelete');
    Route::post('roles/{role}/delete', 'AdminRolesController@postDelete');
    Route::controller('roles', 'AdminRolesController');

    # Admin Dashboard
    Route::controller('/', 'AdminDashboardController');
});

# Route::get('/','HomeController@showWelcome');
Route::get('/', function () {
    return View::make('site.default');
});

Route::get('/newsfeed', function () {
    return View::make('admin.pages.newsfeed');
});

/** ------------------------------------------
 *  Registered User Routes / Sub-Domain Routing
 *  ------------------------------------------
 */
Route::group(array('domain' => '{account}.myapp.com'), function()
{

    Route::get('user/{id}', function($account, $id)
    {
        //
    });

});

/** ------------------------------------------
 *  Frontend Routes
 *  ------------------------------------------
 */

// Confide routes
Route::get('users/register', 'UsersController@create');
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

# User RESTful Routes (Login, Logout, Register, etc)
Route::controller('users', 'UsersController');

//:: Application Routes ::

# Filter for detect language
Route::when('contact-us','detectLang');

# Contact Us Static Page
Route::get('contact-us', function()
{
    // Return about us page
    return View::make('site/contact-us');
});

# Posts - Second to last set, match slug
Route::get('{postSlug}', 'BlogController@getView');
Route::post('{postSlug}', 'BlogController@postView');

# Index Page - Last route, no matches
# Route::get('/', array('before' => 'detectLang','uses' => 'BlogController@getIndex'));
# Route::get('/', array('before' => 'detectLang','uses' => 'SiteController@getIndex'));

/*Route::get('post','PostController@show');
Route::get('post/listing',array('uses' => 'PostController@listing', 'as' => 'post.listing'));
Route::get('post/single',array('uses' => 'PostController@single', 'as' => 'post.single'));*/

//Route::get('post/listing',array('uses' => 'PostController@listing', 'as' => 'get.post.listing'));
//Route::get('post/{id}/{slug}',array('uses' => 'PostController@single', 'as' => 'get.post.single'))->where(array('id' => '[1-9][0-9]*', 'slug' => '[a-zA-Z0-9-_]+'));
//Route::post('post/{id}',array('uses' => 'PostController@update', 'as' => 'post.post.single'))->where('id','[1-9][0-9]*');
/*Route::resource('user','UserController');*/

/*# Users(Confide) routes
Route::get('users/create', 'UsersController@create');
Route::post('users', 'UsersController@store');
Route::get('users/login', 'UsersController@login');
Route::post('users/login', 'UsersController@doLogin');
Route::get('users/confirm/{code}', 'UsersController@confirm');
Route::get('users/forgot_password', 'UsersController@forgotPassword');
Route::post('users/forgot_password', 'UsersController@doForgotPassword');
Route::get('users/reset_password/{token}', 'UsersController@resetPassword');
Route::post('users/reset_password', 'UsersController@doResetPassword');
Route::get('users/logout', 'UsersController@logout');*/

/*# Users (Entrust) Routes
Route::filter('owner_role', function()
{
    if (! Entrust::hasRole('Owner') ) // Checks the current user
    {
        App::abort(404);
    }
});

# Only owners will have access to routes within admin/advanced
Route::when('admin/advanced*', 'owner_role');*/

