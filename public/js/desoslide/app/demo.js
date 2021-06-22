$(function () {

    // Demo
    // ----------------------------------------------------------------------------------------------------------
    // ----------------------------------------------------------------------------------------------------------

    $('a.back-to-top').on('click', function (e) {
        e.preventDefault();

        $('html, body').stop().animate({
            scrollTop: $('html, body').offset().top
        }, 1000);
    });

    // Toggle thumbnails
    // ----------------------------------------------------------------------------------------------------------
    // ----------------------------------------------------------------------------------------------------------

    $('#toggle_thumbs').on('click', function (e) {
        e.preventDefault();

        var $this = $(this),
            $slideshow_1_thumbs_1 = $('#slideshow_1_thumbs_1'),
            $slideshow_1_thumbs_2 = $('#slideshow_1_thumbs_2');

        if ($slideshow_1_thumbs_1.css('visibility') === 'hidden') {
            $slideshow_1_thumbs_1.css('visibility', 'visible');
            $slideshow_1_thumbs_2.css('visibility', 'visible');

            $this.find('i').attr('class', 'fa fa-eye-slash');
            $this.find('span').text('Hide');
        } else {
            $slideshow_1_thumbs_1.css('visibility', 'hidden');
            $slideshow_1_thumbs_2.css('visibility', 'hidden');

            $this.find('i').attr('class', 'fa fa-eye');
            $this.find('span').text('Show');
        }
    });

    // Syntax highlighting
    // ----------------------------------------------------------------------------------------------------------

    var syntaxHighlight = function () {
        $('pre code').each(function (i, e) {
            hljs.highlightBlock(e);
        });
    };

    syntaxHighlight();

    // Demo 1
    // ----------------------------------------------------------------------------------------------------------

    // ----------------------------------------------------------------------------------------------------------

    $('#slideshow2').desoSlide({
        thumbs: $('#slideshow2_thumbs li > a'),
        first: 2,
        thumbEvent: 'mouseover'
    });

    // Demo 3
    // ----------------------------------------------------------------------------------------------------------

    $('#slideshow1').desoSlide({
        thumbs: $('#slideshow1_thumbs').find('li > a'),
        auto: {
            start: false
        },
        first: 0,
        interval: 6000
    });


    // Demo 4
    // ----------------------------------------------------------------------------------------------------------

    $('#slideshow4').desoSlide({
        thumbs: $('#slideshow4_thumbs li > a'),
        overlay: 'hover',
        controls: {
            show: false,
            keys: true
        }
    });

    // Demo 5
    // ----------------------------------------------------------------------------------------------------------

    $('#slideshow5').desoSlide({
        thumbs: $('#slideshow5_thumbs li > a'),
        auto: {
            start: true
        },
        overlay: 'none'
    });

});
