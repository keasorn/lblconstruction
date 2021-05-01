<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="format-detection" content="telephone=no"/>
    <title>LBL Construction</title>
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon"/>
    <link href="http://fonts.googleapis.com/css?family=Raleway:400,800,700,300" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="css/bootstrap.css"/>
    <link rel="stylesheet" href="css/font-awesome.css"/>
    <link rel="stylesheet" href="css/style.css"/>
    <link rel="stylesheet" href="css/custom.css"/>


    <link rel="stylesheet" href="css/desoslide/vendor/animate/animate.min.css">
    <link rel="stylesheet" href="css/desoslide/jquery.desoslide.css">


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
        .bg-left {
            background: linear-gradient(rgba(0,0,0,.7), rgba(0,0,0,.7)), url("https://unsplash.imgix.net/photo-1416339442236-8ceb164046f8?q=75&fm=jpg&s=8eb83df8a744544977722717b1ea4d09");
        }

        /*-----------------*/
    </style>
    <style>
        #team {
            background: #eee !important;
        }

        .btn-primary:hover,
        .btn-primary:focus {
            background-color: #108d6f;
            border-color: #108d6f;
            box-shadow: none;
            outline: none;
        }

        .btn-primary {
            color: #fff;
            background-color: #007b5e;
            border-color: #007b5e;
        }

        .cus-section {
            padding: 60px 0;
        }

        section .section-title {
            text-align: center;
            color: #007b5e;
            margin-bottom: 50px;
            text-transform: uppercase;
        }

        #team .card {
            border: none;
            background: #ffffff;
        }

        .image-flip:hover .backside,
        .image-flip.hover .backside {
            -webkit-transform: rotateY(0deg);
            -moz-transform: rotateY(0deg);
            -o-transform: rotateY(0deg);
            -ms-transform: rotateY(0deg);
            transform: rotateY(0deg);
            border-radius: .25rem;
        }

        .image-flip:hover .frontside,
        .image-flip.hover .frontside {
            -webkit-transform: rotateY(180deg);
            -moz-transform: rotateY(180deg);
            -o-transform: rotateY(180deg);
            transform: rotateY(180deg);
        }

        .mainflip {
            -webkit-transition: 1s;
            -webkit-transform-style: preserve-3d;
            -ms-transition: 1s;
            -moz-transition: 1s;
            -moz-transform: perspective(1000px);
            -moz-transform-style: preserve-3d;
            -ms-transform-style: preserve-3d;
            transition: 1s;
            transform-style: preserve-3d;
            position: relative;
        }

        .frontside {
            position: relative;
            -webkit-transform: rotateY(0deg);
            -ms-transform: rotateY(0deg);
            z-index: 2;
            margin-bottom: 30px;
        }

        .backside {
            position: absolute;
            top: 0;
            left: 0;
            background: white;
            -webkit-transform: rotateY(-180deg);
            -moz-transform: rotateY(-180deg);
            -o-transform: rotateY(-180deg);
            -ms-transform: rotateY(-180deg);
            transform: rotateY(-180deg);
            -webkit-box-shadow: 5px 7px 9px -4px rgb(158, 158, 158);
            -moz-box-shadow: 5px 7px 9px -4px rgb(158, 158, 158);
            box-shadow: 5px 7px 9px -4px rgb(158, 158, 158);
        }

        .frontside,
        .backside {
            -webkit-backface-visibility: hidden;
            -moz-backface-visibility: hidden;
            -ms-backface-visibility: hidden;
            backface-visibility: hidden;
            -webkit-transition: 1s;
            -webkit-transform-style: preserve-3d;
            -moz-transition: 1s;
            -moz-transform-style: preserve-3d;
            -o-transition: 1s;
            -o-transform-style: preserve-3d;
            -ms-transition: 1s;
            -ms-transform-style: preserve-3d;
            transition: 1s;
            transform-style: preserve-3d;
            padding: 20px;
        }

        .frontside .card,
        .backside .card {
            min-height: 312px;
        }

        .backside .card a {
            font-size: 18px;
            color: #007b5e !important;
        }

        .frontside .card .card-title,
        .backside .card .card-title {
            color: #007b5e !important;
        }

        .frontside .card .card-body img {
            width: 120px;
            height: 120px;
            border-radius: 50%;
        }

        .text-white {
            color: #ffffff;
        }
        .media-carousel
        {
            margin-bottom: 0;
            padding: 0 40px 30px 40px;
            margin-top: 30px;
        }
        /* Previous button  */
        .media-carousel .carousel-control.left
        {
            left: -12px;
            background-image: none;
            background: none repeat scroll 0 0 #222222;
            border: 4px solid #FFFFFF;
            border-radius: 23px 23px 23px 23px;
            height: 40px;
            width : 40px;
            margin-top: 30px
        }
        /* Next button  */
        .media-carousel .carousel-control.right
        {
            right: -12px !important;
            background-image: none;
            background: none repeat scroll 0 0 #222222;
            border: 4px solid #FFFFFF;
            border-radius: 23px 23px 23px 23px;
            height: 40px;
            width : 40px;
            margin-top: 30px
        }
        /* Changes the position of the indicators */
        .media-carousel .carousel-indicators
        {
            right: 50%;
            top: auto;
            bottom: 0px;
            margin-right: -19px;
        }
        /* Changes the colour of the indicators */
        .media-carousel .carousel-indicators li
        {
            background: #c0c0c0;
        }
        .media-carousel .carousel-indicators .active
        {
            background: #333333;
        }
        .media-carousel img
        {
            width: 250px;
            height: 100px
        }
    </style>
</head>

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

    <div class="menu_button" onclick="myFunction(this)">
        <div class="bar1"></div>
        <div class="bar2"></div>
        <div class="bar3"></div>
    </div>
    @include("front_end.home_page.primary_header")
    @include("front_end.home_page.about_us")
    @include("front_end.home_page.design_and_build")
    @include("front_end.home_page.gallery")
    @include("front_end.home_page.careers")

    @include("front_end.home_page.footer")

</div>
<!-- / wrapper-->

<script src="js/jquery-1.11.2.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/responsiveslides.js"></script>

<link rel="stylesheet" href="css/jquery.mCustomScrollbar.css" />
<script src="js/main.js"></script>


<script src="js/desoslide/vendor/highlight/highlight.pack.js"></script>
<script src="js/desoslide/app/demo.js"></script>
<script src="js/desoslide/jquery.desoslide.min.js"></script>

<script type='text/javascript'>
    function myFunction(x) {
        x.classList.toggle("change");
        $("#menu").fadeToggle();
        $("#my_home_scroll").fadeToggle();
        $("#my_home_text").fadeToggle();
        $("#my_home_scroll").fadeToggle();
    }
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
</body>

</html>
