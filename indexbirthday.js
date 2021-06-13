function choosebirthday(){
    var user = firebase.auth().currentUser;
    var userEmail = user.email;
    var d = new Date();
    if(userEmail=="stlkscar@hotmail.com" && d.getFullYear() == 2021 && d.getMonth() == 5 && d.getDate() == 13){
        window.location.href = 'LoggedinMenu/Birthday/Aleena/aleena.xml';
    }
    else{
        window.alert("Its not your birthday yet!");
    }
}