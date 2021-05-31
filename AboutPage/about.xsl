<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tns="https://interdark.com/AboutPage/about.xml">
    <xsl:output method="html" doctype-system="about:legacy-compat"/>
     <xsl:template match="/">
        <html>
            <head>
                <title>InterDark | About</title>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                 <link rel="shortcut icon" href="../Pictures/interdarklogo.ico" />
                <link rel="stylesheet" href="about.css"/>
                <link href='https://fonts.googleapis.com/css?family=Comic Neue' rel='stylesheet'/>
            </head>
            <body onload="loadTime()">
                <div id="loader"></div>
                <div id="wholeweb" style="display:none;">
                    <div class="topnav">   
                        <a id="logotext" class="glow" style="float:left;pointer-events: none;font-family:'Comic Neue';font-weight:bold;font-style: italic;">InterDark</a>
                        <a href="about.xml" class="active" id="loggedout4" style="display: block;">About</a>
                        <a href="#contact" id="loggedout3" style="display: block;">Contact</a>
                        <a href="../NewsPage/news.xml" id="loggedout2" style="display: block;">News</a>
                        <a href="../index.xml" id="loggedout1" style="display: block;">Login</a>
                    </div>       
                  
                    <div id="meetteam"> 
                        <div class="header">
                            <h2 id="teamhead" style="font-style: italic;font-size: 40px;color:white;">Meet The Team</h2>
                            <p id="teampara" style="font-size: 25px;color:white;">Below is all the members of the team along with a small description of each member.</p>
                        </div>

                    <br/>
                        <div class="row">
                            <div class="column">
                                <div class="card">
                                <img src="../Pictures/superhero.png" alt="Profile Picture" style="width:100%;"/>
                                <div class="container">
                                    <h2>Kevin Shao</h2>
                                    <p class="title">CEO &amp; Founder</p>
                                    <p>Hello I'm a Computer Engineer with a focus in Software Development. My hobbies include playing games, watching tv shows and developing Android Apps</p>
                                    <p><button onclick="window.location='https://github.com/kevinxshao'" class="button">Contact</button></p>
                                </div>
                                </div>
                            </div>
                            <div class="column">
                                <div class="card">
                                <img src="../Pictures/sportman.png" alt="Profile Picture" style="width:100%;"/>
                                <div class="container">
                                    <h2>Me</h2>
                                    <p class="title">Computer Engineer</p>
                                    <p>I enjoy Web Develpment. I have worked with HTML, CSS, JavaScript, XML, XSLT, XSD, and Xpath. Some hobbies I enjoy is I like to workout mainly doing calisthenics.</p>
                                    <p><button onclick="window.location='https://github.com/kevinxshao'" class="button">Contact</button></p>
                                </div>
                                </div>
                            </div>
                            <div class="column">
                                <div class="card">
                                <img src="../Pictures/stickfood.png" alt="Profile Picture" style="width:100%;"/>
                                <div class="container">
                                    <h2>Myself</h2>
                                    <p class="title">Programmer</p>
                                    <p>I enjoy Android App Develpment.</p>
                                    <p><button onclick="window.location='https://github.com/kevinxshao'" class="button">Contact</button></p>
                                </div>
                                </div>
                            </div>
                            <div class="column">
                                <div class="card">
                                <img src="../Pictures/bluestick.png" alt="Profile Picture" style="width:100%;"/>
                                <div class="container">
                                    <h2>I</h2>
                                    <p class="title">Embedded Systems</p>
                                    <p>I enjoy working with Arduino. I used Arduino to develop a drop system for a concert. It was used to drop tickets from the ceiling.</p>
                                    <p><button onclick="window.location='https://github.com/kevinxshao'" class="button">Contact</button></p>
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <script src="aboutload.js"></script>  
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>