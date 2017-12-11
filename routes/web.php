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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::post('/update', 'HomeController@updateProfile')->name('update_profile');

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/profile', 'HomeController@dashboard')->name('profile');

Route::get('login/google', 'Auth\LoginController@socialLogin');

Route::get('login/google/callback', 'Auth\LoginController@socialLogin');