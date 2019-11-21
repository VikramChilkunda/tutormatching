$(document).on('turbolinks:load', function() {
    $(".fa-bars").on("click", function(){
        $(".side").toggleClass("sidepopup");
    });
    $(".fa-times").on("click", function(){
        $(".side").removeClass("sidepopup");
    });
    $("input").focus(function(){
        $(".studygroupsendrequest").toggleClass("popoutrequest");
        $(".tutorsendrequest").toggleClass("popoutrequest");
    });
    $("input").focusout(function(){
        $(".studygroupsendrequest").toggleClass("popoutrequest");
        $(".tutorsendrequest").toggleClass("popoutrequest");
    });
});
 
