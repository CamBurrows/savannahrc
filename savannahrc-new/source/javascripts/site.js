$(document).ready(function(){
  $(".down-arrow").on('click', function(){
    $("html,body").animate({ scrollTop: window.pageYOffset + $(window).height()}, 300);
  })
})
