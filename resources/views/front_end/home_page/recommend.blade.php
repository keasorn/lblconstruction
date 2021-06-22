<!-- They Recommend Us -->
<section id="they-recommend-us" data-color="blue">
    <div class="container-fluid">
        <div class="clearfix"></div>
        <div class="background">
            {{--            <div class="layer" style="background: url(images/design_build_bg.png);"></div>--}}
            <div class="layer" style="background:  white;"></div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-xs-12" style="text-align:center; padding: 60px 0px 40px 0px;">
                    <div style="font-size: 40px; font-weight: 100; color: #FFF;" class="text-blue">They recommend us
                    </div>
                    <div style="font-size:14px; color:#FFF; font-weight:100;" class="text-blue">They worked with us and
                        enjoyed our
                        services
                    </div>
                </div>
                <div class="col-sx-12" style="margin-top:200px;margin-bottom:100px;">
                    <div class="row align-items-center" style="color: #FFF; text-align:center; margin: 0 auto;">
                        @if($recommends)
                            @foreach($recommends as $row)
                                <div class="col-sm-12 cus_recom" style="width: 14.2%">
                                    <img src="{{$row->logo}}" style="width:80%" class="">
                                </div>
                            @endforeach
                        @endif
                    </div>
                </div>
            </div>
        </div>
        <div class="row" style="padding: 0px 90px 90px 90px;">
            <div class="col-md-3"><h5 class="text-sh">“Lorem ipsum testimonials 01”</h5></div>
            <div class="col-md-3"><h5 class="text-sh">“Lorem ipsum testimonials 01”</h5></div>
            <div class="col-md-3"><h5 class="text-sh">“Lorem ipsum testimonials 01”</h5></div>
            <div class="col-md-3"><h5 class="text-sh">“Lorem ipsum testimonials 01”</h5></div>
        </div>
    </div>


</section>
<!-- They Recommend Us -->
