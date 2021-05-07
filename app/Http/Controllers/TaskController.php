<?php

namespace App\Http\Controllers;

use App\Models\Task;
use Illuminate\Http\Request;
use App\Http\Controllers\MyUtility as MyUt;

class TaskController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $tasks = Task::orderBy("order")->get();
        // return $Tasks;
        $data = array(
            'tasks' => $tasks
        );
        return view('back_end.task_mgt_page.index')->with($data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('back_end.task_mgt_page.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public  function fill(Request $request){
        $data = $request->except("_token");
        $data["created_by"]=1;
        $data["start_date"]=MyUt::toMySqlDate($request->start_date);
        $data["complete_date"]=MyUt::toMySqlDate($request->complete_date);
        return $data;
    }
    public function store(Request $request)
    {
        $data = $this->fill($request);
        $task = new Task($data);
        if($task->save()){
            return redirect(route("task.index"));
        }else{
            return "Insert data fails";
        }

        //
//        $product =new Product();
//        $product->en_title=$request->en_title;
//        $product->kh_title=$request->kh_title;
//        $product->pro_type=$request->pro_type;
//        $product->pro_qty=$request->pro_qty;
//        $product->pro_price=$request->pro_price;
//        $product->description=$request->description;
//        $product->save();
//        return redirect("product/create");

    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        return view('back_end.task_mgt_page.show');

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $task =Task::find($id);
        return view('back_end.task_mgt_page.edit',compact('task'));

    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $data = $this->fill($request);
        $task =  Task::find($id);
        $task->fill($data);
        if($task->save()){
            return redirect(route("task.index"));
        }else{
            return "Insert data fails";
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $Task = Task::find($id);
        $result = $Task->delete();
        if ($result) {
            return redirect(route("task.index"));
        } else {
            return "Update to Taske table false.";
        }
    }
}
