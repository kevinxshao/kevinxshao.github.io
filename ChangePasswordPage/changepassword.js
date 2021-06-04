firebase.auth().onAuthStateChanged(function(user) {
    if (user) {
      // User is signed in.
    } else {
        window.location.href = '../index.xml';
    }
  });
function logout(){
    firebase.auth().signOut().then(function() {
        // Sign-out successful.
      }).catch(function (error) {
        // An error happened.
      });
}

function reauthenticate(){
    var user = firebase.auth().currentUser;
    var credential = firebase.auth.EmailAuthProvider.credential(user.email, document.getElementById("currentpassword_field").value);
    
    // Prompt the user to re-provide their sign-in credentials

    user.reauthenticateWithCredential(credential).then(function() {
    // User re-authenticated.
        //var user = firebase.auth().currentUser;
        var newPassword =  document.getElementById("newpassword_field").value;
        var confirmPassword = document.getElementById("confirmpassword_field").value;
        if(newPassword==confirmPassword){
            user.updatePassword(newPassword).then(function() {
            // Update successful.
                window.alert("Password Changed Successful Please Log in again");
                logout();
            }).catch(function(error) {
            // An error happened.
            window.alert(error);
        });
        }
        else{
            window.alert("Passwords don't match!");  
        }
    }).catch(function(error) {
    // An error happened.
    window.alert(error);
    });
}