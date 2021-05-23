<?php

namespace App\Http\Controllers;

use App\Http\Controllers\MyUtility as MyUt;
use App\Models\Project;
use App\Models\ProjectImage;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;

class ProjectImageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($aId)
    {
        $data = array(
            'project' => Project::find($aId),
            'images' => ProjectImage::where("project", $aId)->get(),
        );

        return view("back_end.section_page.project.add_gallery.index")->with($data);
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create($aId)
    {
        $data = array(
            'project' => $aId
        );

        return view("back_end.section_page.project.add_gallery.create")->with($data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request, $aId)
    {
        //
        //
        $data = $request->except("_token");
        $image = MyUt::laravelUploadImg($request, "image", "uploading/files", false);

        $data["created_by"] = 1;
        $data["project"] = $aId;
        if ($request->image) $data["image"] = $image;
//        return $data;
        $task = new ProjectImage($data);
        if ($task->save()) {
            return redirect(route("image.index", $aId));
        } else {
            return "Insert data fails";
        }
    }

    /**
     * Display the specified resource.
     *
     * @param \App\Models\ProjectImage $ProjectImage
     * @return \Illuminate\Http\Response
     */
    public function show(ProjectImage $ProjectImage)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param \App\Models\ProjectImage $ProjectImage
     * @return \Illuminate\Http\Response
     */
    public function edit($aId, $id)
    {
        $image = ProjectImage::find($id);

        return view('back_end.section_page.project.add_gallery.edit', compact(['image', 'aId']));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param \App\Models\ProjectImage $ProjectImage
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $aId, $id)
    {
        $data = $request->except("_token");
        $image = MyUt::laravelUploadImg($request, "image", "uploading/files", false);

        $data["created_by"] = 1;
        $data["project"] = $aId;
        if ($request->image) $data["image"] = $image;
        $recommend = ProjectImage::find($id);
        $recommend->fill($data);
        if ($recommend->save()) {
            return redirect(route("image.index", $aId));
        } else {
            return "Insert data fails";
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \App\Models\ProjectImage $ProjectImage
     * @return \Illuminate\Http\Response
     */
    public function destroy($aId, $id)
    {
        //
        //
        $recommend = ProjectImage::find($id);
        $result = $recommend->delete();
        if ($result) {
            return redirect(route("image.index", $aId));
        } else {
            return "Update to recommend table false.";
        }
    }
}
