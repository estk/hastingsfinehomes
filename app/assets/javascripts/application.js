// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require jquery.slides.js
//= require jquery.fancybox.js
//= require_tree .

$(function(){
  $("#slides").slidesjs({
    play: 5000,
    pause: 2500,
    navigation: true,
    hoverPause: true,
    effect: 'fade',
    crossfade: true
  });
});

$(document).ready(function() {

	/* Apply fancybox to multiple items */
	
	$("a.fancybox").fancybox({
		'transitionIn'	:	'elastic',
		'transitionOut'	:	'elastic',
		'speedIn'		:	600, 
		'speedOut'		:	200, 
		'overlayShow'	:	true,
		'titlePosition' :   'over',
        'titleFormat'   :   function(title, currentArray, currentIndex, currentOpts) {
            return '<span id="fancybox-title-over">' +  (currentIndex + 1) + ' / ' + currentArray.length + ' ' + title + '</span>';
        }
	});
	
});