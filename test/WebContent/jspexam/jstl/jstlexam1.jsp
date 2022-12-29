<%@ page language="java" %>
<%@ page isELIgnored ="false" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<title>JSTL</title>
</head>
<body bgcolor="#FFFFFF">
<c:set var="variableName" value="Setting value." scope="session"/><br>
<c:if test='${variableName == "Setting value."}'>If Test Passed</c:if><br>
<c:choose>
<c:when test='${variableName != "Setting value."}'>When Test Passed</c:when>
<c:otherwise>Otherwise Called</c:otherwise>
</c:choose>
</body>
</html>
