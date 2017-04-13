// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.purr
//= require best_in_place
//= require best_in_place.jquery-ui
//= require best_in_place.purr
//= require turbolinks
//= require rails.validations
//= require redactor-rails
//= require_tree .


// $('.best_in_place').bind("ajax:success", function () {$(this).closest('tr').effect('highlight'); });
$('.on_success').bind("ajax:success", function(){$(this).closest('td').effect('highlight');});
$('.bounce_on').bind("ajax:success", function(){$(this).closest('td').effect('bounce');});