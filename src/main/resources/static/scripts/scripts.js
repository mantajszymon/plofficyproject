/**
 * 
 */

var script = document.createElement('script');
script.src = 'http://code.jquery.com/jquery-1.11.0.min.js';
script.type = 'text/javascript';
document.getElementsByTagName('head')[0].appendChild(script);

$('.selectTyp select').on('change', function () {
     var $this = $(this),
     	value = $this.val();

     	if (value == 'student') {
     		$('.formular .hidden-input').fadeIn(350);
     	} else {
     		$('.formular .hidden-input').fadeOut(250);
     	}
 });
