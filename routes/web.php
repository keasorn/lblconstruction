<?php

use App\Models\About;
use App\Models\Project;
use App\Models\DesingBuild;
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

/* PAGE HOME PAGE ROUTE URI */
Route::group(['middleware' => 'traffic'], function () {
    Route::get('/{url}', function () {


        $model = SectionPage::where("title", "company_profile")->first();
        $file = $model ? $model->file : null;
        $data = array(
            'tasks' => Task::get(),
            'profileCompany' => $file,
            'header' => Header::first(),
            'design_build' => DesingBuild::first(),
            'aboutUs' => \App\Models\About::first(),
            'label' => \App\Models\Label::first(),
            'teams' => Team::orderby("order")->get(),
            'recommends' => Recommend::orderby("order")->get(),
            'awards' => \App\Models\Award::orderby("order")->get(),
            'careers' => \App\Models\Career::where("status", "Enable")->orderby("order")->get(),
            'project' => Project::get()->keyBy("id"),
            'archive' => \App\Models\Archive::first()
        );

        return view('front_end.home_page.index')->with($data);
    })->where(['url' => '|index.html']);
});
/* END PAGE HOME PAGE ROUTE URI */

/* ROUTE URI TO CLEAR THE CACHED */
Route::get('/clear-cache', function () {
    $exitCode = Artisan::call('cache:clear');
});
/* END ROUTE URI TO CLEAR THE CACHED */

/* ROUTE URI AUTH */
Route::get('/sign-in.html', 'App\Http\Controllers\Auth\LoginController@index')->name("login");
Route::post('/sign-in.html', 'App\Http\Controllers\Auth\LoginController@login');
Route::get('/sign-out.html', 'App\Http\Controllers\Auth\LoginController@logout')->name("logout");
/* END ROUTE URI AUTH */

/* PAGE ADMIN ROUTE URI */
Route::group(['prefix' => '/admin', 'middleware' => 'auth'], function () {
    Route::get("/dashboard", function () {
        $data = array(
            'tasks' => Task::orderBy("order")->get(),
            'totalVisitor' => \App\Models\Traffic::count(),
            'todayVisitor' => \App\Models\Traffic::whereDate('created_at', Carbon::today())->count(),
            'weekVisitor' => \App\Models\Traffic::whereDate('created_at', ">=", Carbon::now()->subWeeks(1))->whereDate('created_at', "<=", Carbon::now()->subDays(1))->count(),
            'monthVisitor' => \App\Models\Traffic::whereDate('created_at', ">=", Carbon::now()->subMonths(1))->whereDate('created_at', "<=", Carbon::now()->subDays(1))->count(),
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
        return view("back_end.section_page.header")->with(array('data' => Header::first()));
    });
    Route::get("/design_build", function () {
        return view("back_end.section_page.design_build")->with(array('data' => DesingBuild::first()));
    });
    Route::get("/project", function () {
        return view("back_end.section_page.project.index")->with(array('data' => Project::get(), 'archive' => \App\Models\Archive::first()));
    });

    Route::get("/about_us", function () {
        return view("back_end.section_page.about_us")->with(array('data' => About::first()));
    });
    Route::get("/web_label", function () {
        return view("back_end.section_page.web_label")->with(array('data' => Label::first()));
    });
    Route::get("/archive", function () {
        return view("back_end.section_page.project.archive")->with(array('data' => \App\Models\Archive::first()));
    });

    Route::put("/archive/{id}/update", "App\Http\Controllers\SectionPageController@archive")->name("page_section.header");
    Route::post("/header", "App\Http\Controllers\SectionPageController@header")->name("page_section.header");
    Route::post("/about", "App\Http\Controllers\SectionPageController@about")->name("page_section.about");
    Route::post("/company_profile", "App\Http\Controllers\SectionPageController@companyProfile")->name("page_section.company_profile");
    Route::post("/web_label", "App\Http\Controllers\SectionPageController@label")->name("page_section.web_label");
    Route::post("/design_build", "App\Http\Controllers\SectionPageController@desginBuild")->name("page_section.design_build");
    Route::get("/project/{id}/edit", "App\Http\Controllers\projectController@edit");
    Route::put("/project/{id}/update", "App\Http\Controllers\projectController@update");

    Route::resource("/task", "App\Http\Controllers\TaskController");
    Route::resource("/team", "App\Http\Controllers\TeamController");
    Route::resource("/career", "App\Http\Controllers\CareerController");
    Route::resource("/recommend", "App\Http\Controllers\RecommendController");
    Route::resource("/award", "App\Http\Controllers\AwardController");
    Route::resource("/project/{aId}/image", "App\Http\Controllers\projectImageController");
});
/* END PAGE ADMIN ROUTE URI */
