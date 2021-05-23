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
        <!-- career Info -->
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div class="card">
                <div class="header">
                    <a href="{{route("career.create")}}" class="btn btn-info right">
                        <i class="material-icons">add</i>
                        <span>Add new</span>
                    </a>
                    <h2>career List</h2>

                </div>
                <div class="body">
                    <div class="table-responsive">
                        <table class="table table-hover dashboard-career-infos">
                            <thead>
                            <tr>
                                <th>No</th>
                                <th>Position</th>
                                <th>Schedule</th>
                                <th>Location</th>
                                <th>Date Posted</th>
                                <th>Status</th>
                                <th>Order</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php $i=1;?>
                            @foreach($careers as $row)
                                <tr>
                                    <td>{{$i++}}</td>
                                    <td>{{$row->position}}</td>
                                    <td>{{$row->schedule}}</td>
                                    <td>{{$row->location}}</td>
                                    <td>{{$row->date_post}}</td>
                                    <td>{{$row->status}}</td>
                                    <td>{{$row->order}}</td>

                                    <td>
                                        <form class="row" method="post"
                                              action="{{ route('career.destroy', [$row->id]) }}"
                                              onsubmit="return confirm('Do you want to delete?')">
                                            @method('delete')
                                            <input type="hidden" required name="_token" value="{{ csrf_token() }}">
                                            <a href="{{ route('career.edit', $row->id) }}"
                                               class="btn btn-xs bg-blue waves-effect"><i class="material-icons">edit</i></a>

                                            <button type="submit" class="btn btn-danger btn-xs waves-effect"><i class="material-icons">delete</i></button>



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
        <!-- #END# career Info -->
    </div>
@endsection
