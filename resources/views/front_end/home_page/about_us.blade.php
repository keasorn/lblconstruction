<!-- About Us -->
<!-- title-blogtop -->
<img src="images/logo_footer.svg" style="position: fixed;width: 20px">
<section class="cont-box cus-section" data-color="blue" id="about-us">

    <!-- / title-blogtop -->
    <div class="container-fluid">
        <div class="background" data-aos="fade-up">
            <div class="layer" style="background: url('{{$aboutUs->background}}');"></div>
        </div>

        <div class="container" style="margin-bottom: 80px;">

            <div class="row width-700">
                <div class="cus_about_mobile" data-aos="fade-up"
                     style="text-align:center; padding: 60px 0px; background:url('/uploading/files/discover1.png') no-repeat center; height: 450px; padding-top: 140px;background-size:cover">
                    <a href="#none" class="btn-default btn-about" data-toggle="modal" data-target="#popupAboutUs">ABOUT
                        US
                    </a>
                </div>
                <img src="/images/02_AboutUs_Discover-LBL_left01.gif"
                     style="width: 284px;
    position: relative;
    top: -505px;
    left: -16px;" data-aos-easing="ease-out-cubic" data-aos-duration="1000"
                     data-aos="fade-right">
                <img src="/images/02_AboutUs_Discover-LBL_left02.gif" data-aos-easing="ease-out-cubic"
                     data-aos-duration="1500" data-aos="fade-right"
                     style="    width: 284px;
    position: relative;
    top: -320px;
    left: -205px;

                            ">
                <img src="/images/02_AboutUs_Discover-LBL_right01.gif"
                     style="    width: 313px;
    position: relative;
    top: -500px;
    right: -350px;

" data-aos-easing="ease-out-cubic" data-aos-duration="1000" data-aos="fade-left">

                <img src="/images/02_AboutUs_Discover-LBL_right02.gif"
                     style="    width: 313px;
    position: relative;
    top: -500px;
    right: -800px;" data-aos-easing="ease-out-cubic" data-aos-duration="1500" data-aos="fade-left">

                <img src="/images/about_bg.png" class="display-mobile" alt="" style="width:100%;    position: relative;    top: -440px;">
                <img data-aos="fade-up" src="{{$aboutUs->cover}}" data-aos-duration="500"
                     style="width:100%;    position: relative;    top: -440px;">
            </div>
        </div>
    </div>

</section>
<!-- / About Us -->


<!-- Modal About Us -->
<div class="modal fade bd-example-modal-lg" id="popupAboutUs" tabindex="-1" role="dialog"
     aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content popupAboutUsContant">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">{{$aboutUs->title}}</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>
                    {{$aboutUs->description}}
                </p>
            </div>
        </div>
    </div>
</div>
