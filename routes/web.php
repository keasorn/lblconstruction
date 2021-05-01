<?php

use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Route;






Route::get('/', function () {

    return view('front_end.home_page.index');
});
Route::get('/home', function () {
    return 1;
//    return view('front_end.home_page.index1');
});

Route::get('/clear-cache', function() {
    $exitCode = Artisan::call('cache:clear');
    // return what you want
});