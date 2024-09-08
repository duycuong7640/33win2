<script type="text/javascript" src="{{ asset('/static/web/js/jquery.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('/static/web/js/owl.carousel.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('/static/web/js/owl.carousel.js') }}"></script>
<script type="text/javascript" src="{{ asset('/static/web/js/custom.js') }}"></script>
@yield('scripts')
@yield('validate')
<script type="text/javascript">
    $(".a-fa").click(function (){
        const show = $(".footer-ad").data('show');
        if(parseInt(show) === parseInt("1")){
            $(".footer-ad").hide();
        }
    });
</script>
