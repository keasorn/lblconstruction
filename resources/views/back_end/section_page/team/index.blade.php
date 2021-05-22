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
        <!-- team Info -->
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div class="card">
                <div class="header">
                    <a href="{{route("team.create")}}" class="btn btn-info right">
                        <i class="material-icons">add</i>
                        <span>Add new</span>
                    </a>
                    <h2>Team List</h2>

                </div>
                <div class="body">
                    <div class="table-responsive">
                        <table class="table table-hover dashboard-team-infos">
                            <thead>
                            <tr>
                                <th>No</th>
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>Position</th>
                                <th>Order</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php $i=1;?>
                            @foreach($teams as $row)
                                <tr>
                                    <td>{{$i++}}</td>
                                    <td>{{$row->first_name}}</td>
                                    <td>{{$row->last_name}}</td>
                                    <td>{{$row->position}}</td>
                                    <td>{{$row->order}}</td>

                                    <td>
                                        <form class="row" method="post"
                                              action="{{ route('team.destroy', [$row->id]) }}"
                                              onsubmit="return confirm('Do you want to delete?')">
                                            @method('delete')
                                            <input type="hidden" required name="_token" value="{{ csrf_token() }}">
                                            <a href="{{ route('team.edit', $row->id) }}"
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
        <!-- #END# team Info -->
    </div>
@endsection
