<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.emc.com/em/2012/07/univmax/restapi/performance" xmlns:ns2="http://www.emc.com/em/2012/07/univmax/restapi/common" xmlns:ns3="http://www.emc.com/em/2012/07/univmax/restapi/mobile">
	<xsl:output method="xml" indent="yes" name="xml"/>
	<xsl:param name="request"/>
	<xsl:variable name="device" select="$request//ns2:symmetrixId"/>
	<xsl:variable name="director" select="$request//ns2:directorId"/>
	<xsl:variable name="filePath" select="'tmp/rdfdirectortmp2/'"/>
	<xsl:variable name="outputPath" select="'tmp/rdfdirectorout/'"/>
	<xsl:variable name="tempFilename" select="concat ( $filePath , $device, $director , '.metrics.xml' )"/>
	<xsl:variable name="outputFilename" select="concat ( $outputPath , $device, $director , '.out.xml' )"/>
	<xsl:variable name="deviceProperties" select="document($tempFilename)"/>
	<xsl:template match="/">
		<xsl:result-document href="{$outputFilename}" format="xml">
			<w4n>
				<xsl:copy-of select="$device" copy-namespaces="no"/>
				<xsl:copy-of select="$director" copy-namespaces="no"/>
				<xsl:copy-of select="/" copy-namespaces="no"/>
			</w4n>
		</xsl:result-document>
	</xsl:template>
</xsl:stylesheet>