$(document).ready(function(){
	
	if (jQuery(window).width() > 999) {
        jQuery(window).scroll(function () {
            if (jQuery(this).scrollTop() > 210) {
                jQuery('.header-grid').addClass("fixed");
            } else {
                jQuery('.header-grid').removeClass("fixed");
            }
        });
    }
	$('.main-content-grid .ty-mainbox-container h1.ty-mainbox-title').prependTo('.ty-holiday-gift-banner');
	
});

$(document).ready(function(){
	$('.special-offers').parallax("50%", 0.1);					   
						   });

jQuery(document).ready(function(){
jQuery(".search_toggle").click(function() {
jQuery('html').click(function() {
jQuery(this).unbind('click');
jQuery('#searchform').toggle('slow');
});
jQuery('#searchform').toggle('slow');
jQuery('#searchform .ty-search-block__input').focus();
return false;
});
});



/*****************start animation script*******************/
function hb_animated_contents() {
$(".hb-animate-element:in-viewport").each(function (i) {
var $this = $(this);
if (!$this.hasClass('hb-in-viewport')) {
setTimeout(function () {
$this.addClass('hb-in-viewport');
}, 180 * i);
}
});
}
$(window).scroll(function () {
hb_animated_contents();
});
$(window).load(function () {
hb_animated_contents();
});
/*****************end animation script*******************/
