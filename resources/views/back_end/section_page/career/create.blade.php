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
            <form action="{{route("career.store")}}" method="post">
                @csrf
            <div class="card">
                <div class="header">
                    <h2>
                        career Form
                    </h2>
                </div>
                <div class="body">
                    <div class="row clearfix">
                        <div class="col-md-4">
                            <b>Position</b>
                            <div class="input-group colorpicker">
                                <div class="form-line">
                                    <input type="text" class="form-control" value="" name="position" required>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <b>Schedule</b>
                            <div class="input-group colorpicker">
                                <div class="form-line">
                                    <input type="text" class="form-control" value="" name="schedule" required>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <b>Post Date</b>
                            <div class="input-group colorpicker">
                                <div class="form-line">
                                    <input type="date" class="form-control" value=""
                                           name="date_post" required>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <b>Location</b>
                            <div class="input-group colorpicker">
                                <div class="form-line">
                                    <input type="text" class="form-control" value="" name="location" required>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <b>Status</b>
                            <div class="input-group colorpicker">
                                <div class="form-line">
                                    <select name="status" class="form-control"  id="" required>
                                        <option value="Enable">Enable</option>
                                        <option value="Enable">Disable</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <b>career Order</b>
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