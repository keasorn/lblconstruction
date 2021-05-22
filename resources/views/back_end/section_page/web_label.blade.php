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
                        Web info/label
                    </h2>
                </div>
                <div class="body">
                    <form method="post" action="{{route("page_section.web_label")}}" id="#"
                          enctype="multipart/form-data">
                        @csrf

                        <div class="row">
                            <div class="col-md-12">
                                <h4>Slogan</h4>
                                <input type="text" name="slogan" class="form-control" value="{{$data->slogan}}">
                            </div>
                            <div class="col-md-12">
                                <h4>Contacts</h4>
                                <textarea type="text" name="contact" class="form-control">{{$data->contact}}</textarea>
                            </div>
                            <div class="col-md-3">
                                <h4>Home</h4>
                                <input type="text" name="home" class="form-control" value="{{$data->home}}">
                            </div>
                            <div class="col-md-3">
                                <h4>About Us</h4>
                                <input type="text" name="about_us" class="form-control" value="{{$data->about_us}}">
                            </div>
                            <div class="col-md-3">
                                <h4>Design & Build</h4>
                                <input type="text" name="design" class="form-control" value="{{$data->design}}">
                            </div>
                            <div class="col-md-3">
                                <h4>Projects</h4>
                                <input type="text" name="project" class="form-control" value="{{$data->project}}">
                            </div>
                            <div class="col-md-3">
                                <h4>They Recommend</h4>
                                <input type="text" name="recommend" class="form-control" value="{{$data->recommend}}">
                            </div>
                            <div class="col-md-3">
                                <h4>Us</h4>
                                <input type="text" name="us" class="form-control" value="{{$data->us}}">
                            </div>

                            <div class="col-md-3">
                                <h4>Careers</h4>
                                <input type="text" name="career" class="form-control" value="{{$data->career}}">
                            </div>
                            <div class="col-md-3">
                                <h4>Awards & Media</h4>
                                <input type="text" name="award" class="form-control" value="{{$data->award}}">
                            </div>
                            <div class="col-md-12">
                                <h4>Copyrights</h4>
                                <input type="text" name="copyrights" class="form-control" value="{{$data->copyrights}}">
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