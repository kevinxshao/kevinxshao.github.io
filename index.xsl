<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  xmlns:tns="https://interdark.com/index.xml">
    <xsl:output method="html" doctype-system="about:legacy-compat"/>
    <xsl:template match="/">
        <!--disable-output-escaping set to yes makes it so it actually displays the < symbol and not just the &lt; text>-->
        <html>
            <head>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                <title><xsl:value-of select="tns:WebPage/tns:headPage/tns:titleText"/></title>
                <link rel="shortcut icon" href="Pictures/interdarklogo.ico" />
                <link rel="stylesheet" href="index.css"/>
                <link href='https://fonts.googleapis.com/css?family=Comic Neue' rel='stylesheet'/>
               
            </head>
            <body onload="loadTime()">
                <div id="loader"></div>
                <div id="wholeweb" style="display:none;">
                    <div class="topnav">   
                        <a id="logotext" class="glow" style="float:left;pointer-events: none;font-family:'Comic Neue';font-weight:bold;font-style: italic;"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:topMenuBar/tns:logoMenuItem"/></a>
                        <a onclick="logout()" style="cursor: pointer;display: none;" id="loggedin1"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:topMenuBar/tns:signedinSecondMenuItem"/></a>
                        <div class="dropdown" style="display: none;" id="loggedin2">
                            <button id="dropdownbtn" class="dropbtn" onclick="location.href='index.xml'"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:topMenuBar/tns:signedinFirstMenuItem/tns:FirstMenuItemText"/></button>
                            <div class="dropdown-content">
                                <a href="index.xml"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:topMenuBar/tns:signedinFirstMenuItem/tns:dropMenuItems/tns:firstDropMenuItem"/></a>
                                <a href="#"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:topMenuBar/tns:signedinFirstMenuItem/tns:dropMenuItems/tns:secondDropMenuItem"/></a>
                                <a href="#"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:topMenuBar/tns:signedinFirstMenuItem/tns:dropMenuItems/tns:thirdDropMenuItem"/></a>
                            </div>
                        </div>
                        <a href="AboutPage/about.xml" id="loggedout4" style="display: none;"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:topMenuBar/tns:fourthMenuItem"/></a>
                        <a href="ContactPage/contact.xml" id="loggedout3" style="display: none;"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:topMenuBar/tns:thirdMenuItem"/></a>
                        <a href="NewsPage/news.xml" id="loggedout2" style="display: none;"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:topMenuBar/tns:secondMenuItem"/></a>
                        <a class="active" href="index.xml" id="loggedout1" style="display: none;"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:topMenuBar/tns:firstMenuItem"/></a>
                    </div>
                    <div id="login_div" style="display: none;">

                        <div class="imgcontainer">
                            <img src="Pictures/user_login.png" alt="Avatar" class="avatar"/> 
                        </div>

                        <div class="container">
                            <label for="email"><b><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:loginInterface/tns:usernameInputTitle"/></b></label>
                            <input type="text" placeholder="Enter Email" name="email" required="required" id="email_field"/>

                            <label for="psw"><b><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:loginInterface/tns:passwordInputTitle"/></b></label>
                            <input type="password" placeholder="Enter Password" name="psw" required="required" id="password_field"/>
                                    
                            <button id="logintext" class="glow2" onclick="login()"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:loginInterface/tns:loginButtonName"/></button>
                            <label>
                                <input type="checkbox" checked="checked" name="remember"/><xsl:text> </xsl:text><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:loginInterface/tns:rememberMeButtonName"/>
                            </label>
                        </div>

                        <div class="container" style="background-color:#f1f1f1">
                            <button id="signuptext" type="button" class="signupbtn" onclick="document.getElementById('id01').style.display='block'"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:loginInterface/tns:signupButtonName"/></button>
                            <span class="psw"><a href="ForgotPasswordPage/forgotpassword.xml"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:loginInterface/tns:forgetText"/><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:loginInterface/tns:forgetPasswordText"/></a></span>
                        </div>

                    </div>
                    <div id="user_div" style="display: none;">
                        <h3 id="user_header"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:loggedinInterface/tns:userHeadingText"/></h3>
                        <p id="user_para" style="text-align: center;font-size:20px;"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:loggedinInterface/tns:userParagraphText"/></p>
                        <p id="verify1" style="text-align: center;"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:loggedinInterface/tns:verifyText1"/></p>
                        <p id="verify2" style="text-align: center;"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:loggedinInterface/tns:verifyText2p1"/><a onclick="send_verification2()" style="cursor: pointer; text-decoration: underline;font-weight: bold;"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:loggedinInterface/tns:verifyText2p2"/></a><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:loggedinInterface/tns:verifyText2p3"/></p>
                        <div id="slideshowui" class="slideshow-container">
                            <div class="mySlides fade">
                            <div class="numbertext"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:loggedinInterface/tns:slideshowInterface/tns:slide1Page"/></div>
                            <img src="Pictures/courses.png" style="width:100%" id="slideshowpic1"/>
                            <div class="text"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:loggedinInterface/tns:slideshowInterface/tns:slide1Text"/></div>
                            </div>

                            <div class="mySlides fade">
                            <div class="numbertext"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:loggedinInterface/tns:slideshowInterface/tns:slide2Page"/></div>
                            <img src="Pictures/games.png" style="width:100%" id="slideshowpic2"/>
                            <div class="text"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:loggedinInterface/tns:slideshowInterface/tns:slide2Text"/></div>
                            </div>

                            <div class="mySlides fade">
                            <div class="numbertext"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:loggedinInterface/tns:slideshowInterface/tns:slide3Page"/></div>
                            <img src="Pictures/birthday.png" style="width:100%" id="slideshowpic3"/>
                            <div class="text"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:loggedinInterface/tns:slideshowInterface/tns:slide3Text"/></div>
                            </div>

                            <a class="prev" onclick="plusSlides(-1)">&lt;</a>
                            <a class="next" onclick="plusSlides(1)">&gt;</a>

                            </div>
                            <br/>

                            <div style="text-align:center">
                            <span class="dot" onclick="currentSlide(1)"></span> 
                            <span class="dot" onclick="currentSlide(2)"></span> 
                            <span class="dot" onclick="currentSlide(3)"></span> 
                        </div>
                    </div>

                    <div id="id01" class="modal">
                        <div class="modal-content animate">
                            <div class="imgcontainer2">
                            <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close">X</span>
                            </div>

                            <div class="container">
                                <h1><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:signupInterface/tns:signupHeaderText"/></h1>
                                <p><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:signupInterface/tns:signupParagraphText"/></p>

                                <label for="dname"><b><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:signupInterface/tns:nameInputTitle"/></b></label>
                                <input type="text" placeholder="Name" name="dname" required="required" id="displayname_create"/>

                                <label for="uname"><b><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:signupInterface/tns:emailInputTitle"/></b></label>
                                <input type="text" placeholder="Enter Email" name="uname" required="required" id="email_create"/>

                                <label for="psw"><b><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:signupInterface/tns:passwordInputTitle"/></b></label>
                                <input type="password" placeholder="Enter Password" name="psw" required="required" id="password_create"/>
                                    
                                <label for="confirmpsw"><b><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:signupInterface/tns:confirmPasswordInputTitle"/></b></label>
                                <input type="password" placeholder="Confirm Password" name="confirmpsw" required="required" id="password_confirm"/>    

                                <button id="signuptext2" class="signupbtn2" onclick="createAccount()"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:signupInterface/tns:signupButtonText"/></button>
                            </div>

                            <div class="container" style="background-color:#f1f1f1">
                                <button id="canceltext" type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:signupInterface/tns:cancelButtonText"/></button>
                            </div>
                        </div>
                    </div>
                </div>

                
                <!-- The core Firebase JS SDK is always required and must be listed first -->
                <script src="https://www.gstatic.com/firebasejs/8.6.1/firebase-app.js"></script>

                <!-- TODO: Add SDKs for Firebase products that you want to use
                    https://firebase.google.com/docs/web/setup#available-libraries -->
                <script src="https://www.gstatic.com/firebasejs/8.6.1/firebase-auth.js"></script>
                <script src="firebaselogin.js"> </script>      
                <script src="index.js"> </script>        
                <script src="indexmodal.js"> </script>  
                <script src="indexslideshow.js"> </script>  
                <script src="indexsignup.js"> </script>  
                <script src="indexload.js"> </script>  
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>