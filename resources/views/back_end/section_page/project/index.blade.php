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
                    <ul class="list-group">
                        <li class="list-group-item"><a href="/admin/archive"
                                                       class="btn btn-xs bg-blue waves-effect"><i
                                        class="material-icons">edit</i></a> {{$archive->title}}
                        </li>
                        @foreach($data as $row)
                            <li class="list-group-item"><a href="/admin/project/{{$row->id}}/edit"
                                                           class="btn btn-xs bg-blue waves-effect"><i
                                            class="material-icons">edit</i></a>
                                {{$row->title}}
                                <br>
                                <img src="{{$row->image}}" width="100" alt="No Image selected">
                                <span class="badge bg-cyan">99 Photos <a
                                            href="/admin/project/{{$row->id}}/image"
                                            class="btn btn-xs bg-blue align-right"><i
                                                class="material-icons">add</i></a></span>
                            </li>
                        @endforeach
                    </ul>
                </div>
            </div>
        </div>
        <!-- #END# project -->
    </div>

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
