<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tns="https://interdark.com/LoggedinMenu/Birthday/Aleena/aleena.xml">
    <xsl:output method="html" doctype-system="about:legacy-compat"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>InterDark | Aleena Birthday</title>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                 <link rel="shortcut icon" href="../../../Pictures/interdarklogo.ico" />
                <link rel="stylesheet" href="aleena.css"/>
                <link href='https://fonts.googleapis.com/css?family=Comic Neue' rel='stylesheet'/>
                <link href='https://fonts.googleapis.com/css?family=Sofia' rel='stylesheet'/>
                <link href='https://fonts.googleapis.com/css?family=Londrina Solid' rel='stylesheet'/>
            </head>
            <body onload="loadTime()" id="body1">
                <div id="loader"></div>
                <div id="wholeweb" style="display:none;">
                    <div class="topnav">   
                        <a id="logotext" class="glow" style="float:left;pointer-events: none;font-family:'Comic Neue';font-weight:bold;font-style: italic;">InterDark</a>
                    </div>
                <div id="blogpost">
                    <div class="header">
                        <h2 class="zoom" style="font-style: italic;cursor: pointer;" id="birthdayName" onclick="playAudio()">Happy Birthday Aleena!</h2>
                    </div>

                    <div class="row">
                        <div class="column">
                            <div class="card">
                           <div class="coupon">
                            <div class="container2">
                                <h3 style="text-align:center;font-size:40px;color:black;pointer-events: none;" id="birthdayHead">H A<a id="makefaded" class="blowoutcandles" style="cursor: pointer;" onclick="lightup1()">u</a> P P Y <br/>
                                Bi R<a id="makefaded2">n</a> Th D<a id="makefaded3">b</a> A<a id="makefaded4">u</a> Y</h3>
                            </div>
                            <img src="../../../Pictures/birthdaycardaleena.png" alt="BirthdayCard" class="center" id="birthdaycard"/>
                            <div class="container" style="background-color:#333">
                                <h2 style="text-align: center;pointer-events: none;" id="birthdayName"><b>Aleena</b></h2> 
                                <p id="birthdayText" style="pointer-events: none;">Hey Aleena or should I say...Hey Doc! No wait let me say... Whats up Doc? Happy Birthday. You wondering why these words are up in flames? Its cause Im spittin fire.</p>
                            </div>
                     
                            </div>
                            </div>
                        </div>
                        
                    </div>

                    <div class="footer">
                        <h2><a href="../../../index.xml" style="cursor: pointer;">Leave The Party!</a></h2>
                    </div>        
                    </div>
                </div>
                <audio id="audio" src="../../../Songs/bdaysong.mp3" loop ="loop"></audio>
                 <!-- The core Firebase JS SDK is always required and must be listed first -->
                <script src="https://www.gstatic.com/firebasejs/8.6.1/firebase-app.js"></script>

                <!-- TODO: Add SDKs for Firebase products that you want to use
                    https://firebase.google.com/docs/web/setup#available-libraries -->
                <script src="https://www.gstatic.com/firebasejs/8.6.1/firebase-auth.js"></script>
                <script src="../../../firebaselogin.js"></script>  
                <script src="aleena.js"></script>  
                <script src="aleenaload.js"></script>  
              
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>