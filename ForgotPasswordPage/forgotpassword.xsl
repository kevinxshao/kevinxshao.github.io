<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tns="https://interdark.com/ForgotPasswordPage/forgotpassword.xml">
    <xsl:output method="html" doctype-system="about:legacy-compat"/>
     <xsl:template match="/">
        <html>
            <head>
                <title><xsl:value-of select="tns:WebPage/tns:headPage/tns:titleText"/></title>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                 <link rel="shortcut icon" href="../Pictures/interdarklogo.ico" />
                <link rel="stylesheet" href="forgotpassword.css"/>
                <link href='https://fonts.googleapis.com/css?family=Comic Neue' rel='stylesheet'/>
            </head>
            <body onload="loadTime()">
                <div id="loader"></div>
                <div id="wholeweb" style="display:none;">
                    <div class="topnav">   
                        <a id="logotext" class="glow" style="float:left;pointer-events: none;font-family:'Comic Neue';font-weight:bold;font-style: italic;"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:topMenuBar/tns:logoMenuItem"/></a>
                        <a href="../AboutPage/about.xml" id="loggedout4" style="display: block;"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:topMenuBar/tns:fourthMenuItem"/></a>
                        <a href="#contact" id="loggedout3" style="display: block;"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:topMenuBar/tns:thirdMenuItem"/></a>
                        <a href="../NewsPage/news.xml" id="loggedout2" style="display: block;"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:topMenuBar/tns:secondMenuItem"/></a>
                        <a href="../index.xml" id="loggedout1" style="display: block;"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:topMenuBar/tns:firstMenuItem"/></a>
                    </div>        
                </div>
                <div id="passwordresetform" style="display:none;">
                    <div class="container">
                        <h2 id="forgotpasswordheader"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:passwordresetInterface/tns:forgotpasswordHeading"/></h2>
                        <p id="forgotpasswordpara"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:passwordresetInterface/tns:forgotpasswordParagraph"/></p>
                    </div>

                    <div class="container" style="background-color:white">
                        <input type="text" placeholder="Enter Email" name="mail" required="required" id="email_field"/>
                    </div>

                    <div class="container">
                        <button id="submitbutton" class ="glow2"  type="button" onclick="forgotPassword()"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:passwordresetInterface/tns:submitButtonText"/></button>   
                    </div>
                </div>
                <!-- The core Firebase JS SDK is always required and must be listed first -->
                <script src="https://www.gstatic.com/firebasejs/8.6.1/firebase-app.js"></script>

                <!-- TODO: Add SDKs for Firebase products that you want to use
                    https://firebase.google.com/docs/web/setup#available-libraries -->
                <script src="https://www.gstatic.com/firebasejs/8.6.1/firebase-auth.js"></script>
                <script src="../firebaselogin.js"></script>  
                <script src="forgotpassword.js"></script>  
                <script src="forgotpasswordload.js"></script>  
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>