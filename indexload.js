function loadTime() {
    loadtime = setTimeout(showPage, 1000);
}
function showPage() {
    document.getElementById("loader").style.display = "none";
    document.getElementById("wholeweb").style.display = "block";
}
if (navigator.appVersion.indexOf("Chrome/") != -1 && window.innerWidth < 700) {
    var x = document.getElementsByClassName("glow");
    for(var i = 0; i < x.length; i++){
        document.getElementById(x.item(i)).className = "glownone";
    }
    
    window.alert("yes");
    
}