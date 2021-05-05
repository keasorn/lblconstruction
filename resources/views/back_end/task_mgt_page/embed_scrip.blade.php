
@section("css-script")

    <!-- Multi Select Css -->
    <link href="/plugins/multi-select/css/multi-select.css" rel="stylesheet">

    <!-- Bootstrap Spinner Css -->
    <link href="/plugins/jquery-spinner/css/bootstrap-spinner.css" rel="stylesheet">

    <!-- Bootstrap Tagsinput Css -->
    <link href="/plugins/bootstrap-tagsinput/bootstrap-tagsinput.css" rel="stylesheet">

    <!-- Bootstrap Select Css -->
    <link href="/plugins/bootstrap-select/css/bootstrap-select.css" rel="stylesheet" />

    <!-- noUISlider Css -->
    <link href="/plugins/nouislider/nouislider.min.css" rel="stylesheet" />
@endsection
@section("js-script")

    <!-- Dropzone Plugin Js -->
    <script src="/plugins/dropzone/dropzone.js"></script>
    <!-- Multi Select Plugin Js -->
{{--    <script src="/plugins/multi-select/js/jquery.multi-select.js"></script>--}}
    <!-- Input Mask Plugin Js -->
    <script src="/plugins/jquery-inputmask/jquery.inputmask.bundle.js"></script>
    <!-- noUISlider Plugin Js -->
    <script src="/plugins/nouislider/nouislider.js"></script>
    <!-- Waves Effect Plugin Js -->
    <script src="/plugins/node-waves/waves.js"></script>
    <!-- Custom Js -->
    <script src="/js/admin.js"></script>
    <script>
        $(function () {
            var $demoMaskedInput = $('.demo-masked-input');
            //Date
            $demoMaskedInput.find('.date').inputmask('dd-mm-yyyy', { placeholder: '__-__-____' });
        });


    </script>
{{--    <script src="/js/pages/forms/advanced-form-elements.js"></script>--}}
@endsection