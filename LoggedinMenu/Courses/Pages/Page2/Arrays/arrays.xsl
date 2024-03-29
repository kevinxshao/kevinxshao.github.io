<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tns="https://interdark.com/LoggedinMenu/Courses/courses.xml">
    <xsl:output method="html" doctype-system="about:legacy-compat"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>InterDark | Courses</title>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                 <link rel="shortcut icon" href="../../../../../Pictures/interdarklogo.ico" />
                 <link rel="stylesheet" href="arrays.css"/>
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
                        <h2 style="font-style: italic;">Arrays</h2>
                    </div>

                    <div class="row">
                        <div class="column">
                            <div class="card">
                            <h2 style="text-align: center;">Hello welcome to arrays</h2>
                            </div>      
                        </div>
                         <div class="column">
                            <div class="card">
                                <div class="headercode"> InterDark IDE </div>
                                <div class="editor" id="editor"></div>
                                <div class="button-container">
                                    <button class="btn" onclick="executeCode()"> Run </button>
                                </div>
                                <div id="output"></div>
                            </div>      
                        </div>
                        
                    </div>

                    <div class="footer">
                        <h2><a href="../courses.xml" style="cursor: pointer;">Exit Course</a></h2>
                    </div>        
                    </div>
                </div>
                 <!-- The core Firebase JS SDK is always required and must be listed first -->
                <script src="https://www.gstatic.com/firebasejs/8.6.1/firebase-app.js"></script>

                <!-- TODO: Add SDKs for Firebase products that you want to use
                    https://firebase.google.com/docs/web/setup#available-libraries -->
                <script src="https://www.gstatic.com/firebasejs/8.6.1/firebase-auth.js"></script>
                <script src="../../../../../firebaselogin.js"></script>  
                <script src="arrays.js"></script>  
                <script src="arraysload.js"></script>
                <script src="lib/ace.js"></script>  
                <script src="lib/ext-language_tools.js"></script>  
                <script src="lib/mode-javascript.js"></script>  
                <script src="lib/theme-dracula.js"></script>  
                <script src="lib/worker-javascript.js"></script>
                <script src="ide.js"></script>  
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>