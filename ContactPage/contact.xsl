<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tns="https://interdark.com/ContactPage/contact.xml">
    <xsl:output method="html" doctype-system="about:legacy-compat"/>
     <xsl:template match="/">
        <html>
            <head>
                <title>InterDark | Contact</title>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                 <link rel="shortcut icon" href="../Pictures/interdarklogo.ico" />
                <link rel="stylesheet" href="contact.css"/>
                <link href='https://fonts.googleapis.com/css?family=Comic Neue' rel='stylesheet'/>
            </head>
            <body onload="loadTime()" id="body1">
                <div id="loader"></div>
                <div id="wholeweb" style="display:none;">
                    <div class="topnav">   
                        <a id="logotext" class="glow" style="float:left;pointer-events: none;font-family:'Comic Neue';font-weight:bold;font-style: italic;"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:topMenuBar/tns:logoMenuItem"/></a>
                        <a href="../AboutPage/about.xml"  id="loggedout4" style="display: block;"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:topMenuBar/tns:fourthMenuItem"/></a>
                        <a href="contact.xml" class="active" id="loggedout3" style="display: block;"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:topMenuBar/tns:thirdMenuItem"/></a>
                        <a href="../NewsPage/news.xml" id="loggedout2" style="display: block;"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:topMenuBar/tns:secondMenuItem"/></a>
                        <a href="../index.xml" id="loggedout1" style="display: block;"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:topMenuBar/tns:firstMenuItem"/></a>
                    </div>  

                    <div id="discordlink">
                        <div class="header">
                            <h2 id="contacthead" style="font-style: italic;"><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:discordlinkInterface/tns:discordlinkHeader"/><br/><xsl:value-of select="tns:WebPage/tns:bodyPage/tns:discordlinkInterface/tns:discordlinkParagraph"/></h2>
                    
                        </div>
                    </div>
                    
                    <a href="https://discord.gg/yZQyTzmZMt">
                        <img src="../Pictures/discord.png" alt="discordlink" class="center" style="border: 10px solid #333;cursor: pointer; max-width:350px; max-height:350px;"/>
                    </a>   


                </div>
                <script src="contactload.js"></script>  
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>