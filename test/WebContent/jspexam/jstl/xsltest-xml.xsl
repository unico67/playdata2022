<?xml version="1.0" encoding="euc-kr" ?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" encoding="euc-kr"/>
<xsl:template match="/">
<��������>
   <������><xsl:value-of select="MAIL/HEADER/SENDED"/></������>
   <���ϳ���><xsl:value-of select="MAIL/BODY"/></���ϳ���>
</��������>   	
</xsl:template>
</xsl:stylesheet>

