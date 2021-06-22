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
    <!-- File Upload | Drag & Drop OR With Click & Choose -->
    <div class="row clearfix">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="card">
                <div class="header">
                    <h2>
                        About Us Section
                    </h2>
                </div>
                <div class="body">
                    <form method="post" action="{{route("page_section.about")}}" id="#"
                          enctype="multipart/form-data">
                        @csrf

                        <div class="row">
                            <div class="col-md-6">
                                <h4>Background Image</h4>
                                <div class="form-group">
                                    <input type="file" name="background" class="bg-gray-50"
                                           multiple="" accept="image/*" onchange="readURL(this,'background_id');">
                                    <img src="{{$data->background}}" height="100" id="background_id">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <h5>Discover</h5>
                                <div class="form-group">
                                    <input type="file" name="discover" class="form-control bg-gray-50"
                                           multiple="" accept="image/*" onchange="readURL(this,'discover_id');">

                                    <img src="{{$data->discover}}" height="100" id="discover_id" alt="selected vdo">

                                </div>
                            </div>
                            <div class="col-md-6">
                                <h5>Cover</h5>
                                <div class="form-group">
                                    <input type="file" name="cover" class="bg-gray-50"
                                           multiple="" accept="image/*" onchange="readURL(this,'cover_id');">
                                    <img src="{{$data->cover}}" height="100" id="cover_id">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <h5>Over Cover</h5>
                                <div class="form-group">
                                    <input type="file" name="over_cover" class="bg-gray-50"
                                           multiple="" accept="image/*" onchange="readURL(this,'over_cover_id');">
                                    <img src="{{$data->over_cover}}" height="100" id="over_cover_id">
                                </div>
                            </div>
                            <div class="col-md-12">
                                <h4>Title</h4>
                                <input type="text" name="title" class="form-control" value="{{$data->title}}">
                            </div>
                            <div class="col-md-12">
                                <h4>Description</h4>
                                <textarea type="text" name="description" class="form-control">{{$data->description}}</textarea>
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
    </div>
    <!-- #END# File Upload | Drag & Drop OR With Click & Choose -->
    <script>
        function readURL(input, id) {
            console.log(input.files[0].type == "video/mp4")
            if (input.files[0].type == "video/mp4") {
                $('#' + id).attr('src', "/images/video.png")

            } else {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();

                    reader.onload = function (e) {
                        $('#' + id)
                            .attr('src', e.target.result);
                    };

                    reader.readAsDataURL(input.files[0]);
                }
            }
        }
    </script>
@endsection

@include("back_end.task_mgt_page.embed_scrip")