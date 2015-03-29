// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
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


setInterval(function(){
	times = $(".limit-time")
	$.each(times, function(index, value) {
		time = parseInt($(this).html())
		new_time = time - 1
		if (new_time <= 0)
		{
			new_time = 0
		}
		$(this).html(new_time)
	});
	//$(".limit-time").html(parseInt(time - 1))
}, 1000);
