<!-- About Us -->
<!-- title-blogtop -->
<img src="images/logo_footer.svg" style="position: fixed;width: 20px">
<section class="cont-box cus-section" data-color="blue" id="about-us" style="background:#f0f0f0;">

    <!-- / title-blogtop -->
    <div class="container-fluid">
        <div class="background">
            <div class="layer"></div>
        </div>

        <div class="container" style="margin-bottom: 80px;">

                <div class="col-xs-12 main_cus_the_board_of_directior"
                     style="text-align:center;padding: 0px 0px 0px 0px;">
                    <div class="cus_the_board_of_directior"
                         style="font-size: 40px; font-weight: 100; color: #3f62af;">THE BOARD OF DIRECTORS
                    </div>

                </div>

                <div class="col-xs-12" data-aos="fade-up" data-aos-delay="300"
                     style="text-align:center; padding: 0px 0px 0px 0px; position: relative">
                    <img src="{{$aboutUs->over_cover}}" style="width:100%;">
                </div>
                <div style="color: #3f62af;width:100%;padding: 0px 0px 60px 0px;" data-aos="fade-up">
                    <div class="clearfix"></div>
                    @if($teams)
                        @foreach($teams as $row)
                            <div class="tbod" style="width:16.66%;float:left">
                                <b>{{$row->first_name}}</b><br>
                                <b>{{$row->last_name}}</b>
                                <p>
                                    {{$row->position}}
                                </p>
                            </div>
                        @endforeach
                    @endif

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
