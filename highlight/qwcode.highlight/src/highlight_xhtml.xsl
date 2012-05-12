<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xslthl="http://xslthl.sf.net">

	<!-- fallback -->
	<xsl:template match="xslthl:*">
		<xsl:value-of select="." />
	</xsl:template>
	
	<xsl:template match="xslthl:keyword">
		<span class="xslthl-keyword">
			<xsl:value-of select="." />
		</span>
	</xsl:template>
	
	<xsl:template match="xslthl:string">
		<span class="xslthl-string">
			<xsl:value-of select="." />
		</span>
	</xsl:template>
	
	<xsl:template match="xslthl:multiline-comment">
		<span class="xslthl-multiline-comment">
			<xsl:value-of select="." />
		</span>
	</xsl:template>
	
	<xsl:template match="xslthl:comment">
		<span class="xslthl-comment">
			<xsl:value-of select="." />
		</span>
	</xsl:template>
	
	<xsl:template match="xslthl:doccomment">
		<span class="xslthl-doccomment">
			<xsl:value-of select="." />
		</span>
	</xsl:template>
	
	<xsl:template match="xslthl:doctype">
		<span class="xslthl-doctype">
			<xsl:value-of select="." />
		</span>
	</xsl:template>

	<xsl:template match="xslthl:directive">
		<span class="xslthl-directive">
			<xsl:value-of select="." />
		</span>
	</xsl:template>


	<xsl:template match="xslthl:annotation">
		<span class="xslthl-annotation">
			<xsl:value-of select="." />
		</span>
	</xsl:template>

	<!-- default XML styles -->

	<xsl:template match="xslthl:tag">
		<span class="xslthl-tag">
			<xsl:value-of select="." />
		</span>
	</xsl:template>
	
	<xsl:template match="xslthl:attribute">
		<span class="xslthl-attribute">
			<xsl:value-of select="." />
		</span>
	</xsl:template>
	
	<xsl:template match="xslthl:value">
		<span class="xslthl-value">
			<xsl:value-of select="." />
		</span>
	</xsl:template>
	
	<xsl:template match="xslthl:xslt">
		<span class="xslthl-xslt">
			<xsl:value-of select="." />
		</span>
	</xsl:template>
	
</xsl:stylesheet>	