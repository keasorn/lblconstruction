
<section class="text-center" style="background: white;" data-color="blue">
    <div class="clearfix"></div>
    <br>
    <div class="row" style="padding: 90px 0px;">
        <div class="row col-md-offset-3">
            <div class="col-sm-4">
                <div style="font-size: 40px; font-weight: 100; color: #3f62af;">Awards</div>
                <div class="row slick-blue slide2">
                    @foreach($awards as $row)
                        <div class="col-xs-12 col-sm-12 col-md-12 cus_footer_logo_list"
                             style="text-align: left; margin-top: 20px;">
                            <div><img src="images/Icon feather-award.svg"></div>
                            <div style="font-weight:100; margin-top:20px; color: #3f62af;">
                                "{{$row->title}}"<br> {{$row->description}}
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
            <div class="col-sm-5">
                <div style="font-size: 40px; font-weight: 100; color: #3f62af;">Media</div>
                <div class="row slick-blue slide3">
                    @foreach($media as $row)
                        <div class="col-xs-12 col-sm-12 col-md-12 cus_footer_logo_list"
                             style="text-align: left; margin-top: 20px;">
                            <div><img src="images/Icon feather-award.svg"></div>
                            <div style="font-weight:100; margin-top:20px; color: #3f62af;">
                                "{{$row->title}}"<br> {{$row->description}}
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
        <div class="clearfix"></div>
        <br>
        <br>
        <br>
        <div class="text-center" style="font-size:20px; font-weight: 100;  color: #3f62af;">"Credibility and confidence gained
            through completion"
        </div>
    </div>
</section>