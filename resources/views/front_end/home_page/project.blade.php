<!-- Design and Build -->
<section id="projects">
    <div class="containet-fluid" style="background:#19253e;">
        <div class="row">
            <div class="col-xs-12 col-sm-6 col-md-6 project_box" style="position: relative;">
                <img src="{{$project[1]->image}}" class="h_grayscale h_grayscale_first"
                     style="max-width: 100%; max-height: 100%; display: block;padding-right:2px;padding-bottom:2px"/>
                <div class="h_grayscale_first_btn"
                     style="cursor: pointer; background:#FFF; color:#3f62af; position: absolute; top: 50%; left: 40%; margin: -25px 0 0 -25px; padding: 6px 30px;"
                     data-toggle="modal" data-target="#popupViewGallery1">
                    {{$project[1]->title}}
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-6" style="position: relative;">
                <div class="row">K
                    <div class="col-xs-12 project_box">
                        <img src="{{$project[2]->image}}" class="h_grayscale"
                             style="max-width: 100%; max-height: 100%; display: block;padding-bottom:2px"/>
                        <div style="cursor: pointer; background:#FFF; color:#3f62af; position: absolute; top: 50%; left: 40%; margin: -25px 0 0 -25px; padding: 6px 30px;"
                             data-toggle="modal" data-target="#popupViewGallery2">
                            {{$project[2]->title}}
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-6 cus_gallery_text_first"
                         style="position: relative;height:375px;">
                        <div class="cus_gallery_text cus_gallery_text_second"
                             style="color: #FFF; padding: 40px 40px 40px 40px;height:416px;padding-bottom:2px">
                            <div>{{$archive->title}}</div>
                            <div class="cus_gallery_text_thirt"
                                 style="margin-top: 20px; font-size: 18px; font-weight: 100; height: 270px; overflow-y: scroll;"
                                 id="style-4">
                                {{$archive->description}}
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-6 project_box" style="position: relative;">
                        <img src="{{$project[3]->image}}" class="h_grayscale h_grayscale_3 cus_gallery_text_second"
                             style="max-width: 100%; max-height: 100%; display: block;height: 375px;width: 100%;padding-bottom:2px"/>
                        <div class="h_grayscale_3_btn"
                             style="cursor: pointer; background:#FFF; color:#3f62af; position: absolute; top: 50%; left: 35%; margin: -25px 0 0 -25px; padding: 6px 30px;"
                             data-toggle="modal" data-target="#popupViewGallery3">
                            {{$project[3]->title}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12 col-sm-6 col-md-6 project_box" style="position: relative;">
                <img src="{{$project[4]->image}}" class="h_grayscale h_grayscale_4"
                     style="max-width: 100%; max-height: 100%; display: block;padding-bottom:2px;padding-right:2px"/>
                <div class="h_grayscale_4_btn"
                     style="cursor: pointer; background:#FFF; color:#3f62af; position: absolute; top: 50%; left: 40%; margin: -25px 0 0 -25px; padding: 6px 30px;"
                     data-toggle="modal" data-target="#popupViewGallery4">
                    {{$project[4]->title}}
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-6 project_box" style="position: relative;">
                <img src="{{$project[5]->image}}" class="h_grayscale h_grayscale_5"
                     style="max-width: 100%; max-height: 100%; display: block;padding-bottom:2px"/>
                <div class="h_grayscale_5_btn"
                     style="cursor: pointer; background:#FFF; color:#3f62af; position: absolute; top: 50%; left: 40%; margin: -25px 0 0 -25px; padding: 6px 30px;"
                     data-toggle="modal" data-target="#popupViewGallery5">
                    {{$project[5]->title}}
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12 col-sm-6 col-md-6">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-6 project_box" style="position: relative;">
                        <img src="{{$project[6]->image}}" class="h_grayscale h_grayscale_6"
                             style="max-width: 100%; max-height: 100%; display: block;padding-right:2px;padding-right:2px"/>
                        <div class="h_grayscale_6_btn"
                             style="cursor: pointer; background:#FFF; color:#3f62af; position: absolute; top: 50%; left: 35%; margin: -25px 0 0 -25px; padding: 6px 30px;"
                             data-toggle="modal" data-target="#popupViewGallery6">
                            {{$project[6]->title}}
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-6 project_box" style=" position: relative;">
                        <img src="{{$project[7]->image}}" class="h_grayscale h_grayscale_6"
                             style="max-width: 100%; max-height: 100%; display: block;padding-right:2px"/>
                        <div class="h_grayscale_7_btn"
                             style="cursor: pointer; background:#FFF; color:#3f62af; position: absolute; top: 50%; left: 35%; margin: -25px 0 0 -25px; padding: 6px 30px;"
                             data-toggle="modal" data-target="#popupViewGallery7">
                            {{$project[7]->title}}
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-6 project_box" style="position: relative;">
                <img src="{{$project[8]->image}}" class="h_grayscale"
                     style="max-width: 100%; max-height: 100%; display: block;"/>
                <div style="cursor: pointer; background:#FFF; color:#3f62af; position: absolute; top: 50%; left: 40%; margin: -25px 0 0 -25px; padding: 6px 30px;"
                     data-toggle="modal" data-target="#popupViewGallery8">
                    {{$project[8]->title}}
                </div>
            </div>
        </div>
    </div>
</section>


@foreach($project as $pro)
    <!-- Modal View Gallery -->
    <div class="modal fade bd-example-modal-lg" tabindex="-1" id="popupViewGallery{{$pro->id}}" role="dialog"
         aria-labelledby="myLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">{{$pro->title}}</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div id="slideshow3" class="col-md-9 col-sm-9 col-xs-12"></div>

                        <div class="col-md-3 col-sm-3 col-xs-12 text-center main_slideshow3_thumbs">
                            <ul id="slideshow3_thumbs" class="desoslide-thumbs-vertical list-inline">
                                @foreach(\App\Models\ProjectImage::where("project",$pro->id)->get() as $row)
                                    <li>
                                        <a href="{{$row->image}}">
                                            <img src="{{$row->image}}"
                                                 style="display: block;padding:5px;width:100%;height: 200px;object-fit: cover;">
                                        </a>
                                    </li>
                                @endforeach
                            </ul>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
@endforeach
