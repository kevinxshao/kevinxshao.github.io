<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tns="https://interdark.com/ChangeEmailPage/changeemail.xml">
    <xsl:output method="html" doctype-system="about:legacy-compat"/>
     <xsl:template match="/">
        <html>
            <head>
                <title><xsl:value-of select="tns:WebPage/tns:headPage/tns:titleText"/></title>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                 <link rel="shortcut icon" href="../Pictures/interdarklogo.ico" />
                <link rel="stylesheet" href="changeemail.css"/>
                <link href='https://fonts.googleapis.com/css?family=Comic Neue' rel='stylesheet'/>
            </head>
            <body onload="loadTime()">
                <div id="loader"></div>
                <div id="wholeweb" style="display:none;">
                    <div class="topnav">   
                        <a id="logotext" class="glow" style="float:left;pointer-events: none;font-family:'Comic Neue';font-weight:bold;font-style: italic;"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:topMenuBar/tns:logoMenuItem"/></a>
                        <a onclick="logout()" style="cursor: pointer;display: block;" id="loggedin1"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:topMenuBar/tns:secondMenuItem"/></a>
                        <div class="dropdown" style="display: block;" id="loggedin2">
                            <button id="dropdownbtn" class="dropbtn"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:topMenuBar/tns:firstMenuItem/tns:firstMenuItemName"/></button>
                            <div class="dropdown-content">
                                <a href="../index.xml" id="firstDropMenuItem" ><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:topMenuBar/tns:firstMenuItem/tns:firstdropitem"/></a>
                                <a href="../ChangePasswordPage/changepassword.xml" id="secondDropMenuItem"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:topMenuBar/tns:firstMenuItem/tns:seconddropitem"/></a>
                                <a class="active" href="changeemail.xml" id="thirdDropMenuItem"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:topMenuBar/tns:firstMenuItem/tns:thirddropitem"/></a>
                            </div>
                        </div>
                    </div>
                    <div id="emailchangeform" style="display:none;">
                        <div class="container">
                            <h2 id="changeemailheader"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:emailChangeInterface/tns:emailChangeHeader"/></h2>
                            <p id="changeemailpara"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:emailChangeInterface/tns:emailChangeParagraph"/></p>
                        </div>

                        <div class="container" style="background-color:white">
                            <h2><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:emailChangeInterface/tns:emailChangeCurrentPasswordText"/></h2>
                            <input type="password" placeholder="Enter current password" name="mail" required="required" id="currentpassword_field"/>          
                            <h2><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:emailChangeInterface/tns:emailChangeNewEmailText"/></h2>
                            <input type="text" placeholder="Enter new email" name="mail" required="required" id="newemail_field"/>
                            <h2><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:emailChangeInterface/tns:emailChangeConfirmEmailText"/></h2>
                            <input type="text" placeholder="Confirm new email" name="mail" required="required" id="confirmemail_field"/>
                        </div>

                        <div class="container">
                            <button id="submitbutton" class ="glow2"  type="button" onclick="reauthenticate()"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:emailChangeInterface/tns:emailChangeSubmitButton"/></button>   
                        </div>
                    </div>
                </div>
                <!-- The core Firebase JS SDK is always required and must be listed first -->
                <script src="https://www.gstatic.com/firebasejs/8.6.1/firebase-app.js"></script>

                <!-- TODO: Add SDKs for Firebase products that you want to use
                    https://firebase.google.com/docs/web/setup#available-libraries -->
                <script src="https://www.gstatic.com/firebasejs/8.6.1/firebase-auth.js"></script>
                <script src="../firebaselogin.js"></script>  
                <script src="changeemail.js"></script>  
                <script src="changeemailload.js"></script>  
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>