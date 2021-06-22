<section class="inside-pages white" id="primary-banner" data-color="white">
    <div class="container-fluid">
        <div class="row">
            @if($header->display_title==1)
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
                        <a href="{{$header->facebook}}" class="social_icon overBlue text-white"
                           style="margin-right: 15px; font-size: 30px"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                        <a href="{{$header->description}}" class="social_icon overBlue text-white"
                           style="margin-right: 15px; font-size: 30px"><i class="fa fa-instagram"
                                                                          aria-hidden="true"></i></a>
                        <a href="{{$header->linkin}}" class="social_icon overBlue text-white" style="font-size: 30px"><i
                                    class="fa fa-linkedin" aria-hidden="true"></i></a>

                    </div>
                </div>
            @endif
            <a class="go-to-about my-scroll" href="#about-us" id="my_home_scroll"><i class="fa fa-angle-down"></i></a>

            <!-- title-blogtop -->
            <div class="col-xs-12 first-page" id="primary-banner-title" style="height: 100vh;">
                <div class="inner-info-block">
                    <a href="/">
                        <div class="logo-fixed color-white"></div>
                    </a>
                </div>
            </div>
            <!-- / title-blogtop -->

            <!-- Slider -->
            <div class="background bg-video cus_header fix-bg-image">
                <div class="layer darken-pseudo cus_main_image"
                     style="background-image: url(/uploading/files/background_mobile.jpg);">
                    <div class="cus_main_image_sub" data-toggle="modal" data-target="#firstVideoPopUp">
                        <i class="fa fa-play-circle-o" aria-hidden="true"></i>
                    </div>
                </div>
                <video autoplay="" muted="" loop="" id="myVideo" class="cus_main_video fix-bg-video">
                    <source src="/uploading/files/background_pc.mp4" type="video/mp4" class="fix-bg-video">
                    <source src="media/cloud.ogg" type="video/ogg">
                    <source src="media/cloud.webm" type="video/webm">
                </video>
            </div>
            <!-- / Slider -->
        </div>

        <div id="menu" class="row" style="width: 100%; top: 0; left: -7px; display: none;">
            <div class="primary-banner-text">
                <div class="col-sm-1"></div>
                <div class="col-sm-3 cus_construction_menu" style="color: #fff; font-size: 24px; font-weight:100;">
                    <br>
                    <br>
                    {{$label->slogan}}
                </div>
                <div class="col-sm-1"></div>
                <div class="col-sm-3 cus_contact_menu " style="color: #fff; font-size: 22px;">
                    Contacts<br>
                    <br>
                    <div class="col-sm-10 cus_contact_menu_sub"
                         style="color: #fff; font-size: 16px; font-weight:100; line-height: 25px;">
                        <?php echo(nl2br($label->contact)) ?>
                        <br>
                        <br>
                        <br>
                        <div class="cus_contact_menu">
                            <a href="{{$header->facebook}}" class="social_icon overBlue text-white"
                               style="margin-right: 15px; font-size: 30px"><i class="fa fa-facebook"
                                                                              aria-hidden="true"></i></a>
                            <a href="{{$header->description}}" class="social_icon overBlue text-white"
                               style="margin-right: 15px; font-size: 30px"><i class="fa fa-instagram"
                                                                              aria-hidden="true"></i></a>
                            <a href="{{$header->linkin}}" class="social_icon overBlue text-white"
                               style="font-size: 30px"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                        </div>


                    </div>

                </div>
                <div class="col-sm-3 " style="color: #fff; font-size: 22px;">
                    <div class="subMenu nav cus_contact_navigation" id="navigation-menu">
                        <nav>
                            <ul class="single-page-nav" style="list-style: none; text-align: right;">
                                <li><a href="#primary-banner" style="color: #fff !important; font-weight:300;"
                                       class="active main-menu"> {{$label->home}}</a></li>
                                <li><a href="#about-us" style="color: #fff !important; font-weight:300;"
                                       class="active main-menu"> {{$label->about_us}}</a></li>
                                <li><a href="#design-build" style="color: #fff !important; font-weight:300;"
                                       class="active main-menu">{{$label->desing}}</a></li>
                                <li><a href="#projects" style="color: #fff !important; font-weight:300;"
                                       class="active main-menu"> {{$label->project}}</a></li>
                                <li><a href="#they-recommend-us" style="color: #fff !important; font-weight:300;"
                                       class="active main-menu">
                                        {{$label->recommend}}</a></li>
                                <li><a href="#careers" style="color: #fff !important; font-weight:300;"
                                       class="active main-menu"> {{$label->career}}</a>
                                </li>
                                <li><a href="#footer" style="color: #fff !important; font-weight:300;"
                                       class="active main-menu"> {{$label->award}}</a></li>
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
            <div class="col-xs-12 first-page" id="primary-banner-title" style="height: 100vh;">
                <div class="inner-info-block">

                </div>
            </div>
            <!-- / title-blogtop -->

            <!-- Slider -->
            <div class="background bg-video background-bg-video">
                <div class="layer darken-pseudo" style="background-image: url(/images/menu_bg_30p.jpg);"></div>
            </div>
            <!-- / Slider -->
        </div>
    </div>
</section>