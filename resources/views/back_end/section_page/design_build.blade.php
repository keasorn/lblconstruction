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
                        Page Design & Build Section
                    </h2>
                </div>
                <div class="body">
                    <form method="post" action="{{route("page_section.design_build")}}" id="#"
                          enctype="multipart/form-data">
                        @csrf

                        <div class="row">
                            <div class="col-md-12">
                                <h4>Title</h4>
                                <input type="text" name="title" class="form-control" value="{{$data->title}}">
                            </div>
                            <div class="col-md-4">
                                <h4>Design Background(photo/mp4)</h4>
                                <div class="form-group">
                                    <input type="file" name="design_bg" class="form-control bg-gray-50"
                                           multiple="" accept="image/*,video/mp4" onchange="readURL(this,'design_bg_id');">
                                    @if($data->design_bg != "/uploading/files/design_bg.mp4")
                                        <img src="{{$data->design_bg}}" height="180" id="design_bg_id" alt="selected vdo">
                                    @else
                                        <img src="/images/video.png" height="180" id="design_bg_id" alt="selected vdo">
                                        <a href="/uploading/files/design_bg.mp4" target="_blank">View Video</a>
                                    @endif
                                </div>
                            </div>
                            <div class="col-md-4">
                                <h5>Build Background(photo/mp4)</h5>
                                <div class="form-group">
                                    <input type="file" name="build_bg" class="form-control bg-gray-50"
                                           multiple="" accept="image/*,video/mp4" onchange="readURL(this,'build_bg_id');">
                                    @if($data->build_bg != "/uploading/files/build_bg.mp4")
                                        <img src="{{$data->build_bg}}" height="180" id="build_bg_id" alt="selected vdo">
                                    @else
                                        <img src="/images/video.png" height="180" id="build_bg_id" alt="selected vdo">
                                        <a href="/uploading/files/build_bg.mp4" target="_blank">View Video</a>
                                    @endif
                                </div>
                            </div>
                            <div class="col-md-4">
                                <h5>Design & Build Background</h5>
                                <div class="form-group">
                                    <input type="file" name="design_build_bg" class="bg-gray-50"
                                           multiple="" accept="image/*" onchange="readURL(this,'design_build_id');">
                                    <img src="{{$data->design_build_bg}}" height="180" id="design_build_id">
                                </div>
                            </div>
                            <div class="row clearfix"></div>
                            <div class="col-md-4">
                                <h4>Design Title</h4>
                                <input type="text" name="design_title" class="form-control" value="{{$data->design_title}}">
                            </div>
                            <div class="col-md-8">
                                <h4>Design Description</h4>
                                <textarea class="form-control" name="design_des"> {{$data->design_des}}</textarea>
                            </div>
                            <div class="col-md-4">
                                <h4>Build Title</h4>
                                <input type="text" name="build_title" class="form-control" value="{{$data->build_title}}">
                            </div>
                            <div class="col-md-8">
                                <h4>Build Description</h4>
                                <textarea class="form-control" name="build_des" > {{$data->build_des}} </textarea>
                            </div>
                            <div class="col-md-12">
                                <h4>Journey Text</h4>
                                <input type="text" name="journey" class="form-control" value="{{$data->journey}}">
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