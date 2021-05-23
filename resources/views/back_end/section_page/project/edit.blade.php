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
    <div class="row clearfix">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <form action="/admin/project/{{$project->id}}/update" method="post" enctype="multipart/form-data">
                @method("PUT")
                @csrf
                <div class="card">
                    <div class="header">
                        <h2>
                            project Edit form
                        </h2>
                    </div>
                    <div class="body">
                        <div class="row clearfix">
                            <div class="col-md-12">
                                <b>Title</b>
                                <div class="input-group colorpicker">
                                    <div class="form-line">
                                        <input type="text" class="form-control" value="{{$project->title}}" name="title" required>
                                    </div>
                                    <span class="input-group-addon">
                                            <i></i>
                                        </span>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <h4>image</h4>
                                <div class="form-group">
                                    <input type="file" name="image"
                                           multiple="" accept="image/*" onchange="readURL(this,'image_id');">
                                    <img src="{{$project->image}}" height="100" id="image_id" class="bg-grey">
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
