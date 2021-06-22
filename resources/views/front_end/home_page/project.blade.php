<!-- Design and Build -->
<section id="projects" data-color="white">
    <div class="container-fluid" style="background:#19253e;padding-left:0px;padding-right:0px;">

        <div class="row">

            <div class="col-xs-12 col-sm-6 col-md-6 project_box" style="position: relative;">
                <img src="{{$project[1]->image}}" class="h_grayscale"
                     style="max-width: 100%; max-height: 100%; display: block;"/>
                <div style="cursor: pointer; background:#FFF; color:#3f62af; position: absolute; top: 50%; left: 23vw; margin: -25px 0 0 -25px; padding: 6px 30px;"
                     data-toggle="modal" data-target="#popupViewGallery1" class="viewGallery">
                    {{$project[1]->title}}
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-6">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-6 project_box" style=" position: relative;">
                        <img src="{{$project[7]->image}}" class="h_grayscale h_grayscale_7"
                             style="max-width: 100%; max-height: 100%; display: block;padding-right:2px"/>
                        <div
                             style="cursor: pointer; background:#FFF; color:#3f62af; position: absolute; top: 50%; left: 35%; margin: -25px 0 0 -25px; padding: 6px 30px;"
                             data-toggle="modal" data-target="#popupViewGallery7" class="viewGallery">
                            {{$project[7]->title}}
                        </div>
                    </div>

                    <div class="col-xs-12 col-sm-6 col-md-6 project_box" style="position: relative;">
                        <img src="{{$project[5]->image}}" class="h_grayscale h_grayscale_5"
                             style="max-width: 100%; max-height: 100%; display: block;padding-right:2px;padding-right:2px"/>
                        <div
                             style="cursor: pointer; background:#FFF; color:#3f62af; position: absolute; top: 50%; left: 35%; margin: -25px 0 0 -25px; padding: 6px 30px;"
                             data-toggle="modal" data-target="#popupViewGallery5" class="viewGallery">
                            {{$project[5]->title}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">

            <div class="col-xs-12 col-sm-6 col-md-6 project_box" style="position: relative;" data-aos="fade-up">
                <img src="{{$project[4]->image}}" class="h_grayscale"
                     style="max-width: 100%; max-height: 100%; display: block;"/>
                <div style="cursor: pointer; background:#FFF; color:#3f62af; position: absolute; top: 50%; left: 25vw; margin: -25px 0 0 -25px; padding: 6px 29px;"
                     data-toggle="modal" data-target="#popupViewGallery4" class="viewGallery">
                    {{$project[4]->title}}
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-6">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-6 project_box" style=" position: relative;"
                         data-aos="fade-up">
                        <div class="cus_gallery_text cus_gallery_text_second"
                             style="color: #FFF; padding: 40px 40px 40px 40px;padding-bottom:2px">
                            <div>{{$archive->title}}</div>
                            <div class="cus_gallery_text_thirt"
                                 style="margin-top: 20px; font-size: 18px; font-weight: 100; height: 30vh; overflow-y: scroll;scrollbar-width: thin;"
                                 id="style-4">
                                {{$archive->description}}
                            </div>
                        </div>
                    </div>

                    <div class="col-xs-12 col-sm-6 col-md-6 project_box" style="position: relative;"
                         data-aos="fade-up">
                        <img src="{{$project[3]->image}}" class="h_grayscale h_grayscale_6"
                             style="max-width: 100%; max-height: 100%; display: block;padding-right:2px;padding-right:2px"/>
                        <div
                             style="cursor: pointer; background:#FFF; color:#3f62af; position: absolute; top: 50%; left: 40%; margin: -25px 0 0 -25px; padding: 6px 29px;"
                             data-toggle="modal" data-target="#popupViewGallery3" class="viewGallery">
                            {{$project[3]->title}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12 col-sm-6 col-md-6 project_box" style="position: relative;" data-aos="fade-up">
                <img src="{{$project[6]->image}}" class="h_grayscale h_grayscale_4"
                     style="max-width: 100%; max-height: 100%; display: block;padding-bottom:2px;padding-right:2px"/>
                <div
                     style="cursor: pointer; background:#FFF; color:#3f62af; position: absolute; top: 50%; left: 40%; margin: -25px 0 0 -25px; padding: 6px 30px;"
                     data-toggle="modal" data-target="#popupViewGallery4" class="viewGallery">
                    {{$project[6]->title}}
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-6 project_box" style="position: relative;" data-aos="fade-up">
                <img src="{{$project[8]->image}}" class="h_grayscale h_grayscale_5"
                     style="max-width: 100%; max-height: 100%; display: block;padding-bottom:2px"/>
                <div
                     style="cursor: pointer; background:#FFF; color:#3f62af; position: absolute; top: 50%; left: 40%; margin: -25px 0 0 -25px; padding: 6px 30px;"
                     data-toggle="modal" data-target="#popupViewGallery5" class="viewGallery">
                    {{$project[8]->title}}
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Modal View Gallery -->
@foreach($project as $pro)
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
                    <div class="item">
                        <div class="clearfix" style="max-width:100%;height: 80vh">
                            <ul id="image-gallery{{$pro->id}}" class="gallery list-unstyled cS-hidden">
                                @foreach(\App\Models\ProjectImage::where("project",$pro->id)->get() as $row)
                                    <li data-thumb="{{$row->image}}">
                                        <img src="{{$row->image}}"/>
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

