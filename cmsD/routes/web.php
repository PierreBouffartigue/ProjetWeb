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

Route::group([], function () {
    Route::get('reglements', function () {
        $reglements = DB::table('posts')->get();
        return view('reglements', compact('reglements'));
    });
});

Route::get('/boutique', 'ProductController@boutique');

Route::get('/launcher', function () {
    return view('launcher');
});

Route::get('/connexion', function () {
    return view('connexion');
});

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/CGV', function () {
    return view('CGV');
});

Route::post('/panier/ajouter', 'CartController@store')->name('cart.store');

