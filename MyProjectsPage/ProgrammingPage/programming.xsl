<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tns="https://interdark.com/ProgrammingPage/programming.xml">
    <xsl:output method="html" doctype-system="about:legacy-compat"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>InterDark | Programming</title>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                 <link rel="shortcut icon" href="../../Pictures/interdarklogo.ico" />
                <link rel="stylesheet" href="programming.css"/>
                 <link href='https://fonts.googleapis.com/css?family=Comic Neue' rel='stylesheet'/>
            </head>
            <body onload="loadTime()" id="body1">
                <div id="loader"></div>
                <div id="wholeweb" style="display:none;">
                    <div class="topnav">   
                        <a id="logotext" class="glow" style="float:left;pointer-events: none;font-family:'Comic Neue';font-weight:bold;font-style: italic;">InterDark</a>
                    </div>
                <div id="blogpost">
                    <div class="header">
                        <h2 style="font-style: italic;">Programming</h2>
                    </div>

                    <div class="row">
                        <div class="column">
                            <div class="card">
                            <h2>Java Library</h2>
                            <h5>Work in Progress</h5>
                            <p style="color:white;">Work in Progress</p>
                            </div>
                        </div>
                        <div class="column">
                            <div class="card">
                            <h2>Work in Progress</h2>
                            <h5>Work in Progress</h5>
                            <p style="color:white;">Work in Progress</p>
                            </div>
                        </div>
                    </div>

                    <div class="footer">
                        <h2><a href="../../NewsPage/news.xml" style="cursor: pointer;">Go Home</a></h2>
                    </div>        
                    </div>
                </div>
                   
                <script src="programmingload.js"></script>  
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>