<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Admin Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::group(['namespace' => 'Dashboard', 'middleware'=>'auth:admin', 'prefix'=>'admin'], function () {
    Route::get('users', function () {
        return "in admin";
    })->name("admin.login");
});

Route::group(['namespace' => 'Dashboard', 'prefix'=>'admin'], function () {
    Route::get('login', function () {
        return "please: logIn";
    })->name("admin.login");
});

