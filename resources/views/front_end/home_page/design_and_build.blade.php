<!-- Design and Build -->
<section id="design-build panel" data-color="white">
    <div class="design_and_build" style="font-size: 50px;top: 140px;">Design &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &
        &nbsp;&nbsp;&nbsp;&nbsp; Build
    </div>
    <div class="containet-fluid">
        <div class="row">
            <div class="col-xs-12 col-sm-6 col-md-6 cus_first_video" style="height: 350px;">
                <div class="background bg-video">
                    <div class="layer darken-pseudo cus_main_image"
                         style="background-image: url(images/home_bg.png);">

                        <div class="cus_main_image_sub" data-toggle="modal" data-target="#firstVideoPopUp">
                            <i class="fa fa-play-circle-o" aria-hidden="true"></i>
                        </div>
                    </div>

                    @if($design_build->design_bg == "/uploading/files/design_bg.mp4" ||$design_build->design_bg == "/uploading/files/design_bg.webm")

                        <video autoplay muted loop id="myVideoFirst" class="cus_main_video"
                               style="width: 100%;">
                            <source src="{{$design_build->design_bg}}" type="video/mp4">
                            <source src="media/cloud.ogg" type="video/ogg">
                            <source src="media/cloud.webm" type="video/webm">
                        </video>
                    @else
                        <div id="myVideoFirst" class="layer darken-pseudo cus_main_video"
                             style="background-image: url({{$design_build->design_bg}});">
                        </div>
                    @endif
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-6 cus_second_video" style="height: 350px;">
                <div class="background bg-video">
                    <div class="layer darken-pseudo cus_main_image"
                         style="background-image: url(images/home_bg.png);">
                        <div class="cus_main_image_sub" data-toggle="modal" data-target="#firstVideoPopUp">
                            <i class="fa fa-play-circle-o" aria-hidden="true"></i>
                        </div>
                    </div>

                    @if($design_build->build_bg == "/uploading/files/build_bg.mp4" ||$design_build->build_bg == "/uploading/files/build_bg.webm")

                        <video autoplay muted loop id="myVideoSecond" class="cus_main_video" style="width: 100%;">
                            <source src="{{$design_build->build_bg}}" type="video/mp4">
                            <source src="media/cloud.ogg" type="video/ogg">
                            <source src="media/cloud.webm" type="video/webm">
                        </video>
                    @else
                        <div id="myVideoFirst" class="layer darken-pseudo cus_main_video"
                             style="background-image: url({{$design_build->build_bg}});">
                        </div>
                    @endif
                </div>
            </div>
        </div>
    </div>
</section>
<section class="cus_journey">
    <div class="container-fluid">
        <div class="background">
            <div class="layer fix-bg-image" style="background: url( uploading/files/design_build_bg.png);"></div>
            {{--            <div class="layer" style="background: rgb(0 44 88 / 95%);"></div>--}}
        </div>

        <div class="container cus_journey_sub_container" data-aos="fade-up">

            <div class="row">
                <div class="col-xs-12" style="text-align:center; padding: 45px 0px;">

                </div>

                <div class="col-sx-12">
                    <div class="clearfix"></div>

                    <div class="row cus_journey_sub" style="color: #FFF;">
                        <div class="col-xs-12 col-sm-6 col-md-5">
                            <?php
                            $design_des = explode('#NEXT#', $design_build->design_des);
                            ?>
                            <b>{{$design_build->design_title}}</b>
                            <p class="cus_journey_sub_p"
                               style="padding-top: 20px; padding-right: 50px; font-weight: 100;">
                                {{$design_build->design_des}}
                            </p>
                        </div>

                        <div class="col-xs-12 col-sm-6 col-md-2">
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-5">
                            <b>{{$design_build->build_title}}</b>
                            <p class="cus_journey_sub_p"
                               style="padding-top: 20px; padding-right: 50px; font-weight: 100;">
                                {{$design_build->build_des}}
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xs-12" style="text-align:center; padding: 45px 0px;">
                <div class="cus_journey_sub_title"
                     style="font-size: 50px; font-weight: 100; color: #FFF;">{{$design_build->journey}}
                </div>
                <p class="text-white">Over the years we achieved mor than 400 projects in the country</p>
            </div>
        </div>
    </div>

</section>
<!--End Design and Build -->
