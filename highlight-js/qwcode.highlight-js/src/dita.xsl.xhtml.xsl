<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="2.0" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/|node()|@*" mode="gen-user-styles" >

  <link rel="stylesheet" type="text/css" href="{$PATH2PROJ}prettify-2009-01-08/prettify.css" />  
  
  <xsl:next-match>
	<xsl:fallback>
		<xsl:message>XSLT 1.0 processors can't do this</xsl:message>
	</xsl:fallback>
  </xsl:next-match>  
  
</xsl:template>

<xsl:template match="/|node()|@*" mode="gen-user-scripts" >

  <script type="text/javascript" src="{$PATH2PROJ}prettify-2009-01-08/prettify.js">//filler</script>
  
  <xsl:next-match>
	<xsl:fallback>
		<xsl:message>XSLT 1.0 processors can't do this</xsl:message>
	</xsl:fallback>
  </xsl:next-match>  
  
</xsl:template>

<xsl:template match="/|node()|@*" mode="gen-user-footer">

  <script type="text/javascript">prettyPrint();</script>

  <xsl:next-match>
	<xsl:fallback>
		<xsl:message>XSLT 1.0 processors can't do this</xsl:message>
	</xsl:fallback>
  </xsl:next-match>  
</xsl:template>

</xsl:stylesheet>
