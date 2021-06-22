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

            <div class="row">
                <div class="cus_about_mobile" data-aos="fade-up"
                     style="text-align:center; padding: 60px 0px; background:url('{{$aboutUs->discover}}') no-repeat center; height: 450px; padding-top: 140px;background-size:cover">
                    <a href="#none" class="btn-default btn-about" data-toggle="modal" data-target="#popupAboutUs">ABOUT
                        US
                    </a>
                </div>

                <div class="col-xs-12" data-aos="fade-up" style="text-align:center; padding: 0px 0px 0px 0px;">
                    <img src="{{$aboutUs->cover}}" style="width:100%;    position: relative;top: -100px;">
                </div>

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
