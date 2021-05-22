function readURL(input, imageSrc) {
    console.log(input.files[0].type == "video/mp4")
    if (input.files[0].type == "video/mp4") {
        $('#' + imageSrc).attr('src', "/images/video.png")

    } else {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#' + imageSrc)
                    .attr('src', e.target.result);
            };

            reader.readAsDataURL(input.files[0]);
        }
    }
}
