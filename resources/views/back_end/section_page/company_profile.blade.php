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
                        Company Profile
                    </h2>
                    <ul class="header-dropdown m-r--5">
                        <li class="dropdown">
                            <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-haspopup="true" aria-expanded="false">
                                <i class="material-icons">more_vert</i>
                            </a>
                            <ul class="dropdown-menu pull-right">
                                <li><a href="javascript:void(0);">Action</a></li>
                                <li><a href="javascript:void(0);">Another action</a></li>
                                <li><a href="javascript:void(0);">Something else here</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="body">

                    <div class="container">
                        <div class="col-md-8">
                            <form method="post" action="{{route("page_section.company_profile")}}" id="#"
                                  enctype="multipart/form-data">
                                @csrf
                                <div class="form-group files">
                                    <input type="file" name="company_profile" class="form-control bg-gray-50"
                                           multiple="" required>
                                </div>

                                <button type="submit" class="btn bg-gray-50 waves-effect">
                                    <i class="material-icons">save</i>
                                    <span>Change</span>
                                </button>
                            </form>


                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            @if($profileCompany)

                <embed src="{{$profileCompany}}" style="width: 100%" height="500"
                       type="application/pdf">
            @else
                <h3>No file selected</h3>
            @endif

        </div>
    </div>
    <!-- #END# File Upload | Drag & Drop OR With Click & Choose -->
@endsection

@include("back_end.task_mgt_page.embed_scrip")