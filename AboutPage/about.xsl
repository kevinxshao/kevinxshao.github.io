<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tns="https://interdark.com/AboutPage/about.xml">
    <xsl:output method="html" doctype-system="about:legacy-compat"/>
     <xsl:template match="/">
        <html>
            <head>
                <title><xsl:value-of select="tns:WebPage/tns:headPage/tns:titleText"/></title>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                 <link rel="shortcut icon" href="../Pictures/interdarklogo.ico" />
                <link rel="stylesheet" href="about.css"/>
                <link href='https://fonts.googleapis.com/css?family=Comic Neue' rel='stylesheet'/>
            </head>
            <body onload="loadTime()">
                <div id="loader"></div>
                <div id="wholeweb" style="display:none;">
                    <div class="topnav">   
                        <a id="logotext" class="glow" style="float:left;pointer-events: none;font-family:'Comic Neue';font-weight:bold;font-style: italic;"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:topMenuBar/tns:logoMenuItem"/></a>
                        <a href="about.xml" class="active" id="loggedout4" style="display: block;"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:topMenuBar/tns:fourthMenuItem"/></a>
                        <a href="#contact" id="loggedout3" style="display: block;"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:topMenuBar/tns:thirdMenuItem"/></a>
                        <a href="../NewsPage/news.xml" id="loggedout2" style="display: block;"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:topMenuBar/tns:secondMenuItem"/></a>
                        <a href="../index.xml" id="loggedout1" style="display: block;"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:topMenuBar/tns:firstMenuItem"/></a>
                    </div>       
                  
                    <div id="meetteam"> 
                        <div class="header">
                            <h2 id="teamhead" style="font-style: italic;font-size: 40px;color:white;"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:meettheteamInterface/tns:meettheteamheader"/></h2>
                            <p id="teampara" style="font-size: 25px;color:white;"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:meettheteamInterface/tns:meettheteamParagraph"/></p>
                        </div>

                    <br/>
                        <div class="row">
                            <div class="column">
                                <div class="card">
                                <img src="../Pictures/superhero.png" alt="Profile Picture" style="width:100%;"/>
                                <div class="container">
                                    <h2><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:meettheteamInterface/tns:member1/tns:member1Name"/></h2>
                                    <p class="title"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:meettheteamInterface/tns:member1/tns:member1Job"/></p>
                                    <p><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:meettheteamInterface/tns:member1/tns:member1Paragraph1"/></p>
                                    <p><button onclick="window.location='https://github.com/kevinxshao'" class="button"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:meettheteamInterface/tns:member1/tns:member1Contact"/></button></p>
                                </div>
                                </div>
                            </div>
                            <div class="column">
                                <div class="card">
                                <img src="../Pictures/sportman.png" alt="Profile Picture" style="width:100%;"/>
                                <div class="container">
                                    <h2><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:meettheteamInterface/tns:member2/tns:member2Name"/></h2>
                                    <p class="title"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:meettheteamInterface/tns:member2/tns:member2Job"/></p>
                                    <p><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:meettheteamInterface/tns:member2/tns:member2Paragraph2"/></p>
                                    <p><button onclick="window.location='https://github.com/kevinxshao'" class="button"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:meettheteamInterface/tns:member2/tns:member2Contact"/></button></p>
                                </div>
                                </div>
                            </div>
                            <div class="column">
                                <div class="card">
                                <img src="../Pictures/stickfood.png" alt="Profile Picture" style="width:100%;"/>
                                <div class="container">
                                    <h2><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:meettheteamInterface/tns:member3/tns:member3Name"/></h2>
                                    <p class="title"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:meettheteamInterface/tns:member3/tns:member3Job"/></p>
                                    <p><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:meettheteamInterface/tns:member3/tns:member3Paragraph3"/></p>
                                    <p><button onclick="window.location='https://github.com/kevinxshao'" class="button"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:meettheteamInterface/tns:member3/tns:member3Contact"/></button></p>
                                </div>
                                </div>
                            </div>
                            <div class="column">
                                <div class="card">
                                <img src="../Pictures/bluestick.png" alt="Profile Picture" style="width:100%;"/>
                                <div class="container">
                                    <h2><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:meettheteamInterface/tns:member4/tns:member4Name"/></h2>
                                    <p class="title"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:meettheteamInterface/tns:member4/tns:member4Job"/></p>
                                    <p><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:meettheteamInterface/tns:member4/tns:member4Paragraph4"/></p>
                                    <p><button onclick="window.location='https://github.com/kevinxshao'" class="button"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:meettheteamInterface/tns:member4/tns:member4Contact"/></button></p>
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