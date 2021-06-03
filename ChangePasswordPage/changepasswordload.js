function loadTime() {
    loadtime = setTimeout(showPage, 1000);
}
function showPage() {
    document.getElementById("loader").style.display = "none";
    document.getElementById("wholeweb").style.display = "block";
    document.getElementById("reauthenticate").style.display = "block";
    if (navigator.appVersion.indexOf("Chrome/") != -1 && window.innerWidth < 700) {
        document.getElementById("logotext").classList.remove('glow');
        document.getElementById("logotext").classList.add('glownone');
        document.getElementById("submitbutton").classList.remove('glow2');
        document.getElementById("submitbutton").classList.add('glownone2');
        document.getElementById("firstsubmitbutton").classList.remove('glow2');
        document.getElementById("firstsubmitbutton").classList.add('glownone2');
    }
}