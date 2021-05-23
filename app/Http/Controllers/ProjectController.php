<?php

namespace App\Http\Controllers;

use App\Http\Controllers\MyUtility as MyUt;
use App\Models\Project;
use Illuminate\Http\Request;

class ProjectController extends Controller
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
     * @param \App\Models\Project $achive
     * @return \Illuminate\Http\Response
     */
    public function show(Project $achive)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param \App\Models\Project $achive
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $project = Project::find($id);
        return view('back_end.section_page.project.edit', compact('project'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param \App\Models\recommend $recommend
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        $data = $request->except(["_token", "_method"]);
        $project = Project::find($id);
        $image = MyUt::laravelUploadImg($request, "image", "uploading/files", false);
        $data["created_by"] = 1;
        if ($request->image) $data["image"] = $image;
        $project->fill($data);
        if ($project->save()) {
            return redirect("/admin/project");
        } else {
            return "Insert data fails";
        }
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param \App\Models\Project $achive
     * @return \Illuminate\Http\Response
     */
    public function destroy(Project $achive)
    {
        //
    }
}
