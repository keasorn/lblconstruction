<!-- They Recommend Us -->
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
                    <div style="font-size:14px; color:#FFF; font-weight:100;">They worked with us and enjoyed our
                        services
                    </div>
                </div>

                <div class="col-sx-12" style="margin-bottom:60px;">
                    <div class="row" style="color: #FFF; text-align:center;">
                        @if($recommends)
                            @foreach($recommends as $row)
                                <div class="image-frame col-lg-2 col-md-3 col-sm-6">
                                    <div style="padding:30px;">
                                        <img src="{{$row->logo}}" style="width:90%" class="">
                                        <div class="image-caption" style="display: none;">
                                        <span>
                                            {{$row->description}}
                                        </span>
                                            <div>
                                                <i>{{$row->title}}</i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        @endif
                    </div>
                </div>
            </div>

        </div>
    </div>


</section>
<!-- They Recommend Us -->
