firebase.auth().onAuthStateChanged(function(user) {
    var d = new Date();
    if (user && user.email=="stlkscar@hotmail.com" && d.getFullYear() == 2021 && d.getMonth() == 5 && d.getDate() == 14) {
      // User is signed in.
    } else {
        window.location.href = '../../../index.xml';
    }
  });