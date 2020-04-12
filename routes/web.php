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
    return view('welcome');
});

Route::get('/login', 'AuthController@login');

Route::get('/home', 'HomeController@index')->name('home');


Route::get('/admin/home', 'AdminController@index')->name('adminhome');

Route::get('/admin/viewadmin', 'AdminController@view_admin')->name('adminview');

Route::get('/admin/profil', 'AdminController@editprofil')->name('editprofil');

Route::get('/admin/tambahadmin', 'AdminController@tambahadmin')->name('tambahadmin');

Route::get('/admin/tambahbobot', 'AdminController@tambahbobot')->name('tambahbobot');


