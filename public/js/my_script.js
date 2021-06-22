$('.slide1').slick({
    slidesToShow: 4,
    slidesToScroll: 1,
    dots: true,
    arrows: false,
    autoplay: true,
    // infinite: false,
    // autoplaySpeed: 4000,
    responsive: [
        {
            breakpoint: 1024,
            settings: {
                slidesToShow: 3,
                slidesToScroll: 1,
                infinite: true,
                dots: true
            }
        },
        {
            breakpoint: 600,
            settings: {
                slidesToShow: 2,
                slidesToScroll: 1
            }
        },
        {
            breakpoint: 480,
            settings: {
                slidesToShow: 1,
                slidesToScroll: 1
            }
        }
    ]
});

$('.slide2').slick({
    slidesToShow: 1,
    slidesToScroll: 1,
    dots: true,
    arrows: false,
    autoplay: true,
    // infinite: false,
    // autoplaySpeed: 4000,
    responsive: [
        {
            breakpoint: 1024,
            settings: {
                slidesToShow: 3,
                slidesToScroll: 1,
                infinite: true,
                dots: true
            }
        },
        {
            breakpoint: 600,
            settings: {
                slidesToShow: 2,
                slidesToScroll: 1
            }
        },
        {
            breakpoint: 480,
            settings: {
                slidesToShow: 1,
                slidesToScroll: 1
            }
        }
    ]
});

$('.slide3').slick({
    slidesToShow: 1,
    slidesToScroll: 1,
    dots: true,
    arrows: false,
    autoplay: true,
    // infinite: false,
    // autoplaySpeed: 4000,
    responsive: [
        {
            breakpoint: 1024,
            settings: {
                slidesToShow: 3,
                slidesToScroll: 1,
                infinite: true,
                dots: true
            }
        },
        {
            breakpoint: 600,
            settings: {
                slidesToShow: 2,
                slidesToScroll: 1
            }
        },
        {
            breakpoint: 480,
            settings: {
                slidesToShow: 1,
                slidesToScroll: 1
            }
        }
    ]
});


$(document).ready(function () {
    $('.a').hover(function () {

        $('.b').fadeIn('fast');
        $('.a').fadeOut('slow');

    }, function () {
        $('.b').fadeOut('fast');
        $('.a').fadeIn('fast');
    });
});

$(document).ready(function () {
    $('.image-frame').hover(function () {
        $('.image-caption', this).slideToggle('slow');
        $(this).find('img').toggleClass('j_show j_hide');
    }, function () {
        $('.image-caption', this).slideToggle('slow');
        $(this).find('img').toggleClass('j_show j_hide');
    });

    $('.project_box').hover(function () {
        $(this).find('img').toggleClass('h_grayscale f_grayscale');
    });
});

AOS.init({
    easing: 'ease-in-out-sine'
});


$(".main-menu").click(function () {
    myFunction(document.querySelector("div.menu_button"));
});

function myFunction(x) {
    // x = document.querySelector("div.menu_button")
    x.classList.toggle("change");

    $("#menu").fadeToggle();
    $("#my_home_scroll").fadeToggle();
    $("#my_home_text").fadeToggle();
    $("#my_home_scroll").fadeToggle();
}
