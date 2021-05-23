function createAccount(){
    var userEmail = document.getElementById("email_create").value; 
    var userPass = document.getElementById("password_create").value; 
    var userConfirmPass = document.getElementById("password_confirm").value; 
    if(userPass == userConfirmPass){
      firebase.auth().createUserWithEmailAndPassword(userEmail, userPass)
      .then((userCredential) => {
        // Signed in 
        var user = userCredential.user;
        // ...
      })
      .catch((error) => {
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