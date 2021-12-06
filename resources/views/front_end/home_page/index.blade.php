<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="format-detection" content="telephone=no"/>
    <title> LBL Construction</title>
    <link rel="shortcut icon" href="{{$header->logo}}" type="image/x-icon"/>
    <link rel="stylesheet" href="css/bootstrap.css"/>
    <link rel="stylesheet" href="css/font-awesome.css"/>
    <link rel="stylesheet" href="js/fancybox/source/jquery.fancybox.css"/>
    <link rel="stylesheet" href="css/dzsparallaxer.css"/>
    <link rel="stylesheet" href="css/jquery.mCustomScrollbar.css"/>

    <!-- add these link link on head --->

    <script src="/js/jquery-1.11.2.min.js"></script>
    <link rel="stylesheet" href="/ajax/libs/slick-carousel/slick.min.css">
    <link rel="stylesheet" href="/ajax/libs/slick-carousel/slick-theme.min.css">
    <script src="/ajax/libs/slick-carousel/slick.min.js"></script>
    <!---- for icon style------>
    <link href="http://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
          integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

    <link rel="stylesheet" href="/css/lightslider.css"/>
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


</head>
<style>
    html {
        scroll-behavior: smooth;
    }

    ul {
        list-style: none outside none;
        padding-left: 0;
        margin: 0;
    }

    .demo .item {
        margin-bottom: 60px;
    }

    .content-slider li {
        background-color: #ed3020;
        text-align: center;
        color: #FFF;
    }

    .content-slider h3 {
        margin: 0;
        padding: 70px 0;
    }

    .demo {
        width: 800px;
    }
</style>

<style>
    .color-blue {
        background-image: url('/images/logo-blue.png');
    }

    .color-blue:hover {
        background-image: url('/images/logo-blue-over.png');
    }

    .color-white, .color-undefined {
        background-image: url('/images/logo-w.png');
    }

    .color-white:hover, .color-undefined:hover {
        background-image: url('/images/logo-w-over.png');
    }

    .width-700{
        height: 700px;
    }
    .display-mobile{
        display: none;
    }

    @media only screen and (max-width: 1200px) {
        .display-mobile{
            display: block;
        }
        .cus_about_mobile{
            display: none;
        }
        .width-700{
            height: 300px !important;
        }
    }
    @media only screen and (max-width: 500px) {


        .cont-box{
            padding-top: 0px !important;
        }
    }

</style>

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


<script>
    $(window).load(function () {
        $('.preloader').fadeOut('slow', function () {
            $(this).remove();
        });
    });

    $(window).scroll(function () {
        // selectors
        var $window = $(window),
            $body = $('.logo-fixed'),
            $panel = $('section');

        // Change 33% earlier than scroll position so colour is there when you arrive.
        var scroll = $window.scrollTop() + ($window.height() / 8);

        $panel.each(function () {
            var $this = $(this);
            // alert($this);
            // if position is within range of this panel.
            // So position of (position of top of div <= scroll position) && (position of bottom of div > scroll position).
            // Remember we set the scroll to 33% earlier in scroll var.
            if ($this.position().top <= scroll && $this.position().top + $this.height() > scroll) {

                // Remove all classes on body with color-
                $body.removeClass(function (index, css) {
                    return (css.match(/(^|\s)color-\S+/g) || []).join(' ');
                });

                // Add class of currently active div
                $body.addClass('color-' + $(this).data('color'));
            }
        });

    }).scroll();
</script>

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

<body class="front-page">

