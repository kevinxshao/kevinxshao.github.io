function loadTime() {
    loadtime = setTimeout(showPage, 1000);
}
function showPage() {
    document.getElementById("loader").style.display = "none";
    document.getElementById("wholeweb").style.display = "block";
    document.getElementById("body1").classList.add('grad1');
    if (navigator.appVersion.indexOf("Chrome/") != -1 && window.innerWidth < 700) {
        document.getElementById("logotext").classList.remove('glow');
        document.getElementById("logotext").classList.add('glownone');
    }
    if (navigator.appVersion.indexOf("Chrome/") != -1){
        document.getElementById("birthdayName").classList.remove('zoom');
    }
    playAudio();
}
function playAudio() {
    var audio = document.getElementById("audio");
    audio.play();
  }
function lightup1(){
    document.getElementById("makefaded").classList.remove('blowoutcandles');
    document.getElementById("makefaded").classList.add('lightupcandles');
}
