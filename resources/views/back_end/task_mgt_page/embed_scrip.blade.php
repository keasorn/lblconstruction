
@section("css-script")

    <!-- Multi Select Css -->
{{--    <link href="/plugins/multi-select/css/multi-select.css" rel="stylesheet">--}}

    <!-- Waves Effect Css -->
    <link href="/plugins/node-waves/waves.css" rel="stylesheet" />

    <!-- Bootstrap Spinner Css -->
    <link href="/plugins/jquery-spinner/css/bootstrap-spinner.css" rel="stylesheet">

    <!-- Bootstrap Tagsinput Css -->
    <link href="/plugins/bootstrap-tagsinput/bootstrap-tagsinput.css" rel="stylesheet">

    <!-- Bootstrap Select Css -->
    <link href="/plugins/bootstrap-select/css/bootstrap-select.css" rel="stylesheet" />

    <!-- noUISlider Css -->
{{--    <link href="/plugins/nouislider/nouislider.min.css" rel="stylesheet" />--}}
    <style>
        .files input {
            outline: 2px dashed #92b0b3;
            outline-offset: -10px;
            -webkit-transition: outline-offset .15s ease-in-out, background-color .15s linear;
            transition: outline-offset .15s ease-in-out, background-color .15s linear;
            padding: 120px 0px 85px 35%;
            text-align: center !important;
            margin: 0;
            width: 100% !important;
        }
        .files input:focus{     outline: 2px dashed #92b0b3;  outline-offset: -10px;
            -webkit-transition: outline-offset .15s ease-in-out, background-color .15s linear;
            transition: outline-offset .15s ease-in-out, background-color .15s linear; border:1px solid #92b0b3;
        }
        .files{ position:relative}
        .files:after {  pointer-events: none;
            position: absolute;
            top: 60px;
            left: 0;
            width: 50px;
            right: 0;
            height: 56px;
            content: "";
            background-image: url(https://image.flaticon.com/icons/png/128/109/109612.png);
            display: block;
            margin: 0 auto;
            background-size: 100%;
            background-repeat: no-repeat;
        }
        .color input{ background-color:#f1f1f1;}
        .files:before {
            position: absolute;
            bottom: 10px;
            left: 0;  pointer-events: none;
            width: 100%;
            right: 0;
            height: 57px;
            content: " or drag it here. ";
            display: block;
            margin: 0 auto;
            color: #2ea591;
            font-weight: 600;
            text-transform: capitalize;
            text-align: center;
        }
    </style>
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
{{--    <!-- Waves Effect Plugin Js -->--}}
{{--    <script src="/plugins/node-waves/waves.js"></script>--}}
    <!-- Custom Js -->
{{--    <script src="/js/admin.js"></script>--}}

    <script>
        $(function () {
            var $demoMaskedInput = $('.demo-masked-input');
            //Date
            // $demoMaskedInput.find('.date').inputmask('dd-mm-yyyy', { placeholder: '__-__-____' });


        });


    </script>
{{--    <script src="/js/pages/forms/advanced-form-elements.js"></script>--}}

@endsection