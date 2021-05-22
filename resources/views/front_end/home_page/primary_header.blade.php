<!--  Primary-banner -->
<section class="inside-pages white" id="primary-banner">
    <div class="container-fluid">
        <div class="row">
            <div class="primary-banner-text text-left" id="my_home_text">
                <div class="my_home_text_sub"
                     style="font-weight: bold; font-size: 50px; color: #fff; padding-left: 150px;">{{$header->title}}
                </div>
                <div class="my_home_text_sub"
                     style="color: #fff; font-size: 30px; font-weight:100; padding-left: 150px;">{{$header->description}}
                </div>
                <div class="my_home_text_sub" style="padding-left: 150px;">
                    <div style="color: #fff; font-size: 30px; font-weight:100; float: left; margin-right: 20px;">And
                        follow us on
                    </div>
                    <a href="{{$header->facebook}}" class="social_icon" style="float: left; margin-right: 15px;"><img
                                src="images/Icon awesome-facebook-f.svg"/></a>
                    <a href="{{$header->instagram}}" class="social_icon" style="float: left; margin-right: 15px;"><img
                                src="images/Icon feather-instagram.svg"/></a>
                    <a href="{{$header->linkin}}" class="social_icon" style="float: left;"><img
                                src="images/Icon awesome-linkedin-in.svg"/></a>
                </div>
            </div>
            <a class="go-to-about my-scroll" href="#about-us" id="my_home_scroll"><i
                        class="fa fa-angle-down"></i></a>

            <!-- title-blogtop -->
            <div class="col-xs-12 first-page" id="primary-banner-title">
                <div class="inner-info-block">
                    <a href="/"><img src="{{$header->logo}}" style="width: 100px; margin: 10px;"/></a>
                </div>
            </div>
            <!-- / title-blogtop -->

            <!-- Slider -->
            <div class="background bg-video cus_header">
                <div class="layer darken-pseudo cus_main_image"
                     style="background-image: url({{$header->background_mobile}});">
                    @if($header->background_pc == "/uploading/files/background_pc.mp4")
                        <div class="cus_main_image_sub" data-toggle="modal" data-target="#firstVideoPopUp">
                            <i class="fa fa-play-circle-o" aria-hidden="true"></i>
                        </div>
                    @endif
                </div>
                @if($header->background_pc != "/uploading/files/background_pc.mp4")
                    <div id="myVideo" class="layer darken-pseudo cus_main_video"
                         style="background-image: url({{$header->background_pc}});">
                    </div>
                @else
                    <video autoplay muted loop id="myVideo" class="cus_main_video">
                        <source src="{{$header->background_pc}}" type="video/mp4">
                        <source src="media/cloud.ogg" type="video/ogg">
                        <source src="media/cloud.webm" type="video/webm">
                    </video>
                @endif
            </div>
            <!-- / Slider -->
        </div>

        <div id="menu" class="row" style="position: absolute; width: 100%; top: 0; left: -7px; display: none;">
            <div class="primary-banner-text">
                <div class="col-sm-1"></div>
                <div class="col-sm-4 cus_construction_menu" style="color: #fff; font-size: 30px; font-weight:100;">
                    {{$label->slogan}}
                </div>
                <div class="col-sm-3 cus_contact_menu" style="color: #fff; font-size: 22px;">
                    Contacts<br/>
                    <br/>
                    <div class="col-sm-10 cus_contact_menu_sub"
                         style="color: #fff; font-size: 16px; font-weight:100; line-height: 25px;">
                        {{$label->contact}}
                    </div>
                </div>
                <div class="col-sm-3 " style="color: #fff; font-size: 22px;">
                    <div class="subMenu nav cus_contact_navigation" id="navigation-menu">
                        <nav>
                            <ul class="single-page-nav" style="list-style: none; text-align: right;">
                                <li><a href="#primary-banner"
                                       style="color: #fff !important; font-weight:300;"> {{$label->home}}</a></li>
                                <li><a href="#about-us" style="color: #fff !important; font-weight:300;"> {{$label->about_us}}</a></li>
                                <li><a href="#design-build" style="color: #fff !important; font-weight:300;"> {{$label->design}}</a></li>
                                <li><a href="#projects"
                                       style="color: #fff !important; font-weight:300;"> {{$label->project}}</a></li>
                                <li><a href="#they-recommend-us" style="color: #fff !important; font-weight:300;">
                                        {{$label->recommend}}</a></li>
                                <li><a href="#careers" style="color: #fff !important; font-weight:300;"> {{$label->career}}</a>
                                </li>
                                <li><a href="#footer" style="color: #fff !important; font-weight:300;"> {{$label->award}}</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="col-sm-1"></div>
                <div style="clear: both;"></div>
                <div class="col-sm-1"></div>
                <div class="col-sm-10 cus_copyright_menu"
                     style="color: #fff; font-size: 14px; margin-top: 30px; font-weight:100;">
                    {{$label->copyrights}}
                </div>
                <div class="col-sm-1"></div>
            </div>

            <!-- title-blogtop -->
            <div class="col-xs-12 first-page" id="primary-banner-title">
                <div class="inner-info-block">

                </div>
            </div>
            <!-- / title-blogtop -->

            <!-- Slider -->
            <div class="background bg-video background-bg-video">
                <div class="layer darken-pseudo"
                     style="background-image: url({{compress('images/menu_bg.png')}});"></div>
            </div>
            <!-- / Slider -->
        </div>
    </div>
</section>
<!--  / Primary-banner -->
<!-- Modal First Video -->
<div class="modal fade" id="firstVideoPopUp" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Video</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <video autoplay muted loop id="myVideo">
                    <source src="{{$header->background_pc}}" type="video/mp4">
                    <source src="media/cloud.ogg" type="video/ogg">
                    <source src="media/cloud.webm" type="video/webm">
                </video>
            </div>
        </div>
    </div>
</div>
