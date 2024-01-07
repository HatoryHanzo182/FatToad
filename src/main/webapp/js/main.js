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

function CheckTokenValidity(token)
{
	const request_data = { Id: token };

	return fetch('/FatToad/VT_?Id=' + token, {
		method: 'POST',
		headers: { 'Content-Type': 'application/json' },
		body: JSON.stringify(request_data)
	}).then(response =>
	{
		if (!response.ok)
			throw new Error(`HTTP error! Status: ${response.status}`);
		return response.json();
	}).then(data =>
	{
		if (data.status)
			return true;
		else
		{
			localStorage.clear();
			return false;
		}
	}).catch(error =>
	{
		console.error('Error during token validation:', error);
		throw error;
	});
}

if (localStorage.getItem('token') != null)
{
	CheckTokenValidity(localStorage.getItem('token')).then(is_valid =>
	{
		console.log(localStorage.getItem('token'));

		if (is_valid)
		{
			document.getElementById('without-verification').style.display = 'none';
			document.getElementById('with-verification').style.display = 'block';
		}
		else
		{
			document.getElementById('without-verification').style.display = 'block';
			document.getElementById('with-verification').style.display = 'none';
		}
	}).catch(error => { console.error('Error during token validation:', error); });
}
else
{
	document.getElementById('without-verification').style.display = 'block';
	document.getElementById('with-verification').style.display = 'none';
}