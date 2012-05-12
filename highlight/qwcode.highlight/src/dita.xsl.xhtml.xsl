<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="2.0" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="xslthl.xsl"/>
<xsl:import href="highlight_xhtml.xsl"/>

<xsl:param name="xslthl.config" />

<xsl:template match="*[contains(@class, ' pr-d/codeblock ')]">
	<pre>
    <xsl:call-template name="syntax-highlight">
        <xsl:with-param name="language" select="@outputclass" />
        <xsl:with-param name="source" select="." />
        <xsl:with-param name="config" select="$xslthl.config" />
    </xsl:call-template>
    </pre>
</xsl:template>

<xsl:template match="/|node()|@*" mode="gen-user-styles" >
  <link rel="stylesheet" type="text/css" href="{$PATH2PROJ}qwcode.highlight.css" />
  <xsl:next-match>
	<xsl:fallback>
		<xsl:message>XSLT 1.0 processors can't do this</xsl:message>
	</xsl:fallback>
  </xsl:next-match>  
  
</xsl:template>


</xsl:stylesheet>
