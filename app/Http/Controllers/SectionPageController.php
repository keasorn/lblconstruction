<?php

namespace App\Http\Controllers;

use App\Models\About;
use App\Models\Archive;
use App\Models\DesingBuild;
use App\Models\Header;
use App\Models\Label;
use App\Models\SectionPage;
use Illuminate\Http\Request;
use File;
use Illuminate\Support\Facades\Auth;

class SectionPageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //

    }

    public function insertBySection($data)
    {
        $sectionPage = new SectionPage();
        $sectionPage->fill($data);
        $sectionPage->save();
    }

    public function firstOrNewBySection($data, $title)
    {
        $sectionPage = SectionPage::firstOrNew(["title" => $title]);
        $sectionPage->fill($data);
        $sectionPage->save();
    }


    public function companyProfile(Request $request)
    {
        $path = $this->uploadImg($request, "company_profile", "uploading/files", "company_profile");
        $data = array(
            "title" => "company_profile",
            "description" => "",
            "file" => $path,
            "created_by" => 1,
        );
        $this->firstOrNewBySection($data, "companyProfile");
        return redirect()->back();
    }

    public function header(Request $request)
    {
//        return $request->all();
        $logo = $this->uploadImg($request, "logo", "uploading/files", "logo");
        $background_pc = $this->uploadImg($request, "background_pc", "uploading/files", "background_pc");
        $background_mobile = $this->uploadImg($request, "background_mobile", "uploading/files", "background_mobile");
        $data = $request->except("_token");

        if ($request->logo) $data["logo"] = $logo;
        if ($request->background_pc) $data["background_pc"] = $background_pc;
        if ($request->background_mobile) $data["background_mobile"] = $background_mobile;
        $data["created_by"] = Auth::id();
        $model = Header::find(1);
        $model->update($data);
        $model->save();
        return redirect()->back();
    }

    public function archive(Request $request)
    {
        $data = $request->except("_token");
        $data["created_by"] = Auth::id();
        $model = Archive::find(1);
        $model->update($data);
        $model->save();
        return redirect("/admin/project");
    }

    public function desginBuild(Request $request)
    {
//        return $request->all();
        $design_bg = $this->uploadImg($request, "design_bg", "uploading/files", "design_bg");
        $build_bg = $this->uploadImg($request, "build_bg", "uploading/files", "build_bg");
        $design_build_bg = $this->uploadImg($request, "design_build_bg", "uploading/files", "design_build_bg");
        $data = $request->except("_token");

        if ($request->design_bg) $data["design_bg"] = $design_bg;
        if ($request->build_bg) $data["build_bg"] = $build_bg;
        if ($request->design_build_bg) $data["design_build_bg"] = $design_build_bg;
        $data["created_by"] = Auth::id();
        $model = DesingBuild::find(1);
        $model->update($data);
        $model->save();
        return redirect()->back();
    }

    public function about(Request $request)
    {
//        return $request->all();
        $background = $this->uploadImg($request, "background", "uploading/files", "background");
        $discover = $this->uploadImg($request, "discover", "uploading/files", "discover");
        $cover = $this->uploadImg($request, "cover", "uploading/files", "cover");
        $data = $request->except("_token");

        if ($request->background) $data["background"] = $background;
        if ($request->discover) $data["discover"] = $discover;
        if ($request->cover) $data["cover"] = $cover;
        $data["created_by"] = Auth::id();
        $model = About::find(1);
        $model->update($data);
        $model->save();
        return redirect()->back();
    }


    public function label(Request $request)
    {
        $data = $request->except("_token");
        $data["created_by"] = Auth::id();
        $model = Label::first();
        $model->update($data);
        $model->save();
        return redirect()->back();
    }

    function uploadImg($request, $file_name, $path, $name = false)
    {
        if ($request->hasFile($file_name)) {
            $image = $request->file($file_name);
            if (!$name) {
                $name = uniqid() . File::extension($image->getClientOriginalName());
            }
            $destinationPath = public_path($path);
            $name = $name . "." . $image->getClientOriginalExtension();
            $image->move($destinationPath, $name);
        }
        return "/" . $path . "/" . $name;

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param \App\Models\SectionPage $sectionPage
     * @return \Illuminate\Http\Response
     */
    public function show(SectionPage $sectionPage)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param \App\Models\SectionPage $sectionPage
     * @return \Illuminate\Http\Response
     */
    public function edit(SectionPage $sectionPage)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param \App\Models\SectionPage $sectionPage
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, SectionPage $sectionPage)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \App\Models\SectionPage $sectionPage
     * @return \Illuminate\Http\Response
     */
    public function destroy(SectionPage $sectionPage)
    {
        //
    }
}
