$(document).on('turbolinks:load', function() {
// $(document).ready(function() {
    $('#key').on('input', function() {
        var h = $('#key').val();
        if (h.length > 1) {
            $(document).ajaxStart(function(){
                $("#loading").css("display", "block");
            });

           $(document).ajaxComplete(function(){
                $("#loading").css("display", "none");
            });

            $("#s_form").submit();

        }
        else if(h.length < 10){
            $(document).ajaxStart(function(){
                $("#loading").css("display", "block");
            });

           $(document).ajaxComplete(function(){
                $("#loading").css("display", "none");
            });

            $("#s_form").submit();
        }
    // });
});
});