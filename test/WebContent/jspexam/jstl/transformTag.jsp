<%@ page pageEncoding="euc-kr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %> 
<c:import var="xmlsrc" url="http://localhost:8080/edu/jstl/xsltest.xml" charEncoding="euc-kr"/>
<c:import var="xslsrc1" url="http://localhost:8080/edu/jstl/xsltest-xml.xsl" charEncoding="euc-kr" />
<c:import var="xslsrc2" url="http://localhost:8080/edu/jstl/xsltest-html.xsl" charEncoding="euc-kr" />
<c:if test="${param.type == 'xml'}">
<x:transform xml="${xmlsrc}" xslt="${xslsrc1}"/>
</c:if> 

<c:if test="${param.type == 'html'}">
<x:transform xml="${xmlsrc}" xslt="${xslsrc2}"/>
</c:if>

<c:if test="${empty param.type}">
<font color=red>type=xml 또는 type=html 이라는 Query 를 전달해 주세요.</font>
</c:if>

