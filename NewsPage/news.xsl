<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tns="https://interdark.com/NewsPage/news.xml">
    <xsl:output method="html" doctype-system="about:legacy-compat"/>
    <xsl:template match="/">
        <html>
            <head>
                <title><xsl:value-of select="tns:WebPage/tns:headPage/tns:titleText"/></title>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                 <link rel="shortcut icon" href="../Pictures/interdarklogo.ico" />
                <link rel="stylesheet" href="news.css"/>
                 <link href='https://fonts.googleapis.com/css?family=Comic Neue' rel='stylesheet'/>
            </head>
            <body onload="loadTime()">
                <div id="loader"></div>
                <div id="wholeweb" style="display:none;">
                    <div class="topnav">   
                        <a id="logotext" class="glow" style="float:left;pointer-events: none;font-family:'Comic Neue';font-weight:bold;font-style: italic;"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:topMenuBar/tns:logoMenuItem"/></a>
                        <a href="../AboutPage/about.xml" id="loggedout4" style="display: block;"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:topMenuBar/tns:fourthMenuItem"/></a>
                        <a href="../ContactPage/contact.xml" id="loggedout3" style="display: block;"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:topMenuBar/tns:thirdMenuItem"/></a>
                        <a href="news.xml" class="active" id="loggedout2" style="display: block;"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:topMenuBar/tns:secondMenuItem"/></a>
                        <a href="../index.xml" id="loggedout1" style="display: block;"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:topMenuBar/tns:firstMenuItem"/></a>
                    </div>
                <div id="blogpost">
                    <div class="header">
                        <h2 style="font-style: italic;"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:newsInterface/tns:mainNews/tns:newsHeader"/></h2>
                    </div>

                    <div class="row">
                        <div class="leftcolumn">
                            <div class="card">
                            <h2><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:newsInterface/tns:mainNews/tns:newsSubHeader"/></h2>
                            <h5><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:newsInterface/tns:mainNews/tns:newsHeaderDescription"/></h5>
                            <img id="heropic" src="../Pictures/hero.png"/>
                            <p style="color:white;"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:newsInterface/tns:mainNews/tns:newsParagraph1"/></p>
                            <p style="color:white;"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:newsInterface/tns:mainNews/tns:newsParagraph2"/></p>
                            </div>
                        </div>
                        <div class="rightcolumn">
                            <div class="card">
                            <h2><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:newsInterface/tns:aboutmeInterface/tns:aboutmeHeader"/></h2>
                            <img src="../Pictures/me.png" style="width:100px"/>
                            <p style="color:white;"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:newsInterface/tns:aboutmeInterface/tns:aboutmeParagraph"/></p>
                            </div>
                            <div class="card">
                            <h3><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:newsInterface/tns:myProjectsInterface/tns:myProjectsHeader"/></h3>
                                <div class="container">
                                    <img id="project1" src="../Pictures/embeddedsystems.jpg" style="width:100%; height:150px;padding: 20px;cursor: pointer;"/>
                                    <div class="overlay"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:newsInterface/tns:myProjectsInterface/tns:myProjectsImage1text"/></div>
                                </div>
                                <br/>
                                <div class="container">
                                    <img id="project2" src="../Pictures/appdevelopment.jpg" style="width:100%; height:150px;padding: 20px;cursor: pointer;"/><br/>
                                    <div class="overlay"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:newsInterface/tns:myProjectsInterface/tns:myProjectsImage2text"/></div>
                                </div>
                                <div class="container">
                                    <img id="project3" src="../Pictures/programming.png" style="width:100%; height:150px;padding: 20px;cursor: pointer;"/>
                                    <div class="overlay"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:newsInterface/tns:myProjectsInterface/tns:myProjectsImage3text"/></div>
                                </div>
                            </div>
                            <div class="card">
                            <h3><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:newsInterface/tns:followmeInterface/tns:followmeHeading"/></h3>
                            <p style="color:white;"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:newsInterface/tns:followmeInterface/tns:followmeparagraphtextp1"/><a href="https://github.com/kevinxshao"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:newsInterface/tns:followmeInterface/tns:followmeparagraphtextp2"/></a></p>
                            </div>
                        </div>
                    </div>

                    <div class="footer">
                        <h2><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:pageInterface/tns:pagenumbertext1"/><a href="news.xml" style="cursor: pointer;"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:pageInterface/tns:pagenumbertext2"/></a></h2>
                    </div>        
                    </div>
                </div>
                   
                <script src="newsload.js"></script>  
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>