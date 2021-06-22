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
            <form action="{{route("award.store")}}" method="post" enctype="multipart/form-data">
                @csrf
                <div class="card">
                    <div class="header">
                        <h2>
                            Award and Media Page
                        </h2>
                    </div>
                    <div class="body">
                        <div class="row clearfix">
                            <div class="col-md-12">
                                <b>Title</b>
                                <div class="input-group colorpicker">
                                    <div class="form-line">
                                        <input type="text" class="form-control" value="" name="title" required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <b>Description</b>
                                <div class="input-group colorpicker">
                                    <div class="form-line">
                                        <textarea type="text" class="form-control" value="" name="description" required></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <h4>Image</h4>
                                <div class="form-group">
                                    <input type="file" name="logo"
                                           multiple="" accept="image/*" onchange="readURL(this,'logo_id');">
                                    <img src="/images/image.png" height="100" id="logo_id" class="bg-grey">
                                </div>

                            </div>
                            <div class="col-md-3">
                                <b>Type</b>
                                <div class="input-group colorpicker">
                                    <div class="form-line">
                                        <select name="award_type" class="form-control" id="">
                                            <option value="0">Award</option>
                                            <option value="1">Media</option>
                                        </select>
                                    </div>
                                    <span class="input-group-addon">
                                            <i></i>
                                        </span>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <b>Order</b>
                                <div class="input-group colorpicker">
                                    <div class="form-line">
                                        <input type="number" max="100" min="0" class="form-control" value=""
                                               name="order"
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