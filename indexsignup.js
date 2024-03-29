function createAccount(){
    var userEmail = document.getElementById("email_create").value; 
    var userPass = document.getElementById("password_create").value; 
    var userConfirmPass = document.getElementById("password_confirm").value; 
    if(userPass == userConfirmPass){
      firebase.auth().createUserWithEmailAndPassword(userEmail, userPass)
      .then(function (userCredential) {
        // Signed in 
        var user = userCredential.user;
        // ...
        update_profile();  
        document.getElementById("id01").style.display="none"; 
        send_verification();
      })
      .catch(function (error) {
        var errorCode = error.code;
        var errorMessage = error.message;
        // ..
        window.alert("Error : " + errorMessage);
      });
    }
    else{
      window.alert("Passwords don't match!");
    }
  }
function send_verification(){
  var user = firebase.auth().currentUser;

  user.sendEmailVerification().then(function() {
    // Email sent.
    //window.alert("Email Verification Sent");
  }).catch(function(error) {
    // An error happened.
    window.alert("Error : " + error);
  });
}

function send_verification2(){
  var user = firebase.auth().currentUser;

  user.sendEmailVerification().then(function() {
    // Email sent.
    window.alert("Email Verification Sent");
  }).catch(function(error) {
    // An error happened.
    window.alert("Error : " + error);
  });
}

function update_profile(){
  var user = firebase.auth().currentUser;
  user.updateProfile({
    displayName: document.getElementById("displayname_create").value, 
  }).then(function() {
    document.getElementById("user_header").innerHTML = "Welcome User : " + user.displayName; 
  }).catch(function(error) {
    window.alert("Error : " + error);
  });
}