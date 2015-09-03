jQuery(document).ready(function(){

$("#log").click(function() {
  console.log("working")
  $(".audio-play")[0].currentTime = 0;
  $(".audio-play")[0].play();

});
$("#login").click(function() {

 $(".audio-play")[0].currentTime = 0;
 $(".audio-play")[0].play();
});



})