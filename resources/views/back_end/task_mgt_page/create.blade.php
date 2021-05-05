@extends("layout.admin")

@section("nav")
    @include("layout.navbar")
@stop
@section("left_slidebar")
    @include("layout.left_slidebar")
@stop
@section("content")

    <div class="container-fluid">
        <div class="block-header">
            <h2>Task Management</h2>
        </div>
    </div><!-- Color Pickers -->
    <div class="row clearfix">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <form action="{{route("task.store")}}" method="post">
                @csrf
            <div class="card">
                <div class="header">
                    <h2>
                        Task Form
                    </h2>
                </div>
                <div class="body">
                    <div class="row clearfix">
                        <div class="col-md-4">
                            <b>Task Title</b>
                            <div class="input-group colorpicker">
                                <div class="form-line">
                                    <input type="text" class="form-control" value="" name="title" required>
                                </div>
                                <span class="input-group-addon">
                                            <i></i>
                                        </span>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <b>Description</b>
                            <div class="input-group colorpicker">
                                <div class="form-line">
                                    <input type="text" class="form-control" value="" name="description" required>
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
                                    <input type="text" class="form-control" value="" name="response_by" required>
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
                                            <input type="text" name="start_date" class="form-control date" placeholder="Ex: 30-07-2021" required>
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
                                            <input type="text" name="complete_date" class="form-control date" placeholder="Ex: 30-07-2021" required>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row clearfix">
                        <div class="col-md-12">
                            <button type="submit" class="btn btn-info right">
                                <i class="material-icons">add</i>
                                <span>Add new</span>
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