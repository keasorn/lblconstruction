<!-- They Recommend Us -->
<div style="clear:both"></div>

<section id="careers" data-color="white">
    <div class="container-fluid">
        <div class="clearfix"></div>
        <div class="background cus_career_background ">
            <div class="layer fix-bg-image" style="background: url(images/careers.png); background-size: cover; "></div>
            <div class="layer cus_career_back" style="background: rgb(0 44 88 / 80%);"></div>
        </div>

        <div class="container">

            <div class="row">
                <div class="col-xs-12" style="text-align:center; padding: 60px 0px 100px 0px;">
                    <div style="font-size: 34px; font-weight: 100; color: #FFF;">You can work for us</div>
                </div>
                <!-- section start here-->
                <section class="sec1">
                    <div class="container">
                        <div class="row">


                        </div>
                        <div class="row slide1">
                            @foreach($careers as $row)
                                <div class="col-md-3">

                                    <div class="text-box text-center">
                                        <div class="text-white text-left">{{$row->position}}</div>
                                        <div style="font-weight:100; margin-top:20px;" class="text-white text-left">
                                            {{$row->location}}<br/> {{$row->schedule}}
                                            <br/> {{\App\Http\Controllers\MyUtility::countDate($row->date_post)}}
                                        </div>
                                    </div>
                                </div>
                        @endforeach
                        <!--end col-md-3-->
                        </div><!-- end row-->
                        <!-- /carusel-4 -->
                        <center>
                            <button type="submit" class="btn-default"
                                    style="padding: 3px 40px 0 40px;margin-top:50px;margin-bottom:90px" data-toggle="modal"
                                    data-target="#popupCareer">
                                More
                            </button>
                        </center>
                    </div><!-- end container-->
                </section>

            </div>
        </div>
    </div>
</section>
<!-- They Recommend Us -->

<!-- They Recommend Us -->

<!-- Modal Career -->
<div class="modal fade" id="popupCareer" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content popupCareerContant">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">You Can Work For Us</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    @foreach($careers as $row)
                        <div class="col-xs-12 col-sm-6 col-md-6 popupCareerText">
                            <div style="font-weight:bold;">{{$row->position}}</div>
                            <div style="font-weight:100; margin-top:0px;">
                                {{$row->location}}<br/> {{$row->schedule}}
                                <br/> {{\App\Http\Controllers\MyUtility::countDate($row->date_post)}}
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>

        </div>
    </div>
</div>
