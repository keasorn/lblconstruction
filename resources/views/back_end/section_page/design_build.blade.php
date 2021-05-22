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
                        Page Header Section
                    </h2>
                </div>
                <div class="body">
                    <form method="post" action="{{route("page_section.header")}}" id="#"
                          enctype="multipart/form-data">
                        @csrf

                        <div class="row">
                            <div class="col-md-4">
                                <h4>Logo</h4>
                                <div class="form-group">
                                    <input type="file" name="logo" class="bg-gray-50"
                                           multiple="" accept="image/*" onchange="readURL(this,'logo_id');">
                                    <img src="{{$data->logo}}" height="180" id="logo_id" class="bg-grey">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <h5>PC Background(photo/mp4)</h5>
                                <div class="form-group">
                                    <input type="file" name="background_pc" class="form-control bg-gray-50"
                                           multiple="" accept="image/*,video/mp4" onchange="readURL(this,'pc_id');">
                                    @if($data->background_pc != "/uploading/files/background_pc.mp4")
                                        <img src="{{$data->background_pc}}" height="180" id="pc_id" alt="selected vdo">
                                    @else
                                        <img src="/images/video.png" height="180" id="pc_id" alt="selected vdo">
                                        <a href="/uploading/files/background_pc.mp4" target="_blank">View Video</a>
                                    @endif
                                </div>
                            </div>
                            <div class="col-md-4">
                                <h5>Mobile image Background (400 X 800 px)</h5>
                                <div class="form-group">
                                    <input type="file" name="background_mobile" class="bg-gray-50"
                                           multiple="" accept="image/*" onchange="readURL(this,'phone_id');">
                                    <img src="{{$data->background_mobile}}" height="180" id="phone_id">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <h4>Title</h4>
                                <input type="text" name="title" class="form-control" value="{{$data->title}}">
                            </div>
                            <div class="col-md-6">
                                <h4>Description</h4>
                                <input type="text" name="description" class="form-control"
                                       value="{{$data->description}}">
                            </div>
                            <div class="col-md-12">
                                <h4>And follow us on</h4>
                                <div class="col-md-4">
                                    <b>Facebook URL</b>
                                    <div class="input-group">
                                            <span class="input-group-addon">
                                                <img src="/images/Icon awesome-facebook-f.svg">
                                            </span>
                                        <div class="form-line">
                                            <input type="text" name="facebook" class="form-control"
                                                   value="{{$data->facebook}}" placeholder="">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <b>Instagram URL</b>
                                    <div class="input-group">
                                            <span class="input-group-addon">
                                                <img src="/images/Icon feather-instagram.svg">
                                            </span>
                                        <div class="form-line">
                                            <input type="text" name="instagram" class="form-control"
                                                   value="{{$data->instagram}}" placeholder="">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <b>Linkin URL</b>
                                    <div class="input-group">
                                            <span class="input-group-addon">
                                                <img src="/images/Icon awesome-linkedin-in.svg">
                                            </span>
                                        <div class="form-line">
                                            <input type="text" name="linkin" value="{{$data->linkin}}"
                                                   class="form-control ip" placeholder="">
                                        </div>
                                    </div>
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