<?xml version="1.0" encoding="euc-kr" ?> 
<xsl:stylesheet  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
 <html>
   <body>
	   <table border="1" width="535" bordercolor="#000000">
 	    <tr>	    
	      <td width="93" rowspan="3" align="left">HEADER</td>
	      <td width="87" align="left"><font size="2">SENDED</font></td>
	      <td width="339" align="left"><xsl:value-of select="MAIL/HEADER/SENDED"/></td>
	    </tr>
	    <tr>
	      <td width="87" align="left"><font size="2">RECEIVED</font></td>
	      <td width="339"><xsl:value-of select="MAIL/HEADER/RECEIVED"/></td>
		  </tr>
	    <tr>
	      <td width="87" align="left"><font size="2">TITLE</font></td>
	      <td width="339" align="left"><xsl:value-of select="MAIL/HEADER/TITLE"/></td>
	    </tr>
	    <tr>
	      <td width="186" colspan="2" align="left">BODY</td>
 	      <td width="333" align="left"><xsl:value-of select="MAIL/BODY"/></td>
	    </tr>
	   </table>
   </body>
 </html>
</xsl:template>
</xsl:stylesheet>

