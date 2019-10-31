function requestpassword() {
    var password = prompt("Please enter the password");
     if (password == "MadeyYouLook") {
         document.getElementById("pass1").innerHTML = window.location.href = 'https://interdark.com/Courses.html';
       }
       else{
       window.alert("Invalid Password");
     }
   }

function openNav() {
   document.getElementById("mySidenav").style.width = "250px";
 }
 
 
function closeNav() {
   document.getElementById("mySidenav").style.width = "0";
 }
