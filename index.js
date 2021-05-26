firebase.auth().onAuthStateChanged(function(user) {
    if (user) {
      // User is signed in.
      document.getElementById("user_div").style.display="block";
      document.getElementById("login_div").style.display="none";    
      document.getElementById("loggedin1").style.display="block";     
      document.getElementById("loggedin2").style.display="block";    
      document.getElementById("loggedout1").style.display="none";  
      document.getElementById("loggedout2").style.display="none";  
      document.getElementById("loggedout3").style.display="none";  
      document.getElementById("loggedout4").style.display="none";  
      if(user != null){
        var email_id = user.email;
        var email_verified = user.emailVerified;
        var profilename = user.displayName;

        if(email_verified) {
          document.getElementById("verify1").style.display ="none";
          document.getElementById("verify2").style.display ="none";
        }
        else{
          document.getElementById("verify1").style.display ="block";
          document.getElementById("verify2").style.display ="block";
        }
        if(profilename != null){
          document.getElementById("user_header").innerHTML = "Welcome User : " + " " + profilename; 
        }
      }
    } else {
      // No user is signed in.
      document.getElementById("user_div").style.display="none";
      document.getElementById("login_div").style.display="block";  
      document.getElementById("loggedin1").style.display="none";     
      document.getElementById("loggedin2").style.display="none";    
      document.getElementById("loggedout1").style.display="block";  
      document.getElementById("loggedout2").style.display="block";  
      document.getElementById("loggedout3").style.display="block";  
      document.getElementById("loggedout4").style.display="block";  
    }
  });
function login(){
    var userEmail = document.getElementById("email_field").value;
    var userPass = document.getElementById("password_field").value;
    firebase.auth().signInWithEmailAndPassword(userEmail, userPass)
    .then((userCredential) => {
      // Signed in
      var user = userCredential.user;
      //window.alert("I'm in");
      // ...
    })
    .catch((error) => {
      var errorCode = error.code;
      var errorMessage = error.message;
      window.alert("Error : " + errorMessage);
    });   
}

function logout(){
    firebase.auth().signOut().then(() => {
        // Sign-out successful.
      }).catch((error) => {
        // An error happened.
      });
      
}


