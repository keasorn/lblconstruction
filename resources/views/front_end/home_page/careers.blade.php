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
                    <div style="font-size: 30px; font-weight: 100; color: #FFF;">You can work for us</div>
                </div>

                <div class="col-sx-12">
                    <div class="clearfix"></div>

                    <div class='row'>
                        <div class='col-md-12'>
                            <section class="customer-logos slider">
                                @for($i=1;$i<=8;$i++)
                                    <div class="slide">
                                        <div class="row">
                                            <div style="font-weight:bold;" class="text-white">CONTRACT MANAGER
                                            </div>
                                            <div style="font-weight:100; margin-top:0px;" class="text-white">
                                                Phnom Penh, Cambodia<br/> Full-time
                                                <br/> Posted 2 weeks ago
                                            </div>

                                        </div>
                                    </div>
                                @endfor
                            </section>

                        </div>
                    </div>
                    <!-- /carusel-4 -->
                    <center>
                        <button type="submit" class="btn-default"
                                style="padding: 3px 40px 0 40px;margin-top:50px;margin-bottom:90px" data-toggle="modal"
                                data-target="#popupCareer">
                            More
                        </button>
                    </center>

                </div>

            </div>
        </div>
    </div>
</section>
<!-- They Recommend Us -->

<!-- Modal Career -->
<div class="modal fade" id="popupCareer" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
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
                    @for($i=1;$i<=10;$i++)
                        <div class="col-xs-12 col-sm-6 col-md-6 popupCareerText">
                            <div style="font-weight:bold;">CONTRACT MANAGER #{{$i}}</div>
                            <div style="font-weight:100; margin-top:0px;">
                                Phnom Penh, Cambodia<br/> Full-time
                                <br/> Posted 2 weeks ago
                            </div>
                        </div>
                    @endfor
                </div>
            </div>

        </div>
    </div>
</div>
