
<!-- Gallery -->

<section id="projects">
    <div class="containet-fluid" style="background:#19253e;">
        <div class="row">
            <div class="col-xs-12 col-sm-6 col-md-6 project_box" style="position: relative;">
                <img src="{{compress('images/p1.png')}}" class="h_grayscale h_grayscale_first"
                     style="max-width: 100%; max-height: 100%; display: block;padding-right:2px;padding-bottom:2px"/>
                <div class="h_grayscale_first_btn"
                     style="cursor: pointer;background: #18253ede;color: #ffffff;position: absolute;top: 40%;left: 12vw;/* margin: auto; */padding: 5%;border-radius: 12px;font-size: 26px;"
                     data-toggle="modal" data-target="#popupViewGallery">
                    HOTEL &amp; RESORTS
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-6" style="position: relative;">
                <div class="row">
                    <div class="col-xs-12 project_box">
                        <img src="{{compress('images/p2.png')}}" class="h_grayscale"
                             style="max-width: 100%; max-height: 100%; display: block;padding-bottom:2px"/>
                        <div style="cursor: pointer;background: #18253ede;color: #ffffff;position: absolute;top: 40%;left: 40%;/* margin: auto; */padding: 5%;border-radius: 12px;font-size: 26px;"
                             data-toggle="modal" data-target="#popupViewGallery">
                            INDUSTRIAL
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-6 cus_gallery_text_first"
                         style="position: relative;height:300px;">
                        <div class="cus_gallery_text cus_gallery_text_second"
                             style="color: #FFF; padding: 40px 40px 40px 40px;height:416px;padding-bottom:2px">
                            <div>SUCCESS IN ALL SECTORS OF THE CONSTRUCTION FIELDS</div>
                            <div class="cus_gallery_text_thirt"
                                 style="margin-top: 20px; font-size: 18px; font-weight: 100; height: 200px; overflow-y: scroll;"
                                 id="style-4">
                                <p>As a construction leader, LBL meets the clients' needs from concept to turnkey
                                    solutions on a wide-ranging array of building requirements. These include
                                    large-scale projects such as embassies, luxury hotels, modern
                                    office structures, prestigius villas, expansive humanitarian projects as well as
                                    commercial buidings and towers across Cambodia and beyond.</p>
                                <p>Moving onward, LBL will continue to provide excellence in our service and top quality
                                    results for an ever-demanding construction sector, as it pursues its expansion in
                                    Cambodia and Southeast Asia.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-6 project_box" style="position: relative;">
                        <img src="images/p3.png" class="h_grayscale h_grayscale_3 cus_gallery_text_second"
                             style="max-width: 100%; max-height: 100%; display: block;height: 320px;width: 100%;padding-bottom:2px"/>
                        <div class="h_grayscale_3_btn"
                             style="cursor: pointer;background: #18253ede;color: #ffffff;position: absolute;top: 40%;left: 25%;/* margin: auto; */padding: 5%;border-radius: 12px;font-size: 26px;"
                             data-toggle="modal" data-target="#popupViewGallery">
                            EMBASSIES
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12 col-sm-6 col-md-6 project_box" style="position: relative;">
                <img src="{{compress('images/p4.png')}}" class="h_grayscale h_grayscale_4"
                     style="max-width: 100%; max-height: 100%; display: block;padding-bottom:2px;padding-right:2px"/>
                <div class="h_grayscale_4_btn"
                     style="cursor: pointer;background: #18253ede;color: #ffffff;position: absolute;top: 40%;left: 30%;/* margin: auto; */padding: 5%;border-radius: 12px;font-size: 26px;"
                     data-toggle="modal" data-target="#popupViewGallery">
                    SCHOOLS &amp; HOSPITALS
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-6 project_box" style="position: relative;">
                <img src="{{compress('images/p5.png')}}" class="h_grayscale h_grayscale_5"
                     style="max-width: 100%; max-height: 100%; display: block;padding-bottom:2px"/>
                <div class="h_grayscale_5_btn"
                     style="cursor: pointer;background: #18253ede;color: #ffffff;position: absolute;top: 40%;left: 40%;/* margin: auto; */padding: 5%;border-radius: 12px;font-size: 26px;"
                     data-toggle="modal" data-target="#popupViewGallery">
                    RESIDENTAIL
                </div>
            </div>
        </div>
    </div>
</section>
<!--End Gallery -->

<!-- Modal View Gallery -->
<div class="modal fade bd-example-modal-lg" tabindex="-1" id="popupViewGallery" role="dialog"
     aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Images</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div id="slideshow3" class="col-md-9 col-sm-9 col-xs-12"></div>

                    <div class="col-md-3 col-sm-3 col-xs-12 text-center main_slideshow3_thumbs">
                        <ul id="slideshow3_thumbs" class="desoslide-thumbs-vertical list-inline">
                            <li>
                                <a href="{{compress('images/p1.png')}}">
                                    <img src="{{compress('images/p1.png')}}" alt="no image"
                                         style="display: block;padding:5px;width:100%;height: 200px;object-fit: cover;">
                                </a>
                            </li>
                            <li>
                                <a href="images/p2.png">
                                    <img src="{{compress('images/p2.png')}}" alt="no image"
                                         style="display: block;padding:5px;width:100%;height: 200px;object-fit: cover;">
                                </a>
                            </li>
                            <li>
                                <a href="images/p3.png">
                                    <img src="{{compress('images/p3.png')}}" alt="no image"
                                         style="display: block;padding:5px;width:100%;height: 200px;object-fit: cover;">
                                </a>
                            </li>
                            <li>
                                <a href="images/p4.png">
                                    <img src="{{compress('images/p4.png')}}" alt="no image"
                                         style="display: block;padding:5px;width:100%;height: 200px;object-fit: cover;">
                                </a>
                            </li>
                        </ul>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
