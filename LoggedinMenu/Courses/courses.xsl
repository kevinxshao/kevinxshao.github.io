<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tns="https://interdark.com/LoggedinMenu/Courses/courses.xml">
    <xsl:output method="html" doctype-system="about:legacy-compat"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>InterDark | Courses</title>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                 <link rel="shortcut icon" href="../../Pictures/interdarklogo.ico" />
                <link rel="stylesheet" href="courses.css"/>
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
                        <h2 style="font-style: italic;">Courses</h2>
                    </div>

                    <div class="row">
                        <div class="column">
                            <div class="card">
                            <h2 style="text-align: center;">Pre Algebra</h2>
                            <img src="../../Pictures/Algebra.png" style="width:300px%; height:300px"/>
                            </div>
                            <div class="card">
                            <h2 style="text-align: center;">Intermediate Algebra</h2>
                            <img src="../../Pictures/intermediateAlgebra.png" style="width:300px; height:300px"/>
                            </div>
                            <div class="card">
                            <h2 style="text-align: center;">Geometry</h2>
                            <img src="../../Pictures/Geometry.png" style="width:300px; height:300px"/>
                            </div>
                            <div class="card">
                            <h2 style="text-align: center;">Statistics</h2>
                            <img src="../../Pictures/Statistics.png" style="width:300px; height:300px"/>
                            </div>
                            <div class="card">
                            <h2 style="text-align: center;">Calculus 1</h2>
                            <img src="../../Pictures/Calculus1.png" style="width:300px; height:300px"/>
                            </div>
                            <div class="card">
                            <h2 style="text-align: center;">Calculus 2</h2>
                            <img src="../../Pictures/Calculus2.png" style="width:300px; height:300px"/>
                            </div>
                            <div class="card">
                            <h2 style="text-align: center;">Calculus 3</h2>
                            <img src="../../Pictures/Calculus3.png" style="width:300px; height:300px"/>
                            </div>
                            
                        </div>
                        
                    </div>

                    <div class="footer">
                        <h2><a href="../../index.xml" style="cursor: pointer;">Go Home</a></h2>
                    </div>        
                    </div>
                </div>
                 <!-- The core Firebase JS SDK is always required and must be listed first -->
                <script src="https://www.gstatic.com/firebasejs/8.6.1/firebase-app.js"></script>

                <!-- TODO: Add SDKs for Firebase products that you want to use
                    https://firebase.google.com/docs/web/setup#available-libraries -->
                <script src="https://www.gstatic.com/firebasejs/8.6.1/firebase-auth.js"></script>
                <script src="../../firebaselogin.js"></script>  
                <script src="courses.js"></script>  
                <script src="coursesload.js"></script>  
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>