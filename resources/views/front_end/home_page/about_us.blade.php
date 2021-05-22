<!-- About Us -->
<section class="cont-box cus-section" id="about-us">
    <div class="container-fluid">
        <div class="background">
            <div class="layer" style="background: url('{{$aboutUs->background}}');"></div>
        </div>

        <div class="container" style="margin-bottom: 80px;">

            <div class="row">
                <div class="col-xs-12 cus_about_mobile"
                     style="text-align:center; padding: 60px 0px; background:url('{{$aboutUs->discover}}') no-repeat center; height: 450px; padding-top: 140px;background-size:cover">
                    <button type="submit" class="btn-default" data-toggle="modal" data-target="#popupAboutUs">{{$aboutUs->title}}
                    </button>
                </div>

                <div class="col-xs-12" style="text-align:center; padding: 0px 0px 60px 0px;">
                    <img src="{{$aboutUs->cover}}" style="width:100%;">
                </div>

                <div class="col-xs-12 main_cus_the_board_of_directior"
                     style="text-align:center;padding: 0px 0px 60px 0px;">
                    <div class="cus_the_board_of_directior"
                         style="font-size: 40px; font-weight: 100; color: #3f62af;">THE BOARD OF DIRECTORS
                    </div>
                </div>
                <div style="color: #3f62af;width:100%;padding: 0px 0px 60px 0px;">
                    <div class="clearfix"></div>
                    @if($teams)
                        @foreach($teams as $row)
                            <div class="tbod" style="width:20%;float:left">
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
