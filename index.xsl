<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <!--disable-output-escaping set to yes makes it so it actually displays the < symbol and not just the &lt; text>-->
        <xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
        <html>
            <head>

            </head>
            <body>
                <xsl:text>hello world</xsl:text>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>