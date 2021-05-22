<!-- FOOTER -->
<section id="footer">
    <div class="container-fluid">
        <div class="background">
            <div class="layer" style="background: url(images/footer_bg.png);"></div>
        </div>
        <div class="container footer">
            <div class="row">
                <div class="col-xs-12 col-sm-4 col-md-4 cus_footer_logo"
                     style="text-align:left; padding:100px 0px;">
                    <img src="images/logo_footer.svg"/>
                </div>
                <div class="col-xs-12 col-sm-8 col-md-8" style="padding:50px 0px;">
                    <div style="font-size: 40px; font-weight: 100; color: #3f62af;">Awards &amp; media</div>
                    <div style="font-size:14px; font-weight: 100;  color: #3f62af;">Credibility and confidence
                        gained
                        through completion
                    </div>

                    <div class="scroll_2" id="style-4" style="height: 600px; overflow-y: scroll; margin-top: 30px;">
                        <div class="row">
                            @for($i=1;$i<=8;$i++)
                            <div class="col-xs-12 col-sm-3 col-md-3 cus_footer_logo_list"
                                 style="text-align: left; margin-top: 20px;">
                                <div><img src="images/award.png" style="width: 100%"/></div>
                                <div style="font-weight:100; margin-top:20px; color: #3f62af;">
                                    "Excellence Prize #{{$i}}"<br/> Cambodian Chamber of commerce - 2012
                                </div>
                            </div>
                                @endfor
                        </div>
                    </div>
                </div>
            </div>
            <div class="row" style="padding:100px 0px;">
                <div class="col-xs-12">
                    <a class="go-up" href="#wrapper">
                        <img src="images/Icon material-keyboard-arrow-up.svg"/>
                        <br/><br/> BACK TO TOP
                    </a>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-6 cus_a_contruction"
                     style="font-size:30px; color:#3f62af; text-align:left; font-weight:100;">
                    {{$label->slogan}}
                </div>
                <div class="col-xs-12 col-sm-3 col-md-3" style="color:#3f62af; text-align:left;">
                    <div class="cus_a_contruction cus_a_contruction_con" style="font-weight:500; font-size:30px;">
                        Contacts
                    </div>
                    <br/>
                    <br/>
                    <div class="cus_a_contruction_sub" style="font-size: 14px; font-weight:100; line-height: 25px;">
                        {{$label->contact}}
                    </div>
                </div>
                <div class="col-xs-12 col-sm-3 col-md-3">
                    <div class="subMenu nav" id="navigation-menu">
                        <nav>
                            <ul class="single-page-nav single_page_nav"
                                style="list-style: none; text-align: right;">
                                <li><a href="#primary-banner" class="cus_a_contruction"
                                       style="color: #3f62af !important;font-weight:300; font-size:25px;">{{$label->home}}</a>
                                </li>
                                <li><a href="#about-us" class="cus_a_contruction"
                                       style="color: #3f62af !important;font-weight:300; font-size:25px;">{{$label->about_us}}</a>
                                </li>
                                <li><a href="#design-build" class="cus_a_contruction"
                                       style="color: #3f62af !important;font-weight:300; font-size:25px;">{{$label->desing}}</a></li>
                                <li><a href="#projects" class="cus_a_contruction"
                                       style="color: #3f62af !important;font-weight:300; font-size:25px;">{{$label->project}}</a>
                                </li>
                                <li><a href="#they-recommend-us" class="cus_a_contruction"
                                       style="color: #3f62af !important;font-weight:300; font-size:25px;">{{$label->recommend}}</a></li>
                                <li><a href="#careers" class="cus_a_contruction"
                                       style="color: #3f62af !important;font-weight:300; font-size:25px;">{{$label->career}}</a>
                                </li>
                                <li><a href="#awards-media" class="cus_a_contruction"
                                       style="color: #3f62af !important;font-weight:300; font-size:25px;">{{$label->award}}</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>

            <div class="row" style="padding:30px 0px;">
                <div class="col-xs-12 col-sm-6 col-md-6" style="color:#3f62af; text-align:left;">
                    <span class="corp cus_footer_copyright">{{$label->copyrights}}</span>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-6 main_cus_social_icon"
                     style="color:#3f62af; text-align:left;">
                    <a href="{{$header->facebook}}" class="social_icon cus_social_icon1" style="float: left; margin-right: 30px;"><img
                                src="images/Icon awesome-facebook-f.svg"/></a>
                    <a href="{{$header->instagram}}" class="social_icon cus_social_icon2" style="float: left; margin-right: 30px;"><img
                                src="images/Icon feather-instagram.svg"/></a>
                    <a href="{{$header->linkedin}}" class="social_icon cus_social_icon3" style="float: left;"><img
                                src="images/Icon awesome-linkedin-in.svg"/></a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- / FOOTER -->