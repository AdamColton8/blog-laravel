<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::get('/', 'PostController@showPosts');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/post/add', function(){
  return view('post.add');
});

Route::get('/post/{id}', 'PostController@showPostById')->name('showPost');
Route::get('/post/action/remove/{id}', 'PostController@remove');


Route::post('/post/add', 'PostController@create');
Route::get('/post/edit/{id}', 'PostController@edit');
Route::post('/post/update', 'PostController@update');

Route::get('/users', 'UserController@list');
Route::get('/user/posts/{id}', 'PostController@showPostsByUserId');

// ** CHAT
Route::get('/user/chat/{id}', 'ChatController@show');
Route::post('/chat/send', 'ChatController@send');
Route::get('/chat/getNewMessages', 'ChatController@getNewMessages');
