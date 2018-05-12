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

Route::get('/', 'MainController@welcome')->name('welcome');

Route::get('/auth', 'AuthController@auth')->name('auth');
Route::post('/login', 'AuthController@login')->name('login');

Route::get('/admin/menu', 'MainController@adminMenu')->name('admin.menu');