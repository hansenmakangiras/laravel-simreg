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
Route::get('/','HomeController@showWelcome');
Route::get('post','PostController@show');

//Route::get('post/listing',array('uses' => 'PostController@listing', 'as' => 'post.listing'));
//Route::get('post/single',array('uses' => 'PostController@single', 'as' => 'post.single'));
//
//Route::get('post/listing',array('uses' => 'PostController@listing', 'as' => 'get.post.listing'));
//Route::get('post/{id}/{slug}',array('uses' => 'PostController@single', 'as' => 'get.post.single'))->where(array('id' => '[1-9][0-9]*', 'slug' => '[a-zA-Z0-9-_]+'));
//Route::post('post/{id}',array('uses' => 'PostController@update', 'as' => 'post.post.single'))->where('id','[1-9][0-9]*');

Route::resource('user','UserController');
