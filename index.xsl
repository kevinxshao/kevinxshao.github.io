<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" doctype-system="about:legacy-compat" />
    <xsl:template match="/">
        <!--disable-output-escaping set to yes makes it so it actually displays the < symbol and not just the &lt; text>-->
        <html>
            <head>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                <title><xsl:value-of select="WebPage/headPage/titleText"/></title>
                <link rel="stylesheet" href="index.css"/>
                <link href='https://fonts.googleapis.com/css?family=Comic Neue' rel='stylesheet'/>
            </head>
            <body>
                <div class="topnav">   
                    <a style="float:left;pointer-events: none;font-family: 'Comic Neue';font-size:18px;font-weight:bold;font-style: italic;">InterDark</a>
                    <a href="#about">About</a>
                    <a href="#contact">Contact</a>
                    <a href="#news">News</a>
                    <a class="active" href="#login">Login</a>
                  
                </div>

                <form method="post">
                    <div class="imgcontainer">
                        <img src="Pictures/gingerbread.png" alt="Avatar" class="avatar"/> 
                    </div>

                    <div class="container">
                        <label for="uname"><b>Username</b></label>
                        <input type="text" placeholder="Enter Username" name="uname" required="required"/>

                        <label for="psw"><b>Password</b></label>
                        <input type="password" placeholder="Enter Password" name="psw" required="required"/>
                            
                        <button type="submit">Login</button>
                        <label>
                            <input type="checkbox" checked="checked" name="remember"/> Remember me
                        </label>
                    </div>

                    <div class="container" style="background-color:#f1f1f1">
                        <button type="button" class="cancelbtn">Cancel</button>
                        <span class="psw">Forgot <a href="#">password?</a></span>
                    </div>
                </form>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>