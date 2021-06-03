<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tns="https://interdark.com/ChangePasswordPage/changepassword.xml">
    <xsl:output method="html" doctype-system="about:legacy-compat"/>
     <xsl:template match="/">
        <html>
            <head>
                <title>InterDark | Change Password</title>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                 <link rel="shortcut icon" href="../Pictures/interdarklogo.ico" />
                <link rel="stylesheet" href="changepassword.css"/>
                <link href='https://fonts.googleapis.com/css?family=Comic Neue' rel='stylesheet'/>
            </head>
            <body onload="loadTime()">
                <div id="loader"></div>
                <div id="wholeweb" style="display:none;">
                    <div class="topnav">   
                        <a id="logotext" class="glow" style="float:left;pointer-events: none;font-family:'Comic Neue';font-weight:bold;font-style: italic;">InterDark</a>
                        <a onclick="logout()" style="cursor: pointer;display: block;" id="loggedin1">Logout</a>
                        <div class="dropdown" style="display: block;" id="loggedin2">
                            <button id="dropdownbtn" class="dropbtn">My Account</button>
                            <div class="dropdown-content">
                                <a href="../index.xml" id="firstDropMenuItem" >Home</a>
                                <a class="active" href="changepassword.xml" id="secondDropMenuItem">Change Password</a>
                                <a href="#">Change Email</a>
                            </div>
                        </div>
                    </div>
                    <div id="reauthenticate" style="display:none;">
                        <div class="container">
                            <h2 id="reauthenticateheader">Please re-enter your credentials</h2>
                        </div>

                        <div class="container" style="background-color:white">
                            <h2>Email:</h2>
                            <input type="text" placeholder="Enter Email" name="mail" required="required" id="email_field"/>
                            <h2>Password:</h2>
                            <input type="password" placeholder="Enter password" name="mail" required="required" id="password_field"/>
                        </div>

                        <div class="container">
                            <button id="firstsubmitbutton" class ="glow2"  type="button" onclick="reauthenticate()">Submit</button>   
                        </div>
                    </div>        
                    <div id="passwordchangeform" style="display:none;">
                        <div class="container">
                            <h2 id="changepasswordheader">Change your password?</h2>
                            <p id="changepasswordpara">Fill out the form below</p>
                        </div>

                        <div class="container" style="background-color:white">
                            <h2>New Password:</h2>
                            <input type="password" placeholder="Enter new password" name="mail" required="required" id="newpassword_field"/>
                            <h2>Confirm Password:</h2>
                            <input type="password" placeholder="Confirm new password" name="mail" required="required" id="confirmpassword_field"/>
                        </div>

                        <div class="container">
                            <button id="submitbutton" class ="glow2"  type="button" onclick="changePassword()">Submit</button>   
                        </div>
                    </div>
                </div>
                <!-- The core Firebase JS SDK is always required and must be listed first -->
                <script src="https://www.gstatic.com/firebasejs/8.6.1/firebase-app.js"></script>

                <!-- TODO: Add SDKs for Firebase products that you want to use
                    https://firebase.google.com/docs/web/setup#available-libraries -->
                <script src="https://www.gstatic.com/firebasejs/8.6.1/firebase-auth.js"></script>
                <script src="../firebaselogin.js"></script>  
                <script src="changepassword.js"></script>  
                <script src="changepasswordload.js"></script>  
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>