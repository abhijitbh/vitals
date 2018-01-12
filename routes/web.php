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

Route::get('/assesment', 'AdminController@displayAssesment')->name('assesment');

// Route::get('/edit/assesment/{id}', 'AdminController@assesment');

Route::post('/assesment', 'AdminController@saveAssesment');

Route::get('/add-header', 'AdminController@header')->name('header');

Route::post('/header/{hid}', 'AdminController@saveHeader');

Route::get('/headers/{id}', 'AdminController@headers');

Route::post('/question/{assesmentId}/{id}', 'QuestionController@store');

Route::get('/edit/assesment/{id}', 'QuestionController@index')->name('editAssesment');

Route::get('/edit/assesment/{id}/header/{hid}', 'QuestionController@editHeader')->name('displayHeader');

Route::get('/question/{id}', 'QuestionController@destroy');

Route::get('/edit-question/{id}', 'QuestionController@update');


Route::get('/assesment/preview/{id}', 'QuestionController@renderPreview');

/*Route::get('/question/{id}', 'QuestionController@update');*/




Route::get('login/google', 'Auth\LoginController@socialLogin');

Route::get('login/google/callback', 'Auth\LoginController@socialLogin');

Route::post('/module/{id}', 'AdminController@store');

Route::post('/approveuser/{id}/{flag}', 'AdminController@approveUser');

//Route::post('/register', 'EmailController@send');


Route::get('/api/user/usercount', 'ApiController@api');

Route::get('/api/user/signeduser', 'ApiController@userChartData');

Route::get('/api/user/activity', 'ApiController@userActivityPieChartData');

Route::get('/api/user/logged', 'ApiController@userLoggedPerday');

Route::get('/api/user/assessment-count', 'ApiController@assessmentPerday');

Route::get('/api/user/assessment-count', 'ApiController@assessmentPerday');

Route::get('/api/user/total-question', 'ApiController@totalquestion');
