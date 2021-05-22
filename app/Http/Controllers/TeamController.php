<?php

namespace App\Http\Controllers;

use App\Http\Controllers\MyUtility as MyUt;
use App\Models\Team;
use Illuminate\Http\Request;

class TeamController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $model = Team::get();
        $data = array(
            'teams' => $model,
        );
        return view("back_end.section_page.team.index")->with($data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //

        return view("back_end.section_page.team.create");
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
        $task = new Team($data);
        if($task->save()){
            return redirect(route("team.index"));
        }else{
            return "Insert data fails";
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Team  $team
     * @return \Illuminate\Http\Response
     */
    public function show(Team $team)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Team  $team
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $team =Team::find($id);
        return view('back_end.section_page.team.edit',compact('team'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Team  $team
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //


        $data = $request->except("_token");
        $team =  Team::find($id);
        $team->fill($data);
        if($team->save()){
            return redirect(route("team.index"));
        }else{
            return "Insert data fails";
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Team  $team
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $team = Team::find($id);
        $result = $team->delete();
        if ($result) {
            return redirect(route("team.index"));
        } else {
            return "Update to team table false.";
        }
    }
}
