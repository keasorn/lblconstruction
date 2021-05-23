<!-- Design and Build -->
<section id="design-build" style="margin-top:-200px;padding-bottom: 10px;">
    <div class="design_and_build">{{$design_build->title}}</div>
    <div class="containet-fluid">
        <div class="row">
            <div class="col-xs-12 col-sm-6 col-md-6 cus_first_video" style="height: 500px;">
                <div class="background bg-video">
                    <div class="layer darken-pseudo cus_main_image"
                         style="background-image: url(images/home_bg.png);">

                        <div class="cus_main_image_sub" data-toggle="modal" data-target="#firstVideoPopUp">
                            <i class="fa fa-play-circle-o" aria-hidden="true"></i>
                        </div>
                    </div>

                    @if($design_build->design_bg != "/uploading/files/design_bg.mp4")
                        <div id="myVideoFirst" class="layer darken-pseudo cus_main_video"
                             style="background-image: url({{$design_build->design_bg}});">
                        </div>
                    @else
                        <video autoplay muted loop id="myVideoFirst" class="cus_main_video"
                               style="z-index: 1000; width: 100%;">
                            <source src="{{$design_build->design_bg}}" type="video/mp4">
                            <source src="media/cloud.ogg" type="video/ogg">
                            <source src="media/cloud.webm" type="video/webm">
                        </video>
                    @endif
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-6 cus_second_video" style="height: 500px;">
                <div class="background bg-video">
                    <div class="layer darken-pseudo cus_main_image"
                         style="background-image: url(images/home_bg.png);">
                        <div class="cus_main_image_sub" data-toggle="modal" data-target="#firstVideoPopUp">
                            <i class="fa fa-play-circle-o" aria-hidden="true"></i>
                        </div>
                    </div>

                    @if($design_build->build_bg != "/uploading/files/build_bg.mp4")
                        <div id="myVideoFirst" class="layer darken-pseudo cus_main_video"
                             style="background-image: url({{$design_build->build_bg}});">
                        </div>
                    @else
                        <video autoplay muted loop id="myVideoSecond" class="cus_main_video" style="width: 100%;">
                            <source src="{{$design_build->build_bg}}" type="video/mp4">
                            <source src="media/cloud.ogg" type="video/ogg">
                            <source src="media/cloud.webm" type="video/webm">
                        </video>
                    @endif
                </div>
            </div>
        </div>
    </div>
</section>
<section class="cus_journey" style="margin-top:-70px;">
    <div class="container-fluid">
        <div class="background">
            <div class="layer" style="background: url( {{compress('images/design_build_bg.png')}});"></div>
            <div class="layer" style="background: rgb(0 44 88 / 95%);"></div>
        </div>

        <div class="container cus_journey_sub_container">

            <div class="row">
                <div class="col-xs-12" style="text-align:center; padding: 60px 0px;">

                </div>

                <div class="col-sx-12">
                    <div class="clearfix"></div>

                    <div class="row cus_journey_sub" style="color: #FFF;">
                        <div class="col-xs-12 col-sm-4 col-md-4">
                            <?php
                            $design_des = explode('#NEXT#',$design_build->design_des);
                            ?>
                            <b>{{$design_build->design_title}}</b>
                            <p class="cus_journey_sub_p"
                               style="padding-top: 20px; padding-right: 50px; font-size: 18px; font-weight: 100;">
                                {{$design_des[0]}}
                            </p>
                        </div>
                        <div class="col-xs-12 col-sm-4 col-md-4">
                            <p class="cus_journey_sub_p"
                               style="padding-top: 40px; padding-right: 50px; font-size: 18px; font-weight: 100;">

                                {{$design_des[1]}}
                            </p>
                        </div>
                        <div class="col-xs-12 col-sm-4 col-md-4">
                            <b>{{$design_build->build_title}}</b>
                            <p class="cus_journey_sub_p"
                               style="padding-top: 20px; padding-right: 50px; font-size: 18px; font-weight: 100;">
                                {{$design_build->build_des}}
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xs-12" style="text-align:center; padding: 60px 0px 60px 0px;">
                <div class="cus_journey_sub_title"
                     style="font-size: 40px; font-weight: 100; color: #FFF;">{{$design_build->journey}}
                </div>
            </div>
        </div>
    </div>

</section>
<!--End Design and Build -->
