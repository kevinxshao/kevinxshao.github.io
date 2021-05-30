<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" doctype-system="about:legacy-compat"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>InterDark News</title>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                 <link rel="shortcut icon" href="../Pictures/interdarklogo.ico" />
                <link rel="stylesheet" href="news.css"/>
                 <link href='https://fonts.googleapis.com/css?family=Comic Neue' rel='stylesheet'/>
            </head>
            <body onload="loadTime()">
                <div id="loader"></div>
                <div id="wholeweb" style="display:none;">
                    <div class="topnav">   
                        <a id="logotext" class="glow" style="float:left;pointer-events: none;font-family:'Comic Neue';font-weight:bold;font-style: italic;">InterDark</a>
                        <a href="#about" id="loggedout4" style="display: block;">About</a>
                        <a href="#contact" id="loggedout3" style="display: block;">Contact</a>
                        <a href="news.xml" class="active" id="loggedout2" style="display: block;">News</a>
                        <a href="../index.xml" id="loggedout1" style="display: block;">Login</a>
                    </div>
                <div id="blogpost">
                    <div class="header">
                        <h2 style="font-style: italic;">InterDark News</h2>
                    </div>

                    <div class="row">
                        <div class="leftcolumn">
                            <div class="card">
                            <h2>Breaking News</h2>
                            <h5>InterDark Formation, May 29, 2021</h5>
                            <img id="heropic" src="../Pictures/hero.png"/>
                            <p style="color:white;">I am currently in the process of creating the InterDark website. So far we have completed the login feature, account creation feature, and reset password feature.</p>
                            <p style="color:white;">The next step to this website will be finishing the news blog, contact page and the meet the team page.</p>
                            </div>
                        </div>
                        <div class="rightcolumn">
                            <div class="card">
                            <h2>About Me</h2>
                            <img src="../Pictures/me.png" style="width:100px"/>
                            <p style="color:white;">Hi my name is Kevin and I am a Computer Engineer. I have a focus in Software Engineering but I also work on other fields such as Embedded Systems, Web Development and Android App Development. In my spare time I like to watch tv shows and play games. I am currently watching The Flash and Bad Batch. The game I currently play is osu.</p>
                            </div>
                            <div class="card">
                            <h3>My Projects</h3>
                                <div class="container">
                                    <img id="project1" src="../Pictures/embeddedsystems.jpg" style="width:100%; height:150px;padding: 20px;cursor: pointer;"/>
                                    <div class="overlay">Embedded Systems</div>
                                </div>
                                <br/>
                                <div class="container">
                                    <img id="project2" src="../Pictures/appdevelopment.jpg" style="width:100%; height:150px;padding: 20px;cursor: pointer;"/><br/>
                                    <div class="overlay">App Development</div>
                                </div>
                                <div class="container">
                                    <img id="project3" src="../Pictures/programming.png" style="width:100%; height:150px;padding: 20px;cursor: pointer;"/>
                                    <div class="overlay">Programming</div>
                                </div>
                            </div>
                            <div class="card">
                            <h3>Follow Me</h3>
                            <p style="color:white;">GitHub: <a href="https://github.com/kevinxshao">https://github.com/kevinxshao</a></p>
                            </div>
                        </div>
                    </div>

                    <div class="footer">
                        <h2>Page 1 / 1 <a href="news.xml" style="cursor: pointer;">Next Page</a></h2>
                    </div>        
                    </div>
                </div>
                   
                <script src="newsload.js"></script>  
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>