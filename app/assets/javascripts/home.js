$(document).ready(function(){
    $(".fa-bars").on("click", function(){
        $(".side").toggleClass("sidepopup");
    });
    $(".fa-times").on("click", function(){
        $(".side").removeClass("sidepopup");
    }); 
});