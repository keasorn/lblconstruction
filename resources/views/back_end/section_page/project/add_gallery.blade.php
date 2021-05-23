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
        <!-- project -->
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="card">
                <div class="header">
                    <h2>
                        project
                    </h2>
                </div>
                <div class="body">
                    <form method="post" action="{{route("page_section.about")}}" id="#"
                          enctype="multipart/form-data">
                        @csrf

                        <div class="row">
                            <div class="col-md-5">
                                <h4>Title</h4>
                                <input type="text" name="title" class="form-control" value="{{$data->title}}">
                            </div>
                            <div class="col-md-4">
                                <h4>Defualt Background</h4>
                                <div class="form-group">
                                    <input type="file" name="background" class="bg-gray-50"
                                           multiple="" accept="image/*" onchange="readURL(this,'image_id');">
                                    <img src="{{$data->image}}" height="100" id="image_id">
                                </div>
                            </div>

                            <div class="col-md-12">
                                <button type="submit" class="btn bg-gray-50 waves-effect">
                                    <i class="material-icons">save</i>
                                    <span>Change</span>
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- #END# project -->
    </div>
@endsection
