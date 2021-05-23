@extends("layout.admin")

@section("nav")
    @include("layout.navbar")
@stop
@section("left_slidebar")
    @include("layout.left_slidebar")
@stop
@section("content")


    <div class="row clearfix">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <form action="{{route("team.store")}}" method="post">
                @csrf
            <div class="card">
                <div class="header">
                    <h2>
                        Team Form
                    </h2>
                </div>
                <div class="body">
                    <div class="row clearfix">
                        <div class="col-md-3">
                            <b>First Name</b>
                            <div class="input-group colorpicker">
                                <div class="form-line">
                                    <input type="text" class="form-control" value="" name="first_name" required>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <b>Last Name</b>
                            <div class="input-group colorpicker">
                                <div class="form-line">
                                    <input type="text" class="form-control" value="" name="last_name" required>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <b>Position</b>
                            <div class="input-group colorpicker">
                                <div class="form-line">
                                    <input type="text" class="form-control" value="" name="position" required>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <b>Team Order</b>
                            <div class="input-group colorpicker">
                                <div class="form-line">
                                    <input type="number" max="100" min="0" class="form-control" value="" name="order"
                                           required>
                                </div>
                                <span class="input-group-addon">
                                            <i></i>
                                        </span>
                            </div>
                        </div>

                    </div>
                    <div class="row clearfix">
                        <div class="col-md-12">
                            <button type="submit" class="btn btn-info right">
                                <i class="material-icons">save</i>
                                <span>Save</span>
                            </button>
                        </div>

                    </div>
                </div>

            </div>
            </form>
        </div>
    </div>
    <div id="nouislider_range_example"></div>
    <!-- #END# Input Slider -->
@endsection

@include("back_end.task_mgt_page.embed_scrip")