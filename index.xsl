<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  xmlns:tns="https://interdark.com/index.xml">
    <xsl:output method="html" doctype-system="about:legacy-compat"/>
    <xsl:template match="/">
        <!--disable-output-escaping set to yes makes it so it actually displays the < symbol and not just the &lt; text>-->
        <html>
            <head>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                <title><xsl:value-of select="tns:WebPage/tns:headPage/tns:titleText"/></title>
                <link rel="stylesheet" href="index.css"/>
                <link href='https://fonts.googleapis.com/css?family=Comic Neue' rel='stylesheet'/>
            </head>
            <body>
                <div class="topnav">   
                    <a class="glow" style="float:left;pointer-events: none;font-family:'Comic Neue';font-weight:bold;font-style: italic;"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:topMenuBar/tns:logoMenuItem"/></a>
                    <a onclick="logout()" style="cursor: pointer;display: none;" id="loggedin1">Logout</a>
                    <div class="dropdown" style="display: none;" id="loggedin2">
                        <button id="dropdownbtn" class="dropbtn">My Account</button>
                        <div class="dropdown-content">
                            <a href="#">Home</a>
                            <a href="#">Shop</a>
                            <a href="#">Stats</a>
                        </div>
                    </div>
                    <a href="#about" id="loggedout4"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:topMenuBar/tns:fourthMenuItem"/></a>
                    <a href="#contact" id="loggedout3"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:topMenuBar/tns:thirdMenuItem"/></a>
                    <a href="news.xml" id="loggedout2"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:topMenuBar/tns:secondMenuItem"/></a>
                    <a class="active" href="#login" id="loggedout1"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:topMenuBar/tns:firstMenuItem"/></a>
                </div>
                <div id="login_div">

                    <div class="imgcontainer">
                        <img src="Pictures/user_login.png" alt="Avatar" class="avatar"/> 
                    </div>

                    <div class="container">
                        <label for="uname"><b><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:loginInterface/tns:usernameInputTitle"/></b></label>
                        <input type="text" placeholder="Enter Username" name="uname" required="required" id="email_field"/>

                        <label for="psw"><b><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:loginInterface/tns:passwordInputTitle"/></b></label>
                        <input type="password" placeholder="Enter Password" name="psw" required="required" id="password_field"/>
                                
                        <button class="glow2" onclick="login()"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:loginInterface/tns:loginButtonName"/></button>
                        <label>
                            <input type="checkbox" checked="checked" name="remember"/><xsl:text> </xsl:text><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:loginInterface/tns:rememberMeButtonName"/>
                         </label>
                    </div>

                    <div class="container" style="background-color:#f1f1f1">
                        <button type="button" class="signupbtn" onclick="document.getElementById('id01').style.display='block'"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:loginInterface/tns:cancelButtonName"/></button>
                        <span class="psw"><a href="#"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:loginInterface/tns:forgetText"/><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:loginInterface/tns:forgetPasswordText"/></a></span>
                    </div>

                </div>
                <div id="user_div" style="display: none;">
                    <h3 id="user_header">Welcome User : </h3>
                    <p style="text-align: center;font-size:20px;"> Welcome to InterDark. Please choose your destination below.</p>
                    <div class="slideshow-container">
                        <div class="mySlides fade">
                        <div class="numbertext">1 / 3</div>
                        <img src="Pictures/courses.png" style="width:100%"/>
                        <div class="text">Courses</div>
                        </div>

                        <div class="mySlides fade">
                        <div class="numbertext">2 / 3</div>
                        <img src="Pictures/games.png" style="width:100%"/>
                        <div class="text">Games</div>
                        </div>

                        <div class="mySlides fade">
                        <div class="numbertext">3 / 3</div>
                        <img src="Pictures/birthday.png" style="width:100%"/>
                        <div class="text">Birthday</div>
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
                            <label for="uname"><b>Email</b></label>
                            <input type="text" placeholder="Enter Email" name="uname" required="required"/>

                            <label for="psw"><b>Password</b></label>
                            <input type="password" placeholder="Enter Password" name="psw" required="required"/>
                                
                            <label for="confirmpsw"><b>Confirm Password</b></label>
                            <input type="password" placeholder="Confirm Password" name="confirmpsw" required="required"/>    

                            <button class="signupbtn2">Sign Up</button>
                            <label>
                                <input type="checkbox" checked="checked" name="remember"/> Remember me
                            </label>
                        </div>

                        <div class="container" style="background-color:#f1f1f1">
                            <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
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
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>