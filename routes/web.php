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

Route::domain('{company}.vitals.com')->group(function () {

	Auth::routes();

	Route::get('/', function () {
	    return view('welcome');
	});	

	Route::get('/home', 'HomeController@index')->name('home');

	Route::get('/profile', 'HomeController@dashboard')->name('profile');

	Route::post('/update', 'HomeController@updateProfile')->name('update_profile');
});


/*<!-- Admin routes--> */

Auth::routes();

Route::get('register', 'Auth\RegisterController@showRegistrationForm');
Route::post('register', 'Auth\RegisterController@register')->name('register');;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/module/{id}', 'AdminController@module')->name('module');

Route::get('/userproduct', 'AdminController@showuser')->name('userproduct');

Route::get('login/google', 'Auth\LoginController@socialLogin');

Route::get('login/google/callback', 'Auth\LoginController@socialLogin');

Route::post('/module/{id}', 'AdminController@store');

Route::post('/approveuser/{id}/{flag}', 'AdminController@approveUser');

//Route::post('/register', 'EmailController@send');
