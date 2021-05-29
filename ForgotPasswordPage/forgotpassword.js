function forgotPassword(){
    var auth = firebase.auth();
    var emailAddress = document.getElementById("email_field").value;
    
    auth.sendPasswordResetEmail(emailAddress).then(function() {
      // Email sent.
      window.alert("Password reset link sent to email");
    }).catch(function(error) {
      // An error happened.
      window.alert("Error : " + error);
    });
}