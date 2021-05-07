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

    <div class="container-fluid">
        <div class="block-header">
            <h2>Task Management</h2>
        </div>
    </div>
    <div class="row clearfix">
        <!-- Task Info -->
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div class="card">
                <div class="header">
                    <a href="{{route("task.create")}}" class="btn btn-info right">
                        <i class="material-icons">add</i>
                        <span>Add new</span>
                    </a>
                    <h2>Task List</h2>

                </div>
                <div class="body">
                    <div class="table-responsive">
                        <table class="table table-hover dashboard-task-infos">
                            <thead>
                            <tr>
                                <td>No</td>
                                <th>Task</th>
                                <th>Status</th>
                                <th>Response By</th>
                                <th>Start Date</th>
                                <th>Complete Date</th>
                                <th>Progress</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($tasks as $row)
                                <tr>
                                    <td>{{$row->order}}</td>
                                    <td>{{$row->title}}</td>
                                    <td><span class="label bg-{{MyUt::getBgProgressColorStatus($row->progress)}}">{{MyUt::getProgressStatus($row->progress)}}</span></td>
                                    <td>{{$row->response_by}}</td>
                                    <td>{{$row->start_date}}</td>
                                    <td>{{$row->complete_date}}</td>
                                    <td>
                                        <div class="progress">
                                            <div class="progress-bar bg-{{MyUt::getBgProgressColorStatus($row->progress)}}" role="progressbar" aria-valuenow="100"
                                                 aria-valuemin="0" aria-valuemax="100"
                                                 style="width: {{$row->progress}}%"></div>
                                        </div>
                                    </td>
                                    <td>
                                        <form class="row" method="post"
                                              action="{{ route('task.destroy', [$row->id]) }}"
                                              onsubmit="return confirm('Do you want to delete?')">
                                            @method('delete')
                                            <input type="hidden" required name="_token" value="{{ csrf_token() }}">
                                            <a href="{{ route('task.edit', $row->id) }}"
                                               class="btn btn-danger btn-xs bg-red waves-effect"><i class="material-icons">edit</i></a>

                                            <button type="submit" class="btn btn-danger btn-xs waves-effect"><i class="material-icons">delete</i></button>

                                            <a class="btn bg-deep-purple btn-xs waves-effect"
                                               href="{{route("task.show",$row->id)}}"><i class="material-icons">open_in_new</i></a>

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
        <!-- #END# Task Info -->
    </div>
@endsection

@include("back_end.task_mgt_page.embed_scrip")