function loadTime() {
    loadtime = setTimeout(showPage, 1000);
}
function showPage() {
    document.getElementById("loader").style.display = "none";
    document.getElementById("wholeweb").style.display = "block";
}
if (navigator.appVersion.indexOf("Chrome/") != -1 && window.innerWidth < 700) {
    document.getElementById("logotext").classList.remove('glow');
    document.getElementById("logotext").classList.add('glownone');
    document.getElementById("logintext").classList.remove('glow2');
    document.getElementById("logintext").classList.add('glownone2');
    document.getElementById("signuptext").classList.remove('signupbtn');
    document.getElementById("signuptext").classList.add('signupbtnnone');
    document.getElementById("signuptext2").classList.remove('signupbtn2');
    document.getElementById("signuptext2").classList.add('signupbtnnone2');
    document.getElementById("canceltext").classList.remove('cancelbtn');
    document.getElementById("canceltext").classList.add('cancelbtnnone');
    window.alert("yes");
}