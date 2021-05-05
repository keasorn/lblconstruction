<?php

use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TaskController;
Route::group([ 'middleware' => 'traffic'], function () {
    Route::get('/{url}', function () {



        return view('front_end.home_page.index');
    })->where(['url' => '|index.html']);
});

Route::get('/clear-cache', function () {
    $exitCode = Artisan::call('cache:clear');
    // return what you want
});
Route::get('/sign-in.html', 'App\Http\Controllers\Auth\LoginController@index')->name("login");
Route::post('/sign-in.html', 'App\Http\Controllers\Auth\LoginController@login');
Route::get('/sign-out.html', 'App\Http\Controllers\Auth\LoginController@logout')->name("logout");

Route::group(['prefix'=>'/admin', 'middleware' => 'auth'], function () {

//admin page //

    Route::get("/dashboard", function () {
        return view("back_end.dashboard_page.index");
    })->name("home");

    Route::resource("/task","App\Http\Controllers\TaskController");
});
