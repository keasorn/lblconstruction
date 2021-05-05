@extends("layout.admin")

@section("nav")
    @include("layout.navbar")
@stop
@section("left_slidebar")
    @include("layout.left_slidebar")
@stop
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
                                <th>#</th>
                                <th>Task</th>
                                <th>Status</th>
                                <th>Response By</th>
                                <th>Start Date</th>
                                <th>Start Date</th>
                                <th>Complete Date</th>
                                <th>Progress</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>1</td>
                                <td>Task A</td>
                                <td><span class="label bg-blue">Done</span></td>
                                <td>Task A</td>
                                <td>Task A</td>
                                <td>Task A</td>
                                <td>Task A</td>
                                <td>
                                    <div class="progress">
                                        <div class="progress-bar bg-blue" role="progressbar" aria-valuenow="100"
                                             aria-valuemin="0" aria-valuemax="100" style="width: 100%"></div>
                                    </div>
                                </td>
                                <td>Task A</td>
                            </tr>
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