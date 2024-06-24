$(document).ready(function(){
  $('.owl-carousel').owlCarousel({
    center: false,
    loop:true,
    margin:5,
	stagePadding: 15,
    autoplay:true,
    autoplayTimeout:2000,
    responsive:{
        0:{
            items:1
        },
        600:{
            items:1
        },
        1000:{
            items:1
        }
    }
    });
    // dong banner
    $(".ads-close").click(function(){
        $(this).parents('.box-ads').addClass('d-none');
      });
      $(".ads-close").click(function(){
        $(this).parents('.modal').removeClass('show');
      });
});

