var counter = 0;
var candlelit = 0;
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
    if(counter==0){
        document.getElementById("makefaded").classList.remove('blowoutcandles');
        document.getElementById("makefaded").classList.add('lightupcandles');
    }
}
function lightup2(){
    if(counter==0){
        document.getElementById("makefaded2").classList.remove('blowoutcandles');
        document.getElementById("makefaded2").classList.add('lightupcandles');
    }
}
function lightup3(){
    if(counter==0){
        document.getElementById("makefaded3").classList.remove('blowoutcandles');
        document.getElementById("makefaded3").classList.add('lightupcandles');
    }
}
function lightup4(){
    if(counter==0){
        document.getElementById("makefaded4").classList.remove('blowoutcandles');
        document.getElementById("makefaded4").classList.add('lightupcandles');
    }
}

function lightoff(){
    if(counter == 0){
        if( document.getElementById("makefaded").classList.contains("lightupcandles") && document.getElementById("makefaded2").classList.contains("lightupcandles")
        && document.getElementById("makefaded3").classList.contains("lightupcandles") && document.getElementById("makefaded4").classList.contains("lightupcandles")
        && candlelit == 1){
        document.getElementById("makefaded").classList.remove('lightupcandles');
        document.getElementById("makefaded").classList.add('blowoutcandles');

        document.getElementById("makefaded2").classList.remove('lightupcandles');
        document.getElementById("makefaded2").classList.add('blowoutcandles');
    
        document.getElementById("makefaded3").classList.remove('lightupcandles');
        document.getElementById("makefaded3").classList.add('blowoutcandles');
    

        document.getElementById("makefaded4").classList.remove('lightupcandles');
        document.getElementById("makefaded4").classList.add('blowoutcandles');

        document.getElementById("birthdayText").classList.remove('birthdayTextlighton');
        document.getElementById("birthdayText").classList.add('birthdayTextlightoff');
        document.getElementById("body1").classList.remove('grad1');
        document.getElementById("body1").classList.add('standardbackground');
        document.getElementById('candle').src='../../../Pictures/candleoff.png';
        document.getElementById('logotext').classList.remove('glow');
        counter++;
        }
        else{
            window.alert("Please kindly light up all the candles");
        }
    }
    else{
        window.alert("You have already made your wish");
    }
}
function candleup(){
    if(counter == 0){
        document.getElementById('candle').src='../../../Pictures/candleon.png';
        candlelit = 1;
    }
}