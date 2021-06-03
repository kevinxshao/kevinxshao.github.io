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