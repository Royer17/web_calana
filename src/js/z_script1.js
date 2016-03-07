jQuery(document).ready(function($) {
	$(".dropdown-button").dropdown({hover: true});
	$(".button-collapse").sideNav();
	$('.materialboxed').materialbox();
	$('.slider-principal').slick({
        autoplay: true,
        arrows: false,
        dots: true,
        adaptiveHeight: true
      });
});