<div class="company_profile_box">
    <a href="{{$profileCompany}}" target="_blank">
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

    <div class="menu_button menu-fixed" onclick="myFunction(this)">
        <div class="bar1"></div>
        <div class="bar2"></div>
        <div class="bar3"></div>
    </div>

    @include("front_end.home_page.primary_header")
    @include("front_end.home_page.about_us")
    @include("front_end.home_page.design_and_build")
    @include("front_end.home_page.project")
    @include("front_end.home_page.recommend")
    @include("front_end.home_page.board_director")
    @include("front_end.home_page.award")
    @include("front_end.home_page.careers")
    @include("front_end.home_page.footer")



    {{--    <script src="http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.2/raphael-min.js"></script>--}}
    <script src="js/bootstrap.js"></script>
    {{--    <script src="js/bootstrap-tabcollapse.js"></script>--}}
    {{--    <script src="js/jquery.carouFredSel-6.2.1-packed.js"></script>--}}
    {{--    <script src="js/jquery.touchwipe.min.js"></script>--}}
    {{--    <script src="js/isotope.pkgd.min.js"></script>--}}
    {{--    <script src="js/imagesloaded.pkgd.min.js"></script>--}}
    {{--    <script src="js/responsiveslides.js"></script>--}}
    {{--    <script src="js/small-icons.js"></script>--}}
    {{--    <script src="js/jquery.easing.1.3.js"></script>--}}
    {{--    <script src="js/jquery.appear.js"></script>--}}
    {{--    <script src="js/fancybox/source/jquery.fancybox.js"></script>--}}
    {{--    <script src="js/easy-circle-skill.js"></script>--}}
    {{--    <script src="js/TweenMax.min.js"></script>--}}
    {{--    <script src="js/ScrollToPlugin.min.js"></script>--}}
    {{--    <script src="js/getshar-0.8.0.min.js"></script>--}}
    {{--    <script src="js/3d-pie-google.js"></script>--}}
    {{--    <script src="js/jquery.jqplot.min.js"></script>--}}
    {{--    <script src="js/jqplot.donutRenderer.min.js"></script>--}}
    {{--    <script src="js/morris.js"></script>--}}
    {{--    <script src="js/dzsparallaxer.js"></script>--}}
    {{--    <script src="js/jquery.mCustomScrollbar.js"></script>--}}
    {{--    <script src="js/main.js"></script>--}}
    <script src="/js/lightslider.js"></script>

    <script src="js/desoslide/vendor/highlight/highlight.pack.js"></script>
    <script src="js/desoslide/app/demo.js"></script>
    <script src="js/desoslide/jquery.desoslide.min.js"></script>

    <script src="js/aos.js"></script>
    <script src="js/my_script.js"></script>

    <script>
        $(document).ready(function () {
            $('#image-gallery1').lightSlider({
                gallery: true,
                item: 1,
                thumbItem: 9,
                slideMargin: 0,
                speed: 500,
                auto: false,
                loop: false,
                onSliderLoad: function () {
                    $('#image-gallery1').removeClass('cS-hidden');
                }
            });
            $('#image-gallery2').lightSlider({
                gallery: true,
                item: 1,
                thumbItem: 9,
                slideMargin: 0,
                speed: 500,
                auto: false,
                loop: false,
                onSliderLoad: function () {
                    $('#image-gallery2').removeClass('cS-hidden');
                }
            });
            $('#image-gallery3').lightSlider({
                gallery: true,
                item: 1,
                thumbItem: 9,
                slideMargin: 0,
                speed: 500,
                auto: false,
                loop: false,
                onSliderLoad: function () {
                    $('#image-gallery3').removeClass('cS-hidden');
                }
            });
            $('#image-gallery4').lightSlider({
                gallery: true,
                item: 1,
                thumbItem: 9,
                slideMargin: 0,
                speed: 500,
                auto: false,
                loop: false,
                onSliderLoad: function () {
                    $('#image-gallery4').removeClass('cS-hidden');
                }
            });
            $('#image-gallery5').lightSlider({
                gallery: true,
                item: 1,
                thumbItem: 9,
                slideMargin: 0,
                speed: 500,
                auto: false,
                loop: false,
                onSliderLoad: function () {
                    $('#image-gallery5').removeClass('cS-hidden');
                }
            });
            $('#image-gallery6').lightSlider({
                gallery: true,
                item: 1,
                thumbItem: 9,
                slideMargin: 0,
                speed: 500,
                auto: false,
                loop: false,
                onSliderLoad: function () {
                    $('#image-gallery6').removeClass('cS-hidden');
                }
            });
            $('#image-gallery7').lightSlider({
                gallery: true,
                item: 1,
                thumbItem: 9,
                slideMargin: 0,
                speed: 500,
                auto: false,
                loop: false,
                onSliderLoad: function () {
                    $('#image-gallery7').removeClass('cS-hidden');
                }
            });
        });
        $(".viewGallery").click(function () {
            $(window).resize();
            $(window).resize();

        });
    </script>
</div>
</body>
</body>

</html>