<?php

namespace App\Http\Controllers;

use App\Http\Controllers\MyUtility as MyUt;
use App\Models\Career;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;

class CareerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $model = Career::orderby("order")->get();
        $data = array(
            'careers' => $model,
        );
        return view("back_end.section_page.career.index")->with($data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //

        return view("back_end.section_page.career.create");
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
        $data["created_by"]=1;
//        return $data;
        $task = new Career($data);
        if($task->save()){
            return redirect(route("career.index"));
        }else{
            return "Insert data fails";
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\career  $career
     * @return \Illuminate\Http\Response
     */
    public function show(career $career)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\career  $career
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $career =Career::find($id);
        return view('back_end.section_page.career.edit',compact('career'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\career  $career
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //


        $data = $request->except("_token");
        $career =  Career::find($id);
        $career->fill($data);
        if($career->save()){
            return redirect(route("career.index"));
        }else{
            return "Insert data fails";
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\career  $career
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $career = Career::find($id);
        $result = $career->delete();
        if ($result) {
            return redirect(route("career.index"));
        } else {
            return "Update to career table false.";
        }
    }
}
