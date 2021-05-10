<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" doctype-system="about:legacy-compat" />
    <xsl:template match="/">
        <!--disable-output-escaping set to yes makes it so it actually displays the < symbol and not just the &lt; text>-->
        <html>
            <head>
                <title><xsl:value-of select="WebPage/headPage/titleText"/></title>
            </head>
            <body>
                <xsl:text>hello world</xsl:text>
                <xsl:value-of select="WebPage/headPage/titleText"/>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>