// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


var toggleFavorite = function(activityId, userId) {
	$.ajax({
		url: ("" + userId + "/favorites"),
		type: "POST",
		data: {favorite: { user_id: userId, activity_id: activityId}},
		success: function(response) {
			
		}
	});
}

var displayFavorites = function() {
	$divs = $('.not_favorite').parent()
	if ($divs.css('display') === 'block') {
		$divs.css('display','none');
	} else {
		$divs.css('display', 'block');
	}
}