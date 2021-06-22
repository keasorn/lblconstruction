<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="format-detection" content="telephone=no"/>
    <title> LBL Construction</title>
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon"/>
    <link href="http://fonts.googleapis.com/css?family=Raleway:400,800,700,300" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="css/bootstrap.css"/>
    <link rel="stylesheet" href="css/font-awesome.css"/>
    <link rel="stylesheet" href="js/fancybox/source/jquery.fancybox.css"/>
    <link rel="stylesheet" href="css/dzsparallaxer.css"/>
    <link rel="stylesheet" href="css/jquery.mCustomScrollbar.css"/>
    <link rel="stylesheet" href="css/my_style.css"/>
    <link rel="stylesheet" href="css/my_custom.css"/>

    <!-- IE 10-11 style fix -->
    <link rel="stylesheet" type="text/css" href="css/ie10.css"/>
    <link rel="stylesheet" type="text/css" href="css/ie11.css"/>
    <!--[if IE 8]>
    <link rel="stylesheet" type="text/css" href="css/ie8.css"/>
    <![endif]-->

    <link rel="stylesheet" href="css/desoslide/vendor/animate/animate.min.css">
    <link rel="stylesheet" href="css/desoslide/jquery.desoslide.css">


    {{--    <link rel="stylesheet" href="css/so_styles.css"/>--}}
    <link rel="stylesheet" href="css/aos.css"/>

    <!-- add these link link on head --->

    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.9/slick.min.css">
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.9/slick-theme.min.css">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.9/slick.min.js"></script>
    <!---- for icon style------>
    <link href="http://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">



</head>

<script>
    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r;
        i[r] = i[r] || function () {
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

<style>
    .gap-top-bottom{padding:70px 0;}
    .img-box img{width:100%;}
    .text-box h4{font-size:20px}

    /**sec2 style**/
    .sec2{padding:60px 0; border-top:1px solid #d9d9d9;}
    .sec2 h1{color:red;}
    .item-img {
        position: relative;
        transition: all ease-in-out 0.5s;
    }
    .hover-box {
        position: absolute;
        bottom: -100%;

        width: 100%;
        height: 100%;
        transition: all ease-in-out 0.5s;
        opacity: 0;
    }
    .hover-box ul {
        padding-left: 0;
        position: absolute;
        top: 50%;
        width: 100%;
        text-align: center;
        transform: translateY(-50%);
    }
    .hover-box ul li {
        color: gold;
        font-size: 30px;
    }

    .text-box-2 h4{color:#28A745;}
    .text-box-2 p samp{color:red;}
    /***hover**/
    .item-box:hover .hover-box{
        opacity: 1;
        bottom:0;

    }
</style>
<?php
function compress($source)
{

    if (!file_exists(explode(".", $source)[0] . "_10p.jpg")) {
        $info = getimagesize($source);

        if ($info['mime'] == 'image/jpeg')
            $image = imagecreatefromjpeg($source);

        elseif ($info['mime'] == 'image/gif')
            $image = imagecreatefromgif($source);

        elseif ($info['mime'] == 'image/png')
            $image = imagecreatefrompng($source);

        imagejpeg($image, explode(".", $source)[0] . "_10p.jpg", 10);
        imagejpeg($image, explode(".", $source)[0] . "_30p.jpg", 30);
        imagejpeg($image, explode(".", $source)[0] . "_50p.jpg", 50);
        imagejpeg($image, explode(".", $source)[0] . "_70p.jpg", 70);
    }
    return "/" . explode(".", $source)[0] . "_30p.jpg";
}

?>
<body class="front-page">

<div class="company_profile_box">
    <a href="#">
        <i class="fa fa-download" aria-hidden="true"></i> Company Profile
    </a>
</div>
<div class="preloader page-preloader">
    <div class="preload-img"></div>
</div>

<!-- WRAPPER HEADER -->
<div id="nav-anchor"></div>

<div class="container-fluid position-right" id="wrapper">
    <div class="home" id="home"></div>

    <div class="menu_button" onclick="myFunction(this)" style="z-index: 100">
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

    @include("front_end.home_page.slide")
    {{--@include("front_end.home_page.about_us")--}}
    {{--@include("front_end.home_page.design_and_build")--}}
    {{--@include("front_end.home_page.project")--}}
    {{--@include("front_end.home_page.recommend")--}}
    {{--@include("front_end.home_page.careers")--}}
    {{--@include("front_end.home_page.footer")--}}


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
    <script src="http://maps.googleapis.com/maps/api/js?v=3.exp&amp;sensor=false"></script>
    <script src="http://www.google.com/jsapi"></script>
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
        $('.slide1').slick({
            slidesToShow: 4,
            slidesToScroll: 1,
            dots: true,
            responsive: [
                {
                    breakpoint: 1024,
                    settings: {
                        slidesToShow: 3,
                        slidesToScroll: 1,
                        infinite: true,
                        dots: true
                    }
                },
                {
                    breakpoint: 600,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 1
                    }
                },
                {
                    breakpoint: 480,
                    settings: {
                        slidesToShow: 1,
                        slidesToScroll: 1
                    }
                }
                // You can unslick at a given breakpoint now by adding:
                // settings: "unslick"
                // instead of a settings object
            ]
        });

        /**slider 2 js **/
        $('.slider2').slick({
            slidesToShow: 3,
            slidesToScroll: 1,
            dots: true,
            autoplay: true,
            speed: 300,
            responsive: [
                {
                    breakpoint: 1024,
                    settings: {
                        slidesToShow: 3,
                        slidesToScroll: 1,
                        infinite: true,
                        dots: true
                    }
                },
                {
                    breakpoint: 600,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 1
                    }
                },
                {
                    breakpoint: 480,
                    settings: {
                        slidesToShow: 1,
                        slidesToScroll: 1
                    }
                }
                // You can unslick at a given breakpoint now by adding:
                // settings: "unslick"
                // instead of a settings object
            ]
        });


        $(document).ready(function () {
            $('.a').hover(function () {

                $('.b').fadeIn('fast');
                $('.a').fadeOut('slow');

            }, function () {
                $('.b').fadeOut('fast');
                $('.a').fadeIn('fast');
            });
        });

        $(document).ready(function () {
            $('.image-frame').hover(function () {
                $('.image-caption', this).slideToggle('slow');
                $(this).find('img').toggleClass('j_show j_hide');
            }, function () {
                $('.image-caption', this).slideToggle('slow');
                $(this).find('img').toggleClass('j_show j_hide');
            });

            $('.project_box').hover(function () {
                $(this).find('img').toggleClass('h_grayscale f_grayscale');
            });
        });
    </script>

    <script src="js/aos.js"></script>
    <script>
        AOS.init({
            easing: 'ease-in-out-sine'
        });
    </script>
</body>

</html>