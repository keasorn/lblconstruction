<!-- FOOTER -->
<section id="footer" data-color="blue">
    <div class="container-fluid" id="awards-media">
        <div class="background fix-bg-image" style="background: white">
            <div class="layer fix-bg-image" style="background: url(images/footer_bg.png);"></div>
        </div>
        <div class="container footer">
            <div class="row" style="padding-top: 100px">
                <div class="col-xs-12">
                    <a class="go-up" href="#wrapper">
                        <img src="images/Icon material-keyboard-arrow-up.svg"/>
                        <br/><br/> BACK TO TOP
                    </a>
                </div>
            </div>
            <img src="images/logo_footer.svg">
            <div class="container">
                <div class="col-xs-12 col-sm-4 col-md-4 cus_a_contruction padding-25"
                     style="font-size:20px; color:#3f62af; text-align:left; font-weight:100;">
                    <div class="cus_a_contruction cus_a_contruction_con" style="font-weight:500; font-size:30px;">
                    </div>
                    <br/>
                    <br/>
                    <br/>
                    {{$label->slogan}}
                </div>
                <div class="col-xs-12 col-sm-4 col-md-4 padding-25" style="color:#3f62af; text-align:left;">
                    <div class="cus_a_contruction cus_a_contruction_con" style="font-weight:500; font-size:30px;">
                        Contacts
                    </div>
                    <br/>
                    <br/>
                    <div class="cus_a_contruction_sub" style="font-size: 14px; font-weight:100; line-height: 25px;">
                        <?php echo(nl2br($label->contact)) ?>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-4 col-md-4 padding-25">
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
                                       style="color: #3f62af !important;font-weight:300; font-size:25px;">{{$label->desing}}</a>
                                </li>
                                <li><a href="#projects" class="cus_a_contruction"
                                       style="color: #3f62af !important;font-weight:300; font-size:25px;">{{$label->project}}</a>
                                </li>
                                <li><a href="#they-recommend-us" class="cus_a_contruction"
                                       style="color: #3f62af !important;font-weight:300; font-size:25px;">{{$label->recommend}}</a>
                                </li>
                                <li><a href="#careers" class="cus_a_contruction"
                                       style="color: #3f62af !important;font-weight:300; font-size:25px;">{{$label->career}}</a>
                                </li>
                                <li><a href="#awards-media" class="cus_a_contruction"
                                       style="color: #3f62af !important;font-weight:300; font-size:25px;">{{$label->award}}</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>

            <div class="row" style="padding:30px 0px;">
                <div class="col-xs-12 col-sm-6 col-md-6" style="color:#3f62af; text-align:left;">
                    <span class="corp cus_footer_copyright">{{$label->copyrights}}</span>
                </div>
                <div class="my_home_text_sub" style="padding-left: 150px;">

                    <a href="{{$header->facebook}}" class="social_icon overBlue text-white" style="margin-right: 15px; font-size: 30px"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                    <a href="{{$header->description}}" class="social_icon overBlue text-white" style="margin-right: 15px; font-size: 30px"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                    <a href="{{$header->linkin}}" class="social_icon overBlue text-white" style="font-size: 30px"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- / FOOTER -->