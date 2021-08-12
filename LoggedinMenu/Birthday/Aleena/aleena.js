firebase.auth().onAuthStateChanged(function(user) {
    var d = new Date();
    if (user && user.email=="stlkscar@hotmail.com" && d.getFullYear() == 2021 && d.getMonth() == 7 && d.getDate() == 12) {
      // User is signed in.
    } else {
        window.location.href = '../../../index.xml';
    }
  });