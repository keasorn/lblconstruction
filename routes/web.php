<?php

use App\Models\Task;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TaskController;
use App\Models\Header;
use App\Models\SectionPage;

Route::group(['middleware' => 'traffic'], function () {
    Route::get('/{url}', function () {
        $model = SectionPage::where("title", "company_profile")->first();
        $file = $model ? $model->file : null;
        $data = array(
            'tasks' => Task::get(),
            'profileCompany' => $file,
            'header'=>Header::first(),
        );

        return view('front_end.home_page.index')->with($data);
    })->where(['url' => '|index.html']);
});

Route::get('/test', function () {
    return view('front_end.home_page.index1');
});
Route::get('/clear-cache', function () {
    $exitCode = Artisan::call('cache:clear');
    // return what you want
});
Route::get('/sign-in.html', 'App\Http\Controllers\Auth\LoginController@index')->name("login");
Route::post('/sign-in.html', 'App\Http\Controllers\Auth\LoginController@login');
Route::get('/sign-out.html', 'App\Http\Controllers\Auth\LoginController@logout')->name("logout");

Route::group(['prefix' => '/admin', 'middleware' => 'auth'], function () {

//admin page //

    Route::get("/dashboard", function () {
        $data = array(
            'tasks' => Task::orderBy("order")->get(),
        );
        return view("back_end.dashboard_page.index")->with($data);
    })->name("home");

    Route::get("/company_profile", function () {
        $model = SectionPage::where("title", "company_profile")->first();
        $file = $model ? $model->file : null;
        $data = array(
            'profileCompany' => $file,
        );
        return view("back_end.section_page.company_profile")->with($data);
    });
    Route::get("/header", function () {
        $model = Header::first();
        $data = array(
            'data' => $model,
        );
        return view("back_end.section_page.header")->with($data);
    });

    Route::post("/header", "App\Http\Controllers\SectionPageController@header")->name("page_section.header");
    Route::post("/company_profile", "App\Http\Controllers\SectionPageController@companyProfile")->name("page_section.company_profile");

    Route::resource("/task", "App\Http\Controllers\TaskController");
});
