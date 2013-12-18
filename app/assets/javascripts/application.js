// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require jquery-ui

$(function(){
	$('#datepicker').datepicker({
		dateFormat: 'dd-mm-yy',
		changeMonth: true,
		changeYear: true,
		yearRange: "-5:+20",	
	});
	
	$('#name').hover(function() {
		$('#fillup').show();
	}, 
		function() {
			$('#fillup').hide();
	});
	
	$('#email').hover(function() {
		$('#properAddress').show();
	}, 
		function() {
			$('#properAddress').hide();
	});

	$('#address').hover(function() {
		$('#valid').show();
	}, 
		function() {
			$('#valid').hide();
	});

	$('#password').hover(function() {
		$('#confirm').show();
	}, 
		function() {
			$('#confirm').hide();
	});

	$('#PPSN').hover(function() {
		$('#info').show();
	}, 
		function() {
			$('#info').hide();
	});
	
	$('#Garage_id').hover(function() {
		$('#g_id').show();
	}, 
		function() {
			$('#g_id').hide();
	});
	
	$('#car_reg').hover(function() {
		$('#reg').show();
	}, 
		function() {
			$('#reg').hide();
	});
	
	$('#man_name').hover(function() {
		$('#manager').show();
	}, 
		function() {
			$('#manager').hide();
	});
	
	$('#cus_id').hover(function() {
		$('#c_id').show();
	}, 
		function() {
			$('#c_id').hide();
	});
});






