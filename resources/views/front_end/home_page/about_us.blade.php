
<!-- About Us -->
<section class="cont-box cus-section" id="about-us">
    <div class="container-fluid">
        <div class="background">
            <div class="layer" style="background: url('images/about.png');"></div>
        </div>

        <div class="container">

            <div class="row">
                <div class="col-xs-12 cus_about_mobile"
                     style="text-align:center; padding: 60px 0px; background:url('images/about_bg.png') no-repeat center; height: 450px; padding-top: 140px;background-size:cover">
                    <button type="submit" class="btn-default" data-toggle="modal" data-target="#popupAboutUs">About
                        Us
                    </button>
                </div>

                <div class="col-xs-12" style="text-align:center; padding: 0px 0px 60px 0px;">
                    <img src="{{compress('images/about_img.png')}}" style="width:100%;">
                </div>

                <div class="col-xs-12 main_cus_the_board_of_directior"
                     style="text-align:center; padding: 0px 0px 60px 0px;">
                    <div class="cus_the_board_of_directior"
                         style="font-size: 40px; font-weight: 100; color: #3f62af;">THE BOARD OF DIRECTORS
                    </div>
                </div>

                <div class="col-sx-12">
                    <div class="clearfix"></div>


                    <div class="row">
                    @for($i=1;$i<=6;$i++)
                        <!-- Team member -->
                            <div class="col-xs-12 col-sm-6 col-md-4">
                                <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                                    <div class="mainflip">
                                        <div class="frontside">
                                            <div class="card">
                                                <div class="card-body text-center">
                                                    <p><img class=" img-fluid"
                                                            src="/uploading/profile/board1.png"
                                                            alt="card image"></p>
                                                    <h4 class="card-title">Name number#{{$i}}</h4>
                                                    <p class="card-text">Summary Info #{{$i}}</p>
                                                    <a href="https://www.fiverr.com/share/qb8D02"
                                                       class="btn btn-primary btn-sm"><i class="fa fa-plus text-white"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="backside">
                                            <div class="card">
                                                <div class="card-body text-center mt-4">
                                                    <h4 class="card-title">Name number#{{$i}}</h4>
                                                    <p class="card-text">Detail body {{$i}}</p>
                                                    <ul class="list-inline">
                                                        <li class="list-inline-item">
                                                            <a class="social-icon text-xs-center"
                                                               target="_blank"
                                                               href="https://www.fiverr.com/share/qb8D02">
                                                                <i class="fa fa-facebook"></i>
                                                            </a>
                                                        </li>
                                                        <li class="list-inline-item">
                                                            <a class="social-icon text-xs-center"
                                                               target="_blank"
                                                               href="https://www.fiverr.com/share/qb8D02">
                                                                <i class="fa fa-twitter"></i>
                                                            </a>
                                                        </li>
                                                        <li class="list-inline-item">
                                                            <a class="social-icon text-xs-center"
                                                               target="_blank"
                                                               href="https://www.fiverr.com/share/qb8D02">
                                                                <i class="fa fa-skype"></i>
                                                            </a>
                                                        </li>
                                                        <li class="list-inline-item">
                                                            <a class="social-icon text-xs-center"
                                                               target="_blank"
                                                               href="https://www.fiverr.com/share/qb8D02">
                                                                <i class="fa fa-google"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- ./Team member -->
                        @endfor
                    </div>
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
                <h5 class="modal-title" id="exampleModalLabel">About Us</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>
                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the
                    industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type
                    and scrambled it to make a type specimen book. It has
                    survived not only five centuries, but also the leap into electronic typesetting, remaining
                    essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets
                    containing Lorem Ipsum passages, and more recently
                    with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. It is a
                    long established fact that a reader will be distracted by the readable content of a page when
                    looking at its layout. The point of
                    using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using
                    'Content here, content here', making it look like readable English. Many desktop publishing packages
                    and web page editors now use
                    Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites
                    still in their infancy. Various versions have evolved over the years, sometimes by accident,
                    sometimes on purpose (injected humour
                    and the like).
                </p>
            </div>
        </div>
    </div>
</div>
