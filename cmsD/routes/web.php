<?php

use Illuminate\Support\Facades\Route;

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
    return view('index');
});

Route::get('/vote', function () {
    return view('vote');
});

Route::get('/reglement', function () {
    return view('reglement');
});

Route::get('/CGV', function () {
    return view('CGV');
});

Route::get('/boutique', function () {
    return view('products.boutique');
});

Route::get('/launcher', function () {
    return view('launcher');
});

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
