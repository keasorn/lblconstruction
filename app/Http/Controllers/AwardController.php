<?php

namespace App\Http\Controllers;

use App\Http\Controllers\MyUtility as MyUt;
use Illuminate\Database\Eloquent\Model;
use App\Models\Award;
use Illuminate\Http\Request;

class AwardController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $model = Award::orderby("order")->get();
        $data = array(
            'awards' => $model,
        );
        return view("back_end.section_page.award.index")->with($data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //

        return view("back_end.section_page.award.create");
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $data = $request->except("_token");
        $logo = MyUt::laravelUploadImg($request, "logo", "uploading/files",false);

        $data["created_by"]=1;
        if ($request->logo) $data["logo"] = $logo;
//        return $data;
        $task = new Award($data);
        if($task->save()){
            return redirect(route("award.index"));
        }else{
            return "Insert data fails";
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\recommend  $recommend
     * @return \Illuminate\Http\Response
     */
    public function show(Recommend $recommend)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\recommend  $recommend
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $award =Award::find($id);
        return view('back_end.section_page.award.edit',compact('award'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\recommend  $recommend
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //


        $data = $request->except("_token");
        $recommend =  Award::find($id);
        $logo = MyUt::laravelUploadImg($request, "logo", "uploading/files",false);
        $data["created_by"]=1;
        if ($request->logo) $data["logo"] = $logo;
        $recommend->fill($data);
        if($recommend->save()){
            return redirect(route("award.index"));
        }else{
            return "Insert data fails";
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\recommend  $recommend
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $recommend = Award::find($id);
        $result = $recommend->delete();
        if ($result) {
            return redirect(route("award.index"));
        } else {
            return "Update to recommend table false.";
        }
    }
}
