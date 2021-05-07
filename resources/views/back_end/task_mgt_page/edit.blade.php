@extends("layout.admin")
@section("nav")
    @include("layout.navbar")
@stop
@section("left_slidebar")
    @include("layout.left_slidebar")
@stop
<?php
    use App\Http\Controllers\MyUtility as MyUt;
    ?>
@section("content")

    <div class="container-fluid">
        <div class="block-header">
            <h2>Task Management</h2>
        </div>
    </div><!-- Color Pickers -->
    <div class="row clearfix">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <form action="{{route("task.update",$task->id)}}" method="post">
                @method("PUT")
                @csrf
                <div class="card">
                    <div class="header">
                        <h2>
                            Task Edit form
                        </h2>
                    </div>
                    <div class="body">
                        <div class="row clearfix">
                            <div class="col-md-4">
                                <b>Task Title</b>
                                <div class="input-group colorpicker">
                                    <div class="form-line">
                                        <input type="text" class="form-control" value="{{$task->title}}" name="title" required>
                                    </div>
                                    <span class="input-group-addon">
                                            <i></i>
                                        </span>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <b>Description</b>
                                <div class="input-group colorpicker">
                                    <div class="form-line">
                                        <input type="text" class="form-control" value="{{$task->description}}" name="description" required>
                                    </div>
                                    <span class="input-group-addon">
                                            <i></i>
                                        </span>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <b>Order Task</b>
                                <div class="input-group colorpicker">
                                    <div class="form-line">
                                        <input type="number" max="100" min="0" class="form-control" value="{{$task->order}}" name="order" required>
                                    </div>
                                    <span class="input-group-addon">
                                            <i></i>
                                        </span>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <b>Completed Task</b>
                                <div class="input-group colorpicker">
                                    <div class="form-line">
                                        <input type="number" max="100" min="0" class="form-control" value="{{$task->progress}}" name="progress" required>
                                    </div>
                                    <span class="input-group-addon">
                                            <i></i>
                                        </span>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <b>Response By</b>
                                <div class="input-group colorpicker">
                                    <div class="form-line">
                                        <input type="text" class="form-control" value="{{$task->response_by}}" name="response_by" required>
                                    </div>
                                    <span class="input-group-addon">
                                            <i></i>
                                        </span>
                                </div>
                            </div>
                            <div class="demo-masked-input col-md-4">
                                <div class="row clearfix">
                                    <div class="col-md-12">
                                        <b>Estimate Start Date</b>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="material-icons">date_range</i>
                                            </span>
                                            <div class="form-line">
                                                <input type="text" name="start_date" class="form-control date" value="{{MyUt::toKhDate($task->start_date)}}" placeholder="Ex: 30-07-2021" required>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="demo-masked-input col-md-4">
                                <div class="row clearfix">
                                    <div class="col-md-12">
                                        <b>Estimate Complete Date</b>
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="material-icons">date_range</i>
                                            </span>
                                            <div class="form-line">
                                                <input type="text" name="complete_date" value="{{MyUt::toKhDate($task->complete_date)}}" class="form-control date" placeholder="Ex: 30-07-2021" required>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row clearfix">
                            <div class="col-md-12">
                                <button type="submit" class="btn btn-info right">
                                    <i class="material-icons">save</i>
                                    <span>Update</span>
                                </button>
                            </div>

                        </div>
                    </div>

                </div>
            </form>
        </div>
    </div>
    <div id="nouislider_range_example"></div>
    <!-- #END# Input Slider -->
@endsection

@include("back_end.task_mgt_page.embed_scrip")