<?xml version="1.0" encoding="euc-kr" ?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" encoding="euc-kr"/>
<xsl:template match="/">
<메일정보>
   <전송자><xsl:value-of select="MAIL/HEADER/SENDED"/></전송자>
   <메일내용><xsl:value-of select="MAIL/BODY"/></메일내용>
</메일정보>   	
</xsl:template>
</xsl:stylesheet>

