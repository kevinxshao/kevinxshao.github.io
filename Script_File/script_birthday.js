/* Used to fade out the loading wrapper after loading is complete */
$(window).on("load",function(){
    $(".loader-wrapper").fadeOut("slow");
  });

/* Used to show alert messsages when a user clicks on a birthday menu option that hasn't been implemented yet */
function myFunction() {
  alert("This is still under work for the next birthday. Come check again later!");
}