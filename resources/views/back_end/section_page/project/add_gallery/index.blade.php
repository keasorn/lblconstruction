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
        <!-- image Info -->


        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

            <div class="row clearfix"></div>
            <div class="card">
                <div class="header">
                    <a href="{{route("image.create",$project->id)}}" class="btn btn-info right">
                        <i class="material-icons">add</i>
                        <span>Add new</span>
                    </a>
                    <h2> <a href="/admin/project" class="btn btn-danger">BACK to project</a> {{$project->title}}</h2>


                </div>
                <div class="body">
                    <div class="table-responsive">
                        <table class="table table-hover dashboard-image-infos">
                            <thead>
                            <tr>
                                <th>No</th>
                                <th>Image</th>
                                <th>Order</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php $i = 1;?>
                            @foreach($images as $row)
                                <tr>
                                    <td>{{$i++}}</td>
                                    <td><img src="{{$row->image}}" height="50" alt=""></td>
                                    <td>{{$row->order}}</td>

                                    <td>
                                        <form class="row" method="post"
                                              action="{{ route('image.destroy', [$project->id,$row->id]) }}"
                                              onsubmit="return confirm('Do you want to delete?')">
                                            @method('delete')
                                            <input type="hidden" required name="_token" value="{{ csrf_token() }}">
                                            <a href="{{ route('image.edit', [$project->id,$row->id]) }}"
                                               class="btn btn-xs bg-blue waves-effect"><i
                                                        class="material-icons">edit</i></a>

                                            <button type="submit" class="btn btn-danger btn-xs waves-effect"><i
                                                        class="material-icons">delete</i></button>


                                        </form>
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <!-- #END# image Info -->
    </div>
@endsection
