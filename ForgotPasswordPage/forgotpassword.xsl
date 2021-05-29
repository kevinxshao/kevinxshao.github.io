<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" doctype-system="about:legacy-compat"/>
     <xsl:template match="/">
        <html>
            <head>
                <title>InterDark Reset your password</title>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                 <link rel="shortcut icon" href="../Pictures/interdarklogo.ico" />
                <link rel="stylesheet" href="forgotpassword.css"/>
                <link href='https://fonts.googleapis.com/css?family=Comic Neue' rel='stylesheet'/>
            </head>
            <body onload="loadTime()">
                <div id="loader"></div>
                <div id="wholeweb" style="display:none;">
                    <div class="topnav">   
                        <a id="logotext" class="glow" style="float:left;pointer-events: none;font-family:'Comic Neue';font-weight:bold;font-style: italic;">InterDark</a>
                        <a href="#about" id="loggedout4" style="display: block;">About</a>
                        <a href="#contact" id="loggedout3" style="display: block;">Contact</a>
                        <a href="news.xml" id="loggedout2" style="display: block;">News</a>
                        <a href="../index.xml" id="loggedout1" style="display: block;">Login</a>
                    </div>        
                </div>
                <div id="passwordresetform" style="display:none;">
                    <div class="container">
                        <h2 id="forgotpasswordheader">Forgot your password?</h2>
                        <p id="forgotpasswordpara">Fill out your email below</p>
                    </div>

                    <div class="container" style="background-color:white">
                        <input type="text" placeholder="Enter Email" name="mail" required="required"/>
                    </div>

                    <div class="container">
                        <button id="submitbutton" class ="glow2"  type="button">Submit</button>   
                    </div>
                </div>

                <script src="forgotpasswordload.js"> </script>  
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>