<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="format-detection" content="telephone=no" />
    <title>LBL Construction</title>
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
    <link href="http://fonts.googleapis.com/css?family=Raleway:400,800,700,300" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/font-awesome.css" />
    <link rel="stylesheet" href="js/fancybox/source/jquery.fancybox.css" />
    <link rel="stylesheet" href="css/dzsparallaxer.css" />
    <link rel="stylesheet" href="css/jquery.mCustomScrollbar.css" />
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/custom.css" />

    <!-- IE 10-11 style fix -->
    <link rel="stylesheet" type="text/css" href="css/ie10.css" />
    <link rel="stylesheet" type="text/css" href="css/ie11.css" />
    <!--[if IE 8]> <link rel="stylesheet" type="text/css" href="css/ie8.css" /><![endif]-->

    <!-- <link rel="stylesheet" href="css/desoslide/app/main.css" /> -->
    <!-- <link rel="stylesheet" href="css/desoslide/app/views/demo.css" />
    <link rel="stylesheet" href="css/desoslide/vendor/magic/magic.min.css"> -->
    <link rel="stylesheet" href="css/desoslide/vendor/animate/animate.min.css">
    <link rel="stylesheet" href="css/desoslide/jquery.desoslide.css">

    <script>
        (function(i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r;
            i[r] = i[r] || function() {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date();
            a = s.createElement(o),
                m = s.getElementsByTagName(o)[0];
            a.async = 1;
            a.src = g;
            m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-27524593-3', 'sylouuu.github.io');
        ga('send', 'pageview');
    </script>

    <style type="text/css">
        @font-face {
            font-family: Montserrat;
            src: url(fonts/Montserrat/Montserrat-Regular.ttf);
        }

        body {
            font-family: 'Montserrat' !important;
        }

        .darken-pseudo {
            position: relative;
        }

        .darken-pseudo:after {
            content: "";
            position: absolute;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            display: block;
            background-color: rgba(0, 0, 0, 0.4);
        }

        .social_icon:hover {
            color: #fff;
        }

        .menu_button {
            position: absolute;
            z-index: 1000;
            right: 70px;
            top: 50px;
            cursor: pointer;
        }

        .bar1,
        .bar2,
        .bar3 {
            width: 35px;
            height: 5px;
            background-color: #fff;
            margin: 6px 0;
            transition: 0.4s;
        }

        .change .bar1 {
            -webkit-transform: rotate(-45deg) translate(-9px, 6px);
            transform: rotate(-45deg) translate(-9px, 6px);
        }

        .change .bar2 {
            opacity: 0;
        }

        .change .bar3 {
            -webkit-transform: rotate(45deg) translate(-8px, -8px);
            transform: rotate(45deg) translate(-8px, -8px);
        }
    </style>
    <style type="text/css">
        .responsiveRapper {
            overflow: hidden;
            padding-bottom: 56.25%;
            padding-top: 30px;
            height: 0;
            position: relative;
        }

        .responsiveRapper iframe,
        .responsiveRapper object,
        .responsiveRapper embed {
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            position: absolute;
        }
        /* width */

        ::-webkit-scrollbar {
            width: 10px;
        }
        /* Track */

        ::-webkit-scrollbar-track {
            background: #f1f1f1;
        }
        /* Handle */

        ::-webkit-scrollbar-thumb {
            background: #888;
        }
        /* Handle on hover */

        ::-webkit-scrollbar-thumb:hover {
            background: #555;
        }
        /*-----------------*/
        /* width */

        .scroll_1::-webkit-scrollbar {
            width: 10px;
        }
        /* Track */

        .scroll_1::-webkit-scrollbar-track {
            background: #f1f1f1;
        }
        /* Handle */

        .scroll_1::-webkit-scrollbar-thumb {
            background: #30487c;
        }
        /* Handle on hover */

        .scroll_1::-webkit-scrollbar-thumb:hover {
            background: #4165b0;
        }
        /*-----------------*/
        /* width */

        .scroll_2::-webkit-scrollbar {
            width: 10px;
        }
        /* Track */

        .scroll_2::-webkit-scrollbar-track {
            background: #f1f1f1;
        }
        /* Handle */

        .scroll_2::-webkit-scrollbar-thumb {
            background: #dddddd;
        }
        /* Handle on hover */

        .scroll_2::-webkit-scrollbar-thumb:hover {
            background: #aaaaaa;
        }
        /*-----------------*/
    </style>
    </style>
    </head>

    <body class="front-page">
    <div class="company_profile_box">
    <a href="#">
    <i class="fa fa-download" aria-hidden="true"></i> Company Profile
        </a>
                                                                        </div>


    <!-- WRAPPER HEADER -->
    <div id="nav-anchor"></div>

                           <div class="container-fluid position-right" id="wrapper">
    <div class="home" id="home"></div>

                                  <div class="menu_button" onclick="myFunction(this)">
    <div class="bar1"></div>
                        <div class="bar2"></div>
                                            <div class="bar3"></div>
                                                                </div>
                                                                  <script>
                                                                  function myFunction(x) {
        x.classList.toggle("change");
        $("#menu").fadeToggle();
        $("#my_home_scroll").fadeToggle();
        $("#my_home_text").fadeToggle();
        $("#my_home_scroll").fadeToggle();
    }
    </script>
    <!--  Primary-banner -->
    <section class="inside-pages white" id="primary-banner">
    <div class="container-fluid">
    <div class="row">
    <div class="primary-banner-text text-left" id="my_home_text">
    <div class="my_home_text_sub" style="font-weight: bold; font-size: 50px; color: #fff; padding-left: 150px;">A Construction Pioneer</div>
                                                                                                                                        <div class="my_home_text_sub" style="color: #fff; font-size: 30px; font-weight:100; padding-left: 150px;">Read LBL'S Company Profile</div>
    <div class="my_home_text_sub" style="padding-left: 150px;">
    <div style="color: #fff; font-size: 30px; font-weight:100; float: left; margin-right: 20px;">And follow us on</div>
                                                                                                                   <a href="#" class="social_icon" style="float: left; margin-right: 15px;"><img src="images/Icon awesome-facebook-f.svg" /></a>
                                                                                                                                                                                                                                              <a href="#" class="social_icon" style="float: left; margin-right: 15px;"><img src="images/Icon feather-instagram.svg" /></a>
                                                                                                                                                                                                                                                                                                                                                                        <a href="#" class="social_icon" style="float: left;"><img src="images/Icon awesome-linkedin-in.svg" /></a>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                </div>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  </div>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    <a class="go-to-about my-scroll" href="#about-us" id="my_home_scroll"><i class="fa fa-angle-down"></i></a>

    <!-- title-blogtop -->
    <div class="col-xs-12 first-page" id="primary-banner-title">
    <div class="inner-info-block">
    <a href="/"><img src="/images/logo.png" style="width: 100px; margin: 10px;" /></a>
                                                                                    </div>
                                                                                      </div>
    <!-- / title-blogtop -->

    <!-- Slider -->
    <div class="background bg-video cus_header">
    <div class="layer darken-pseudo cus_main_image" style="background-image: url(images/home_bg.png);">
    <div class="cus_main_image_sub" data-toggle="modal" data-target="#firstVideoPopUp">
    <i class="fa fa-play-circle-o" aria-hidden="true"></i>
                                                        </div>
                                                          </div>
                                                            <video autoplay muted loop id="myVideo" class="cus_main_video">
    <source src="media/header.mp4" type="video/mp4">
    <source src="media/cloud.ogg" type="video/ogg">
    <source src="media/cloud.webm" type="video/webm">
    </video>
      </div>
    <!-- / Slider -->
    </div>

      <div id="menu" class="row" style="position: absolute; width: 100%; top: 0; left: -7px; display: none;">
    <div class="primary-banner-text">
    <div class="col-sm-1"></div>
                            <div class="col-sm-4 cus_construction_menu" style="color: #fff; font-size: 30px; font-weight:100;">
    A Construction, Architechture,<br /> Refurbishment, Public work,<br /> Engineering and Development<br /> company in Camboida
                        </div>
                                                                                                                                                  <div class="col-sm-3 cus_contact_menu" style="color: #fff; font-size: 22px;">
    Contacts<br />
    <br />
    <div class="col-sm-10 cus_contact_menu_sub" style="color: #fff; font-size: 16px; font-weight:100; line-height: 25px;">
    43 Sihanouk boulevard,<br /> Phnom Penh BP 609<br /> (855) 23 215 296<br /> Sales: sales@lbl-group.com<br /> Careers: jobs@lbl-group.com<br /> Suppliers: purchasing@lbl-group.com
    </div>
      </div>
        <div class="col-sm-3 " style="color: #fff; font-size: 22px;">
    <div class="subMenu nav cus_contact_navigation" id="navigation-menu">
    <nav>
     <ul class="single-page-nav" style="list-style: none; text-align: right;">
    <li><a href="#primary-banner" style="color: #fff !important; font-weight:300;">Home</a></li>
                                                                                             <li><a href="#about-us" style="color: #fff !important; font-weight:300;">About Us</a></li>
                                                                                                                                                                                    <li><a href="#design-build" style="color: #fff !important; font-weight:300;">Design &amp; Build</a></li>
                                                                                                                                                                                                                                                                                         <li><a href="#projects" style="color: #fff !important; font-weight:300;">Projects</a></li>
                                                                                                                                                                                                                                                                                                                                                                                <li><a href="#they-recommend-us" style="color: #fff !important; font-weight:300;">They Recommend Us</a></li>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         <li><a href="#careers" style="color: #fff !important; font-weight:300;">Careers</a></li>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              <li><a href="#footer" style="color: #fff !important; font-weight:300;">Awards &amp; Media</a></li>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             </ul>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               </nav>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 </div>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   </div>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     <div class="col-sm-1"></div>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             <div style="clear: both;"></div>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         <div class="col-sm-1"></div>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 <div class="col-sm-10 cus_copyright_menu" style="color: #fff; font-size: 14px; margin-top: 30px; font-weight:100;">
    Copyrights @ 2020 LBL International - All rights reserved
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
    <div class="layer darken-pseudo" style="background-image: url(images/menu_bg.png);"></div>
                                                                                          </div>
    <!-- / Slider -->
    </div>
      </div>
        </section>
    <!--  / Primary-banner -->

    <!-- About Us -->
    <section class="cont-box" id="about-us">
    <div class="container-fluid">
    <div class="background">
    <div class="layer" style="background: url(images/about.png);"></div>
                                                                    </div>

                                                                      <div class="container">

    <div class="row">
    <div class="col-xs-12 cus_about_mobile" style="text-align:center; padding: 60px 0px; background:url(images/about_bg.png) no-repeat center; height: 450px; padding-top: 140px;background-size:cover">
    <button type="submit" class="btn-default" data-toggle="modal" data-target="#popupAboutUs">About Us</button>
                                                                                                        </div>

                                                                                                          <div class="col-xs-12" style="text-align:center; padding: 0px 0px 60px 0px;">
    <img src="images/about_img.png" style="width:100%;">
    </div>

      <div class="col-xs-12 main_cus_the_board_of_directior" style="text-align:center; padding: 0px 0px 60px 0px;">
    <div class="cus_the_board_of_directior" style="font-size: 40px; font-weight: 100; color: #3f62af;">THE BOARD OF DIRECTORS</div>
                                                                                                                               </div>

                                                                                                                                 <div class="col-sx-12">
    <div class="clearfix"></div>

                            <div style="color: #3f62af;width:100%">
    <div class="clearfix"></div>
                            <div class="tbod" style="width:20%;float:left">
    <b>Michael Jonson</b>
                       <p>
                       Expert in developing open<br /> data strategies and solutions.
    </p>
      </div>
        <div class="tbod" style="width:20%;float:left">
    <b>Michael Jonson</b>
                       <p>
                       Expert in developing open<br /> data strategies and solutions.
    </p>
      </div>
        <div class="tbod" style="width:20%;float:left">
    <b>Michael Jonson</b>
                       <p>
                       Expert in developing open<br /> data strategies and solutions.
    </p>
      </div>
        <div class="tbod" style="width:20%;float:left">
    <b>Michael Jonson</b>
                       <p>
                       Expert in developing open<br /> data strategies and solutions.
    </p>
      </div>
        <div class="tbod" style="width:20%;float:left">
    <b>Michael Jonson</b>
                       <p>
                       Expert in developing open<br /> data strategies and solutions.
    </p>
      </div>
        </div>
          </div>
            </div>
              </div>
                </div>
                  </div>
                    </div>
                      </section>
    <!-- / About Us -->


    <!-- Design and Build -->
    <section id="design-build" style="margin-top:-50px">
    <div class="design_and_build">Design &amp; Build</div>
                                                      <div class="containet-fluid">
    <div class="row">
    <div class="col-xs-12 col-sm-6 col-md-6 cus_first_video" style="height: 500px;">
    <div class="background bg-video">
    <div class="layer darken-pseudo cus_main_image" style="background-image: url(images/home_bg.png);">
    <div class="cus_main_image_sub" data-toggle="modal" data-target="#firstVideoPopUp">
    <i class="fa fa-play-circle-o" aria-hidden="true"></i>
                                                        </div>
                                                          </div>
                                                            <video autoplay muted loop id="myVideoFirst" class="cus_main_video" style="z-index: 1000; width: 100%;">
    <source src="media/design.mp4" type="video/mp4">
    <source src="media/cloud.ogg" type="video/ogg">
    <source src="media/cloud.webm" type="video/webm">
    </video>
      </div>
        </div>
          <div class="col-xs-12 col-sm-6 col-md-6 cus_second_video" style="height: 500px;">
    <div class="background bg-video">
    <div class="layer darken-pseudo cus_main_image" style="background-image: url(images/home_bg.png);">
    <div class="cus_main_image_sub" data-toggle="modal" data-target="#firstVideoPopUp">
    <i class="fa fa-play-circle-o" aria-hidden="true"></i>
                                                        </div>
                                                          </div>
                                                            <video autoplay muted loop id="myVideoSecond" class="cus_main_video" style="width: 100%;">
    <source src="media/build.mp4" type="video/mp4">
    <source src="media/cloud.ogg" type="video/ogg">
    <source src="media/cloud.webm" type="video/webm">
    </video>
      </div>
        </div>
          </div>
            </div>
              </section>
                <div style="clear:both"></div>
                                          <section class="cus_journey" style="margin-top:-15px;">
    <div class="container-fluid">
    <div class="background">
    <div class="layer" style="background: url(images/design_build_bg.png);"></div>
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
    <b>DESIGN &amp; BUILD</b>
                           <p class="cus_journey_sub_p" style="padding-top: 20px; padding-right: 50px; font-size: 18px; font-weight: 100;">
    Our design and build approach seeks to create comprehensive solutions based on the close and continuous cooperation between the client and our experienced design teams. Whether the requested work is a basic conceptual design, a fully
                                </p>
                                                                                                                                                                                                                                                                          </div>
                                                                                                                                                                                                                                                                            <div class="col-xs-12 col-sm-4 col-md-4">
    <p class="cus_journey_sub_p" style="padding-top: 40px; padding-right: 50px; font-size: 18px; font-weight: 100;">
    detailed design or the entire delivery of the project, LBL uses its internal resources from start to finish. The design and build approach thus gives our clients a single point of contact fro both the design and construction phases of any project.
    </p>
      </div>
        <div class="col-xs-12 col-sm-4 col-md-4">
    <b>BUILD</b>
              <p class="cus_journey_sub_p" style="padding-top: 20px; padding-right: 50px; font-size: 18px; font-weight: 100;">
    The heart of each project is its construction.<br /> With our technical expertise and experiences we conduct the operations with our professional teams, our special equipment and the management of resources to deliver
    creative and cost-efficient solutions that are fully compliant with the specific conditions of each project.
    </p>
      </div>
        </div>
          </div>
            </div>
              <div class="col-xs-12" style="text-align:center; padding: 60px 0px 60px 0px;">
    <div class="cus_journey_sub_title" style="font-size: 40px; font-weight: 100; color: #FFF;">"A Journey to Cambodia 3.0"</div>
                                                                                                                            </div>
                                                                                                                              </div>
                                                                                                                                </div>
                                                                                                                                  </div>
                                                                                                                                    </section>
    <!-- Design and Build -->

    <!-- Design and Build -->
    <section id="projects">
    <div class="containet-fluid" style="background:#19253e;">
    <div class="row">
    <div class="col-xs-12 col-sm-6 col-md-6 project_box" style="position: relative;">
    <img src="images/p1.png" class="h_grayscale h_grayscale_first" style="max-width: 100%; max-height: 100%; display: block;padding-right:2px;padding-bottom:2px" />
    <div class="h_grayscale_first_btn" style="cursor: pointer; background:#FFF; color:#3f62af; position: absolute; top: 50%; left: 40%; margin: -25px 0 0 -25px; padding: 6px 30px;" data-toggle="modal" data-target="#popupViewGallery">
    HOTEL &amp; RESORTS
                    </div>
                                      </div>
                                        <div class="col-xs-12 col-sm-6 col-md-6" style="position: relative;">
    <div class="row">
    <div class="col-xs-12 project_box">
    <img src="images/p2.png" class="h_grayscale" style="max-width: 100%; max-height: 100%; display: block;padding-bottom:2px" />
    <div style="cursor: pointer; background:#FFF; color:#3f62af; position: absolute; top: 50%; left: 40%; margin: -25px 0 0 -25px; padding: 6px 30px;" data-toggle="modal" data-target="#popupViewGallery">
    INDUSTRIAL
                            </div>
                                  </div>
                                    </div>
                                      <div class="row">
    <div class="col-xs-12 col-sm-6 col-md-6 cus_gallery_text_first" style="position: relative;height:414px;">
    <div class="cus_gallery_text cus_gallery_text_second" style="color: #FFF; padding: 40px 40px 40px 40px;height:416px;padding-bottom:2px">
    <div>SUCCESS IN ALL SECTORS OF THE CONSTRUCTION FIELDS</div>
                                                            <div class="cus_gallery_text_thirt" style="margin-top: 20px; font-size: 18px; font-weight: 100; height: 270px; overflow-y: scroll;" id="style-4">
    <p>As a construction leader, LBL meets the clients' needs from concept to turnkey solutions on a wide-ranging array of building requirements. These include large-scale projects such as embassies, luxury hotels, modern
    office structures, prestigius villas, expansive humanitarian projects as well as commercial buidings and towers across Cambodia and beyond.</p>
                                                                                                                                                 <p>Moving onward, LBL will continue to provide excellence in our service and top quality results for an ever-demanding construction sector, as it pursues its expansion in Cambodia and Southeast Asia.</p>
                                                                                                                                                                                                                                                                                                                                                          </div>
                                                                                                                                                                                                                                                                                                                                                            </div>
                                                                                                                                                                                                                                                                                                                                                              </div>
                                                                                                                                                                                                                                                                                                                                                                <div class="col-xs-12 col-sm-6 col-md-6 project_box" style="position: relative;">
    <img src="images/p3.png" class="h_grayscale h_grayscale_3 cus_gallery_text_second" style="max-width: 100%; max-height: 100%; display: block;height: 416px;width: 100%;padding-bottom:2px" />
    <div class="h_grayscale_3_btn" style="cursor: pointer; background:#FFF; color:#3f62af; position: absolute; top: 50%; left: 35%; margin: -25px 0 0 -25px; padding: 6px 30px;" data-toggle="modal" data-target="#popupViewGallery">
    EMBASSIES
                            </div>
                                  </div>
                                    </div>
                                      </div>
                                        </div>
                                          <div class="row">
    <div class="col-xs-12 col-sm-6 col-md-6 project_box" style="position: relative;">
    <img src="images/p4.png" class="h_grayscale h_grayscale_4" style="max-width: 100%; max-height: 100%; display: block;padding-bottom:2px;padding-right:2px" />
    <div class="h_grayscale_4_btn" style="cursor: pointer; background:#FFF; color:#3f62af; position: absolute; top: 50%; left: 40%; margin: -25px 0 0 -25px; padding: 6px 30px;" data-toggle="modal" data-target="#popupViewGallery">
    SCHOOLS &amp; HOSPITALS
                    </div>
                                        </div>
                                          <div class="col-xs-12 col-sm-6 col-md-6 project_box" style="position: relative;">
    <img src="images/p5.png" class="h_grayscale h_grayscale_5" style="max-width: 100%; max-height: 100%; display: block;padding-bottom:2px" />
    <div class="h_grayscale_5_btn" style="cursor: pointer; background:#FFF; color:#3f62af; position: absolute; top: 50%; left: 40%; margin: -25px 0 0 -25px; padding: 6px 30px;" data-toggle="modal" data-target="#popupViewGallery">
    RESIDENTAIL
                    </div>
                          </div>
                            </div>
                              <div class="row">
    <div class="col-xs-12 col-sm-6 col-md-6">
    <div class="row">
    <div class="col-xs-12 col-sm-6 col-md-6 project_box" style="position: relative;">
    <img src="images/p6.png" class="h_grayscale h_grayscale_6" style="max-width: 100%; max-height: 100%; display: block;padding-right:2px;padding-right:2px" />
    <div class="h_grayscale_6_btn" style="cursor: pointer; background:#FFF; color:#3f62af; position: absolute; top: 50%; left: 35%; margin: -25px 0 0 -25px; padding: 6px 30px;" data-toggle="modal" data-target="#popupViewGallery">
    COMMERCIALS
                            </div>
                                  </div>
                                    <div class="col-xs-12 col-sm-6 col-md-6 project_box" style=" position: relative;">
    <img src="images/p7.png" class="h_grayscale h_grayscale_6" style="max-width: 100%; max-height: 100%; display: block;padding-right:2px" />
    <div class="h_grayscale_7_btn" style="cursor: pointer; background:#FFF; color:#3f62af; position: absolute; top: 50%; left: 35%; margin: -25px 0 0 -25px; padding: 6px 30px;" data-toggle="modal" data-target="#popupViewGallery">
    OFFICES
                            </div>
                                  </div>
                                    </div>
                                      </div>
                                        <div class="col-xs-12 col-sm-6 col-md-6 project_box" style="position: relative;">
    <img src="images/p8.png" class="h_grayscale" style="max-width: 100%; max-height: 100%; display: block;" />
    <div style="cursor: pointer; background:#FFF; color:#3f62af; position: absolute; top: 50%; left: 40%; margin: -25px 0 0 -25px; padding: 6px 30px;" data-toggle="modal" data-target="#popupViewGallery">
    INSTITUTIONS
                    </div>
                          </div>
                            </div>
                              </div>
                                </section>


    <!-- They Recommend Us -->
    <div style="clear:both"></div>
                              <section id="they-recommend-us">
    <div class="container-fluid">
    <div class="clearfix"></div>
                            <div class="background">
    <div class="layer" style="background: url(images/design_build_bg.png);"></div>
                                                                              <div class="layer" style="background: rgba(21, 33, 45, 0.95);"></div>
                                                                                                                                               </div>

                                                                                                                                                 <div class="container">

    <div class="row">
    <div class="col-xs-12" style="text-align:center; padding: 60px 0px 40px 0px;">
    <div style="font-size: 40px; font-weight: 100; color: #FFF;">They recommend us</div>
                                                                                    <div style="font-size:14px; color:#FFF; font-weight:100;">They worked with us and enjoyed our services</div>
                                                                                                                                                                                            </div>

                                                                                                                                                                                              <div class="col-sx-12" style="margin-bottom:60px;">
    <div class="row" style="color: #FFF; text-align:center;">
    <div class="cus_they_recommend_us image-frame">
    <div style="padding:30px;">
    <img src="images/rec_logo1.png" style="width:90%" />
    <div class="image-caption">
    <span>
    "High level quality standard as Airport is expecting. All projects completed on time and in budget with good quality and no injuries."
    </span>
      <div>
      <i>Denis Blosse - Chief Technical Officer</i>
                                                 </div>
                                                   </div>
                                                     </div>
                                                       </div>
                                                         <div class="cus_they_recommend_us image-frame">
    <div style="padding:30px;">
    <img src="images/rec_logo1.png" style="width:90%" />
    <div class="image-caption">
    <span>
    "High level quality standard as Airport is expecting. All projects completed on time and in budget with good quality and no injuries."
    </span>
      <div>
      <i>Denis Blosse - Chief Technical Officer</i>
                                                 </div>
                                                   </div>
                                                     </div>
                                                       </div>
                                                         <div class="cus_they_recommend_us image-frame">
    <div style="padding:30px;">
    <img src="images/rec_logo1.png" style="width:90%" />
    <div class="image-caption">
    <span>
    "High level quality standard as Airport is expecting. All projects completed on time and in budget with good quality and no injuries."
    </span>
      <div>
      <i>Denis Blosse - Chief Technical Officer</i>
                                                 </div>
                                                   </div>
                                                     </div>
                                                       </div>
                                                         <div class="cus_they_recommend_us image-frame">
    <div style="padding:30px;">
    <img src="images/rec_logo1.png" style="width:90%" />
    <div class="image-caption">
    <span>
    "High level quality standard as Airport is expecting. All projects completed on time and in budget with good quality and no injuries."
    </span>
      <div>
      <i>Denis Blosse - Chief Technical Officer</i>
                                                 </div>
                                                   </div>
                                                     </div>
                                                       </div>
                                                         <div class="cus_they_recommend_us image-frame">
    <div style="padding:30px;">
    <img src="images/rec_logo1.png" style="width:90%" />
    <div class="image-caption">
    <span>
    "High level quality standard as Airport is expecting. All projects completed on time and in budget with good quality and no injuries."
    </span>
      <div>
      <i>Denis Blosse - Chief Technical Officer</i>
                                                 </div>
                                                   </div>
                                                     </div>
                                                       </div>
                                                         <div class="cus_they_recommend_us image-frame">
    <div style="padding:30px;">
    <img src="images/rec_logo1.png" style="width:90%" />
    <div class="image-caption">
    <span>
    "High level quality standard as Airport is expecting. All projects completed on time and in budget with good quality and no injuries."
    </span>
      <div>
      <i>Denis Blosse - Chief Technical Officer</i>
                                                 </div>
                                                   </div>
                                                     </div>
                                                       </div>
                                                         <div class="cus_they_recommend_us image-frame">
    <div style="padding:30px;">
    <img src="images/rec_logo1.png" style="width:90%" />
    <div class="image-caption">
    <span>
    "High level quality standard as Airport is expecting. All projects completed on time and in budget with good quality and no injuries."
    </span>
      <div>
      <i>Denis Blosse - Chief Technical Officer</i>
                                                 </div>
                                                   </div>
                                                     </div>
                                                       </div>
                                                         <div class="cus_they_recommend_us image-frame">
    <div style="padding:30px;">
    <img src="images/rec_logo1.png" style="width:90%" />
    <div class="image-caption">
    <span>
    "High level quality standard as Airport is expecting. All projects completed on time and in budget with good quality and no injuries."
    </span>
      <div>
      <i>Denis Blosse - Chief Technical Officer</i>
                                                 </div>
                                                   </div>
                                                     </div>
                                                       </div>
                                                         <div class="cus_they_recommend_us image-frame">
    <div style="padding:30px;">
    <img src="images/rec_logo1.png" style="width:90%" />
    <div class="image-caption">
    <span>
    "High level quality standard as Airport is expecting. All projects completed on time and in budget with good quality and no injuries."
    </span>
      <div>
      <i>Denis Blosse - Chief Technical Officer</i>
                                                 </div>
                                                   </div>
                                                     </div>
                                                       </div>
                                                         <div class="cus_they_recommend_us image-frame">
    <div style="padding:30px;">
    <img src="images/rec_logo1.png" style="width:90%" />
    <div class="image-caption">
    <span>
    "High level quality standard as Airport is expecting. All projects completed on time and in budget with good quality and no injuries."
    </span>
      <div>
      <i>Denis Blosse - Chief Technical Officer</i>
                                                 </div>
                                                   </div>
                                                     </div>
                                                       </div>
                                                         <div class="cus_they_recommend_us image-frame">
    <div style="padding:30px;">
    <img src="images/rec_logo1.png" style="width:90%" />
    <div class="image-caption">
    <span>
    "High level quality standard as Airport is expecting. All projects completed on time and in budget with good quality and no injuries."
    </span>
      <div>
      <i>Denis Blosse - Chief Technical Officer</i>
                                                 </div>
                                                   </div>
                                                     </div>
                                                       </div>
                                                         <div class="cus_they_recommend_us image-frame">
    <div style="padding:30px;">
    <img src="images/rec_logo1.png" style="width:90%" />
    <div class="image-caption">
    <span>
    "High level quality standard as Airport is expecting. All projects completed on time and in budget with good quality and no injuries."
    </span>
      <div>
      <i>Denis Blosse - Chief Technical Officer</i>
                                                 </div>
                                                   </div>
                                                     </div>
                                                       </div>
                                                         <div class="cus_they_recommend_us image-frame">
    <div style="padding:30px;">
    <img src="images/rec_logo1.png" style="width:90%" />
    <div class="image-caption">
    <span>
    "High level quality standard as Airport is expecting. All projects completed on time and in budget with good quality and no injuries."
    </span>
      <div>
      <i>Denis Blosse - Chief Technical Officer</i>
                                                 </div>
                                                   </div>
                                                     </div>
                                                       </div>
                                                         <div class="cus_they_recommend_us image-frame">
    <div style="padding:30px;">
    <img src="images/rec_logo1.png" style="width:90%" />
    <div class="image-caption">
    <span>
    "High level quality standard as Airport is expecting. All projects completed on time and in budget with good quality and no injuries."
    </span>
      <div>
      <i>Denis Blosse - Chief Technical Officer</i>
                                                 </div>
                                                   </div>
                                                     </div>
                                                       </div>
                                                         <div class="cus_they_recommend_us image-frame">
    <div style="padding:30px;">
    <img src="images/rec_logo1.png" style="width:90%" />
    <div class="image-caption">
    <span>
    "High level quality standard as Airport is expecting. All projects completed on time and in budget with good quality and no injuries."
    </span>
      <div>
      <i>Denis Blosse - Chief Technical Officer</i>
                                                 </div>
                                                   </div>
                                                     </div>
                                                       </div>
                                                         </div>
                                                           </div>
                                                             </div>

                                                               </div>
                                                                 </div>

                                                                   </div>
                                                                     </div>
                                                                       </div>
                                                                         </section>
    <!-- They Recommend Us -->

    <!-- They Recommend Us -->
    <div style="clear:both"></div>
                              <section id="careers">
    <div class="container-fluid">
    <div class="clearfix"></div>
                            <div class="background cus_career_background">
    <div class="layer" style="background: url(images/careers.png);"></div>
                                                                      <div class="layer cus_career_back" style="background: rgb(0 44 88 / 80%);"></div>
                                                                                                                                                   </div>

                                                                                                                                                     <div class="container">

    <div class="row">
    <div class="col-xs-12" style="text-align:center; padding: 60px 0px 60px 0px;">
    <div style="font-size: 40px; font-weight: 100; color: #FFF;">You can work for us</div>
                                                                                      </div>

                                                                                        <div class="col-sx-12">
    <div class="clearfix"></div>

                            <div class="wrapper-carusel carusel-4">
    <div class="row list-carousel responsive slider-foo-4">
    <div class="preloader">
    <div class="preload-img"></div>
                               </div>
                                 <div class="carousel-box foo4" data-item-max="4">
    <div class="col-xs-12 col-sm-3 col-md-3 cus_ycwfus">
    <div>CONTRACT MANAGER</div>
                           <div style="font-weight:100; margin-top:20px;">
    Phnom Penh, Cambodia<br /> Full-time
                                            <br /> Posted 2 weeks ago
                                        </div>
                                                                                                                                           </div>
                                                                                                                                             <div class="col-xs-12 col-sm-3 col-md-3 cus_ycwfus">
    <div>CONTRACT MANAGER</div>
                           <div style="font-weight:100; margin-top:20px;">
    Phnom Penh, Cambodia<br /> Full-time
                                            <br /> Posted 2 weeks ago
                                        </div>
                                                                                                                                           </div>
                                                                                                                                             <div class="col-xs-12 col-sm-3 col-md-3 cus_ycwfus">
    <div>CONTRACT MANAGER</div>
                           <div style="font-weight:100; margin-top:20px;">
    Phnom Penh, Cambodia<br /> Full-time
                                            <br /> Posted 2 weeks ago
                                        </div>
                                                                                                                                           </div>
                                                                                                                                             <div class="col-xs-12 col-sm-3 col-md-3 cus_ycwfus">
    <div>CONTRACT MANAGER</div>
                           <div style="font-weight:100; margin-top:20px;">
    Phnom Penh, Cambodia<br /> Full-time
                                            <br /> Posted 2 weeks ago
                                        </div>
                                                                                                                                           </div>
                                                                                                                                             <div class="col-xs-12 col-sm-3 col-md-3 cus_ycwfus">
    <div>CONTRACT MANAGER</div>
                           <div style="font-weight:100; margin-top:20px;">
    Phnom Penh, Cambodia<br /> Full-time
                                            <br /> Posted 2 weeks ago
                                        </div>
                                                                                                                                           </div>
                                                                                                                                             <div class="col-xs-12 col-sm-3 col-md-3 cus_ycwfus">
    <div>CONTRACT MANAGER</div>
                           <div style="font-weight:100; margin-top:20px;">
    Phnom Penh, Cambodia<br /> Full-time
                                            <br /> Posted 2 weeks ago
                                        </div>
                                                                                                                                           </div>
                                                                                                                                             </div>
                                                                                                                                               </div>
                                                                                                                                                 <button class="prev"><i class="fa fa-angle-left"></i></button>
                                                                                                                                                                                                        <button class="next"><i class="fa fa-angle-right"></i></button>


                                                                                                                                                                                                                                                                </div>
    <!-- /carusel-4 -->
    <center>
     <button type="submit" class="btn-default" style="padding: 3px 40px 0 40px;margin-top:50px;margin-bottom:90px" data-toggle="modal" data-target="#popupCareer">
    More
                            </button>
                                  </center>

                                    </div>

                                      </div>
                                        </div>
                                          </div>
                                            </section>
    <!-- They Recommend Us -->

    <!-- Awards and Media -->
    <div style="clear:both"></div>

    <!-- FOOTER -->
    <section id="footer">
    <div class="container-fluid">
    <div class="background">
    <div class="layer" style="background: url(images/footer_bg.png);"></div>
                                                                        </div>
                                                                          <div class="container footer">
    <div class="row">
    <div class="col-xs-12 col-sm-6 col-md-6 cus_footer_logo" style="text-align:left; padding:100px 0px;">
    <img src="images/logo_footer.svg" />
    </div>
      <div class="col-xs-12 col-sm-6 col-md-6" style="padding:50px 0px;">
    <div style="font-size: 40px; font-weight: 100; color: #3f62af;">Awards &amp; media</div>
                                                                                        <div style="font-size:14px; font-weight: 100;  color: #3f62af;">Credibility and confidence gained through completion</div>

                                                                                                                                                                                                              <div class="scroll_2" id="style-4" style="height: 500px; overflow-y: scroll; margin-top: 30px;">
    <div class="row">
    <div class="col-xs-12 col-sm-6 col-md-6 cus_footer_logo_list" style="text-align: left; margin-top: 20px;">
    <div><img src="images/Icon feather-award.svg" /></div>
                                                      <div style="font-weight:100; margin-top:20px; color: #3f62af;">
    "Excellence Prize"<br /> Cambodian Chamber of commerce - 2012
    </div>
      </div>
        <div class="col-xs-12 col-sm-6 col-md-6 cus_footer_logo_list" style="text-align: left; margin-top: 20px;">
    <div><img src="images/Icon feather-award.svg" /></div>
                                                      <div style="font-weight:100; margin-top:20px; color: #3f62af;">
    "Excellence Prize"<br /> Cambodian Chamber of commerce - 2012
    </div>
      </div>
        <div class="col-xs-12 col-sm-6 col-md-6 cus_footer_logo_list" style="text-align: left; margin-top: 20px;">
    <div><img src="images/Icon feather-award.svg" /></div>
                                                      <div style="font-weight:100; margin-top:20px; color: #3f62af;">
    "Excellence Prize"<br /> Cambodian Chamber of commerce - 2012
    </div>
      </div>
        <div class="col-xs-12 col-sm-6 col-md-6 cus_footer_logo_list" style="text-align: left; margin-top: 20px;">
    <div><img src="images/Icon feather-award.svg" /></div>
                                                      <div style="font-weight:100; margin-top:20px; color: #3f62af;">
    "Excellence Prize"<br /> Cambodian Chamber of commerce - 2012
    </div>
      </div>
        <div class="col-xs-12 col-sm-6 col-md-6 cus_footer_logo_list" style="text-align: left; margin-top: 20px;">
    <div><img src="images/Icon feather-award.svg" /></div>
                                                      <div style="font-weight:100; margin-top:20px; color: #3f62af;">
    "Excellence Prize"<br /> Cambodian Chamber of commerce - 2012
    </div>
      </div>
        <div class="col-xs-12 col-sm-6 col-md-6 cus_footer_logo_list" style="text-align: left; margin-top: 20px;">
    <div><img src="images/Icon feather-award.svg" /></div>
                                                      <div style="font-weight:100; margin-top:20px; color: #3f62af;">
    "Excellence Prize"<br /> Cambodian Chamber of commerce - 2012
    </div>
      </div>
        <div class="col-xs-12 col-sm-6 col-md-6 cus_footer_logo_list" style="text-align: left; margin-top: 20px;">
    <div><img src="images/Icon feather-award.svg" /></div>
                                                      <div style="font-weight:100; margin-top:20px; color: #3f62af;">
    "Excellence Prize"<br /> Cambodian Chamber of commerce - 2012
    </div>
      </div>
        <div class="col-xs-12 col-sm-6 col-md-6 cus_footer_logo_list" style="text-align: left; margin-top: 20px;">
    <div><img src="images/Icon feather-award.svg" /></div>
                                                      <div style="font-weight:100; margin-top:20px; color: #3f62af;">
    "Excellence Prize"<br /> Cambodian Chamber of commerce - 2012
    </div>
      </div>
        </div>
          </div>
            </div>
              </div>
                <div class="row" style="padding:100px 0px;">
    <div class="col-xs-12">
    <a class="go-up" href="#wrapper">
    <img src="images/Icon material-keyboard-arrow-up.svg" />
    <br /><br /> BACK TO TOP
                        </a>
                                                   </div>
                                                     </div>
                                                       <div class="row">
    <div class="col-xs-12 col-sm-6 col-md-6 cus_a_contruction" style="font-size:30px; color:#3f62af; text-align:left; font-weight:100;">
    A Contruction, Architecture,<br /> Refurbishment, Public work,<br /> Engineering and Development<br /> company in Cambodia.
    </div>
      <div class="col-xs-12 col-sm-3 col-md-3" style="color:#3f62af; text-align:left;">
    <div class="cus_a_contruction cus_a_contruction_con" style="font-weight:500; font-size:30px;">Contacts</div><br />
    <br />
    <div class="cus_a_contruction_sub" style="font-size: 14px; font-weight:100; line-height: 25px;">
    43 Sihanouk boulevard,<br /> Phnom Penh BP 609<br /> (855) 23 215 296<br /> Sales: sales@lbl-group.com<br /> Careers: jobs@lbl-group.com<br /> Suppliers: purchasing@lbl-group.com
    </div>
      </div>
        <div class="col-xs-12 col-sm-3 col-md-3">
    <div class="subMenu nav" id="navigation-menu">
    <nav>
     <ul class="single-page-nav single_page_nav" style="list-style: none; text-align: right;">
    <li><a href="#primary-banner" class="cus_a_contruction" style="color: #3f62af !important;font-weight:300; font-size:25px;">Home</a></li>
                                                                                                                                         <li><a href="#about-us" class="cus_a_contruction" style="color: #3f62af !important;font-weight:300; font-size:25px;">About Us</a></li>
                                                                                                                                                                                                                                                                            <li><a href="#design-build" class="cus_a_contruction" style="color: #3f62af !important;font-weight:300; font-size:25px;">Design &amp; Build</a></li>
                                                                                                                                                                                                                                                                                                                                                                                                                             <li><a href="#projects" class="cus_a_contruction" style="color: #3f62af !important;font-weight:300; font-size:25px;">Projects</a></li>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                <li><a href="#they-recommend-us" class="cus_a_contruction" style="color: #3f62af !important;font-weight:300; font-size:25px;">They Recommend Us</a></li>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     <li><a href="#careers" class="cus_a_contruction" style="color: #3f62af !important;font-weight:300; font-size:25px;">Careers</a></li>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      <li><a href="#awards-media" class="cus_a_contruction" style="color: #3f62af !important;font-weight:300; font-size:25px;">Awards &amp; Media</a></li>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       </ul>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         </nav>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           </div>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             </div>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               </div>

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 <div class="row" style="padding:30px 0px;">
    <div class="col-xs-12 col-sm-6 col-md-6" style="color:#3f62af; text-align:left;">
    <span class="corp cus_footer_copyright">Copyrights &copy; 2020 LBL International - All rights reserved</span>
                                                                                                            </div>
                                                                                                              <div class="col-xs-12 col-sm-6 col-md-6 main_cus_social_icon" style="color:#3f62af; text-align:left;">
    <a href="#" class="social_icon cus_social_icon1" style="float: left; margin-right: 30px;"><img src="images/Icon awesome-facebook-f.svg" /></a>
                                                                                                                                                <a href="#" class="social_icon cus_social_icon2" style="float: left; margin-right: 30px;"><img src="images/Icon feather-instagram.svg" /></a>
                                                                                                                                                                                                                                                                                           <a href="#" class="social_icon cus_social_icon3" style="float: left;"><img src="images/Icon awesome-linkedin-in.svg" /></a>
                                                                                                                                                                                                                                                                                                                                                                                                                    </div>
                                                                                                                                                                                                                                                                                                                                                                                                                      </div>
                                                                                                                                                                                                                                                                                                                                                                                                                        </div>
                                                                                                                                                                                                                                                                                                                                                                                                                          </div>
                                                                                                                                                                                                                                                                                                                                                                                                                            </section>
    <!-- / FOOTER -->
    </div>
    <!-- / wrapper-->

    <!-- Modal About Us -->
    <div class="modal fade bd-example-modal-lg" id="popupAboutUs" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content popupAboutUsContant">
    <div class="modal-header">
    <h5 class="modal-title" id="exampleModalLabel">About Us</h5>
                                                             <button type="button" class="close" data-dismiss="modal" aria-label="Close">
    <span aria-hidden="true">&times;</span>
                                      </button>
                                        </div>
                                          <div class="modal-body">
    <p>
     Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has
    survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently
    with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of
    using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use
                                                                                                                                      Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour
                                                                                                                                                                                                                                                                                                                                                             and the like).
    </p>
      </div>
        </div>
          </div>
            </div>

    <!-- Modal Career -->
    <div class="modal fade" id="popupCareer" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
    <div class="col-xs-12 col-sm-6 col-md-6 popupCareerText">
    <div style="font-weight:bold;">CONTRACT MANAGER</div>
                                                     <div style="font-weight:100; margin-top:0px;">
    Phnom Penh, Cambodia<br /> Full-time
                                <br /> Posted 2 weeks ago
                            </div>
                                                                                                                   </div>
                                                                                                                     <div class="col-xs-12 col-sm-6 col-md-6 popupCareerText">
    <div>CONTRACT MANAGER</div>
                           <div style="font-weight:100; margin-top:0px;">
    Phnom Penh, Cambodia<br /> Full-time
                                <br /> Posted 2 weeks ago
                            </div>
                                                                                                                   </div>
                                                                                                                     <div class="col-xs-12 col-sm-6 col-md-6 popupCareerText">
    <div>CONTRACT MANAGER</div>
                           <div style="font-weight:100; margin-top:0px;">
    Phnom Penh, Cambodia<br /> Full-time
                                <br /> Posted 2 weeks ago
                            </div>
                                                                                                                   </div>
                                                                                                                     <div class="col-xs-12 col-sm-6 col-md-6 popupCareerText">
    <div>CONTRACT MANAGER</div>
                           <div style="font-weight:100; margin-top:0px;">
    Phnom Penh, Cambodia<br /> Full-time
                                <br /> Posted 2 weeks ago
                            </div>
                                                                                                                   </div>
                                                                                                                     <div class="col-xs-12 col-sm-6 col-md-6 popupCareerText">
    <div>CONTRACT MANAGER</div>
                           <div style="font-weight:100; margin-top:0px;">
    Phnom Penh, Cambodia<br /> Full-time
                                <br /> Posted 2 weeks ago
                            </div>
                                                                                                                   </div>
                                                                                                                     <div class="col-xs-12 col-sm-6 col-md-6 popupCareerText">
    <div>CONTRACT MANAGER</div>
                           <div style="font-weight:100; margin-top:0px;">
    Phnom Penh, Cambodia<br /> Full-time
                                <br /> Posted 2 weeks ago
                            </div>
                                                                                                                   </div>
                                                                                                                     </div>
                                                                                                                       </div>

                                                                                                                         </div>
                                                                                                                           </div>
                                                                                                                             </div>

    <!-- Modal View Gallery -->
    <div class="modal fade bd-example-modal-lg" tabindex="-1" id="popupViewGallery" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
    <div class="modal-content">
    <div class="modal-header">
    <h5 class="modal-title" id="exampleModalLabel">Images</h5>
                                                           <button type="button" class="close" data-dismiss="modal" aria-label="Close">
    <span aria-hidden="true">&times;</span>
                                      </button>
                                        </div>
                                          <div class="modal-body">
    <div class="row">
    <div id="slideshow3" class="col-md-9 col-sm-9 col-xs-12"></div>

                                                               <div class="col-md-3 col-sm-3 col-xs-12 text-center main_slideshow3_thumbs">
    <ul id="slideshow3_thumbs" class="desoslide-thumbs-vertical list-inline">
    <li>
     <a href="images/p1.png">
    <img src="images/p1.png" style="display: block;padding:5px;width:100%;height: 200px;object-fit: cover;">
    </a>
      </li>
        <li>
        <a href="images/p2.png">
    <img src="images/p2.png" style="display: block;padding:5px;width:100%;height: 200px;object-fit: cover;">
    </a>
      </li>
        <li>
        <a href="images/p3.png">
    <img src="images/p3.png" style="display: block;padding:5px;width:100%;height: 200px;object-fit: cover;">
    </a>
      </li>
        <li>
        <a href="images/p4.png">
    <img src="images/p4.png" style="display: block;padding:5px;width:100%;height: 200px;object-fit: cover;">
    </a>
      </li>
        </ul>
          </div>

            </div>
              </div>
                </div>
                  </div>
                    </div>

    <!-- Modal First Video -->
    <div class="modal fade" id="firstVideoPopUp" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
    <source src="media/header.mp4" type="video/mp4">
    <source src="media/cloud.ogg" type="video/ogg">
    <source src="media/cloud.webm" type="video/webm">
    </video>
      </div>
        </div>
          </div>
            </div>

              <script src="js/jquery-1.11.2.min.js"></script>
                                                      <script src="http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.2/raphael-min.js"></script>
                                                                                                                                         <script src="js/bootstrap.js"></script>
                                                                                                                                                                         <script src="js/bootstrap-tabcollapse.js"></script>
                                                                                                                                                                                                                     <script src="js/jquery.carouFredSel-6.2.1-packed.js"></script>
                                                                                                                                                                                                                                                                            <script src="js/jquery.touchwipe.min.js"></script>
                                                                                                                                                                                                                                                                                                                       <script src="js/isotope.pkgd.min.js"></script>
                                                                                                                                                                                                                                                                                                                                                              <script src="js/imagesloaded.pkgd.min.js"></script>
                                                                                                                                                                                                                                                                                                                                                                                                          <script src="js/responsiveslides.js"></script>
                                                                                                                                                                                                                                                                                                                                                                                                                                                 <script src="js/small-icons.js"></script>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   <script src="js/jquery.easing.1.3.js"></script>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           <script src="js/jquery.appear.js"></script>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               <script src="js/fancybox/source/jquery.fancybox.js"></script>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     <script src="js/easy-circle-skill.js"></script>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;sensor=false"></script>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              <script src="https://www.google.com/jsapi"></script>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           <script src="js/TweenMax.min.js"></script>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              <script src="js/ScrollToPlugin.min.js"></script>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       <script src="js/getshar-0.8.0.min.js"></script>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               <script src="js/3d-pie-google.js"></script>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   <script src="js/jquery.jqplot.min.js"></script>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           <script src="js/jqplot.donutRenderer.min.js"></script>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          <script src="js/morris.js"></script>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       <script src="js/dzsparallaxer.js"></script>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           <script src="js/jquery.mCustomScrollbar.js"></script>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         <script src="js/main.js"></script>

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    <script src="js/desoslide/vendor/highlight/highlight.pack.js"></script>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    <script src="js/desoslide/app/demo.js"></script>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             <script src="js/desoslide/jquery.desoslide.min.js"></script>

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  <script type='text/javascript'>
    $(document).ready(function() {
    $('.a').hover(function() {

        $('.b').fadeIn('fast');
        $('.a').fadeOut('slow');

    }, function() {
        $('.b').fadeOut('fast');
        $('.a').fadeIn('fast');
    });
    });

    $(document).ready(function() {
    $('.image-frame').hover(function() {
        $('.image-caption', this).slideToggle('slow');
        $(this).find('img').toggleClass('j_show j_hide');
    }, function() {
        $('.image-caption', this).slideToggle('slow');
        $(this).find('img').toggleClass('j_show j_hide');
    });

    $('.project_box').hover(function() {
        $(this).find('img').toggleClass('h_grayscale f_grayscale');
    });
    });
    </script>
      </body>

        </html>