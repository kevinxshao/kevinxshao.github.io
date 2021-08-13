firebase.auth().onAuthStateChanged(function(user) {
    var d = new Date();
    if (user && user.email=="aleenaanu98@gmail.com" && d.getFullYear() == 2021 && d.getMonth() == 7 && d.getDate() == 13) {
      // User is signed in.
    } else {
        window.location.href = '../../../index.xml';
    }
  });