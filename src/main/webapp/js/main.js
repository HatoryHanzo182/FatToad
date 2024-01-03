'use strict';

$(window).on('load', function()
{
	$(".loader").fadeOut(); 
	$("#preloder").delay(400).fadeOut("slow");
});

(function($)
{
	$('.nav-switch').on('click', function(event)
	{
		$('.main-menu').slideToggle(400);
		event.preventDefault();
	});
	$('.set-bg').each(function()
	{
		var bg = $(this).data('setbg');
		$(this).css('background-image', 'url(' + bg + ')');
	});
	$('.hero-slider').owlCarousel(
		{
			loop: true,
			nav: false,
			dots: true,
			mouseDrag: false,
			animateOut: 'fadeOut',
    		animateIn: 'fadeIn',
			items: 1,
			autoplay: true
		});

	var dot = $('.hero-slider .owl-dot');

	dot.each(function()
	{
		var index = $(this).index() + 1;

		if(index < 10)
		{
			$(this).html('0').append(index);
			$(this).append('<span>.</span>');
		}
		else
		{
			$(this).html(index);
			$(this).append('<span>.</span>');
		}
	});

	$('.news-ticker').marquee(
		{
			duration: 10000,
			delayBeforeStart: 0,
			direction: 'left',
			duplicated: true
		});
})(jQuery);

console.log(localStorage.getItem('token'));