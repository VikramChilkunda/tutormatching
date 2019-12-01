$(document).on('turbolinks:load', function() {
    $(".fa-bars").on("click", function(){
        $(".side").toggleClass("sidepopup");
    });
    $(".nav-times").on("click", function(){
        $(".side").addClass("transition");
        $(".side").removeClass("sidepopup");
        // $(".side").removeClass("transition");
    });
    if($(window).width() <= 600){
        $(".studygroupdisplaycard").on("click", function() {
            $(".nodisplay").addClass("blockdisplay");
            $(".blockdisplay").removeClass("nodisplay");
        });
        $(".tutordisplaycard").on("click", function() {
            $(".nodisplay").addClass("blockdisplay");
            $(".blockdisplay").removeClass("nodisplay");
        });
        $(".req-times").on("click", function(){
            event.stopPropagation();
            $(".blockdisplay").addClass("nodisplay");
            $(".nodisplay").removeClass("blockdisplay");
        });
        
    }
    $(".item").on("click", function(){
        $(".side").removeClass("sidepopup");
    })
    $("input").focus(function(){
        $(".studygroupsendrequest").toggleClass("popoutrequest");
        $(".tutorsendrequest").toggleClass("popoutrequest");
    });
    $("input").focusout(function(){
        $(".studygroupsendrequest").toggleClass("popoutrequest");
        $(".tutorsendrequest").toggleClass("popoutrequest");
    });
});
 
