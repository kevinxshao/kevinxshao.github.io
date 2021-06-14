var counter = 0;
var candlelit = 0;
var lit1 = 0;
var lit2 = 0;
var lit3 = 0;
var lit4 = 0;
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
    if(counter==0 && lit1 ==0){
        var audio2 = document.getElementById("audio2");
        audio2.play();
        document.getElementById("makefaded").classList.remove('blowoutcandles');
        document.getElementById("makefaded").classList.add('lightupcandles');
        lit1++;
    }
}
function lightup2(){
    if(counter==0 && lit2 ==0){
        var audio3 = document.getElementById("audio3");
        audio3.play();
        document.getElementById("makefaded2").classList.remove('blowoutcandles');
        document.getElementById("makefaded2").classList.add('lightupcandles');
        lit2++;
    }
}
function lightup3(){
    if(counter==0 && lit3==0){
        var audio4 = document.getElementById("audio4");
        audio4.play();
        document.getElementById("makefaded3").classList.remove('blowoutcandles');
        document.getElementById("makefaded3").classList.add('lightupcandles');
        lit3++;
    }
}
function lightup4(){
    if(counter==0 && lit4==0){
        var audio5 = document.getElementById("audio5");
        audio5.play();
        document.getElementById("makefaded4").classList.remove('blowoutcandles');
        document.getElementById("makefaded4").classList.add('lightupcandles');
        lit4++;
    }
}

function lightoff(){
    if(counter == 0){
        if( document.getElementById("makefaded").classList.contains("lightupcandles") && document.getElementById("makefaded2").classList.contains("lightupcandles")
        && document.getElementById("makefaded3").classList.contains("lightupcandles") && document.getElementById("makefaded4").classList.contains("lightupcandles")
        && candlelit == 1){
        var audio1 = document.getElementById("audio1");
        audio1.play();
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
        var audio6 = document.getElementById("audio6");
        audio6.play();
    }
}