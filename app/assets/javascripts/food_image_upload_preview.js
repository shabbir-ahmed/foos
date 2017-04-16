$(document).ready(function () {
	$(function() {
	  function readURL(input) {
	    if (input.files && input.files[0]) {
	      var reader = new FileReader();
	
	      reader.onload = function (e) {
	        $('#img_prev1').attr('src', e.target.result);
	      }
	      reader.readAsDataURL(input.files[0]);
	    }
	  }
	
	  $("#avatar-upload1").change(function(){
	    $('#img_prev1').removeClass('hidden');
	    readURL(this);
	  });
	});
		
	$(function() {
	  function readURL(input) {
	    if (input.files && input.files[0]) {
	      var reader = new FileReader();
	
	      reader.onload = function (e) {
	        $('#img_prev2').attr('src', e.target.result);
	      }
	      reader.readAsDataURL(input.files[0]);
	    }
	  }
	
	  $("#avatar-upload2").change(function(){
	    $('#img_prev2').removeClass('hidden');
	    readURL(this);
	  });
	});
	
	$(function() {
	  function readURL(input) {
	    if (input.files && input.files[0]) {
	      var reader = new FileReader();
	
	      reader.onload = function (e) {
	        $('#img_prev3').attr('src', e.target.result);
	      }
	      reader.readAsDataURL(input.files[0]);
	    }
	  }
	
	  $("#avatar-upload3").change(function(){
	    $('#img_prev3').removeClass('hidden');
	    readURL(this);
	  });
	});
	
	$('#browse1').click(function(){
	    $('input[id="avatar-upload1"]').trigger('click');
	});
	$('#browse2').click(function(){
	    $('input[id="avatar-upload2"]').trigger('click');
	});
	$('#browse3').click(function(){
	    $('input[id="avatar-upload3"]').trigger('click');
	});
	
	// For offer input field
	$("input#food_offer_percent").hide();
	$("textarea#food_offer_occasions").hide();
	
	$("#yes").click(function() {
	    $("input#food_offer_percent").show();
	    $("textarea#food_offer_occasions").show();
	    // alert("OK");
	});
	$("#no").click(function() {
	    $("input#food_offer_percent").hide();
	    $("textarea#food_offer_occasions").hide();
	});
	
});