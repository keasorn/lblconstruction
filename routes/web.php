<?php

use App\Models\Task;
use Carbon\Carbon;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TaskController;
use App\Models\Header;
use App\Models\SectionPage;
use App\Models\Team;
use App\Models\Recommend;
use App\Models\Label;

Route::group(['middleware' => 'traffic'], function () {
    Route::get('/{url}', function () {
        $model = SectionPage::where("title", "company_profile")->first();
        $file = $model ? $model->file : null;
        $data = array(
            'tasks' => Task::get(),
            'profileCompany' => $file,
            'header'=>Header::first(),
            'aboutUs'=>\App\Models\About::first(),
            'label'=>\App\Models\Label::first(),
            'teams'=>Team::orderby("order")->get(),
            'recommends'=>Recommend::orderby("order")->get(),
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
            'totalVisitor'=>\App\Models\Traffic::count(),
            'todayVisitor'=>\App\Models\Traffic::whereDate('created_at', Carbon::today())->count(),
            'weekVisitor'=>\App\Models\Traffic::whereDate('created_at',">=",  Carbon::now()->subWeeks(1))->whereDate('created_at',"<=",  Carbon::now()->subDays(1))->count(),
            'monthVisitor'=>\App\Models\Traffic::whereDate('created_at',">=",  Carbon::now()->subMonths(1))->whereDate('created_at',"<=",  Carbon::now()->subDays(1))->count(),
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
    Route::get("/design_build", function () {
        $model = Header::first();
        $data = array(
            'data' => $model,
        );
        return view("back_end.section_page.design_build")->with($data);
    });
    Route::get("/about_us", function () {
        $model = \App\Models\About::first();
        $data = array(
            'data' => $model,
        );
        return view("back_end.section_page.about_us")->with($data);
    });
    Route::get("/web_label", function () {
        $model = Label::first();
        $data = array(
            'data' => $model,
        );
        return view("back_end.section_page.web_label")->with($data);
    });


    Route::post("/header", "App\Http\Controllers\SectionPageController@header")->name("page_section.header");
    Route::post("/about", "App\Http\Controllers\SectionPageController@about")->name("page_section.about");
    Route::post("/company_profile", "App\Http\Controllers\SectionPageController@companyProfile")->name("page_section.company_profile");
    Route::post("/web_label", "App\Http\Controllers\SectionPageController@label")->name("page_section.web_label");

    Route::resource("/task", "App\Http\Controllers\TaskController");
    Route::resource("/team", "App\Http\Controllers\TeamController");
    Route::resource("/careers", "App\Http\Controllers\TeamController");
    Route::resource("/recommend", "App\Http\Controllers\RecommendController");
});
