<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" doctype-system="about:legacy-compat"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>FireBase Login</title>
                <link rel="stylesheet" href="news.css"/>
            </head>
            <body>
                <div id="login_div" class="main-div">
                    <h3>Firebase Web login Example</h3>
                    <input type="email" placeholder="Email..." id="email_field"/>
                    <input type="password" placeholder="Password..." id="password_field"/>

                    <button onclick="login()">Login to Account</button>
                </div>

                <div id="user_div" class="loggedin-div">
                    <h3>Welcome User</h3>
                    <p>Welcome to Firebase web login Example. You're currently logged in.</p>
                    <button>Logoout</button>
                </div>
                <!-- The core Firebase JS SDK is always required and must be listed first -->
                <script src="https://www.gstatic.com/firebasejs/8.6.1/firebase-app.js"></script>

                <!-- TODO: Add SDKs for Firebase products that you want to use
                    https://firebase.google.com/docs/web/setup#available-libraries -->

                <script src="firebaselogin.js"> </script>      
                <script src="news.js"> </script>            
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>