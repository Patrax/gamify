//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require turbolinks

$(document).ready(function() {
	$('.container-wheel').carousel({interval: 7000});


	//	Subscription form process

	var $form = $('#subscription-form');

	$('#subscribe-action').on('click', function(event) {
		if (event)
			event.preventDefault();
		register($form);
	});

	function register($form) {
		$.ajax({
			type: $form.attr('method'),
			url: $form.attr('action'),
			data: $form.serialize(),
			cache: false,
			dataType: 'json',
			contentType: "application/json; charset=utf-8",
			error: function(err) {
				$('#form-message').hide().html('<span class="alert">Oh! there\'s a problem, try later again please.</span>').fadeIn("slow");
			},
			success: function(data) {
				if (data.result != "success") {
					var message = data.msg.substring(4);
					$('#form-message').hide().html('<span class="alert"><i class="fa fa-exclamation-triangle"></i>' + message + '</span>').fadeIn("slow");
				} else {
					console.log(data);
					var message = data.msg.substring(4);
					$('#form-message').hide().html('<span class="success"><i class="fa fa-envelope"></i>' + 'Awesome! We sent you a confirmation email :)' + '</span>').fadeIn("slow");
				}
			}
		});
	}

});
