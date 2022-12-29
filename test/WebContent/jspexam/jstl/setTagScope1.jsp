<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="color"  value="${'red-page'}" scope="page"/>
<c:set var="color"  value="${'blue-request'}" scope="request"/>
<c:set var="color" value="${'green-session'}" scope="session"/>
<c:set var="color"  value="${'yellow-application'}" scope="application"/>

변수 color = ${color} <br>
변수 color = ${color} <br>
변수 color = ${color} <br>
변수 color = ${color} <br>

pageScope.color = <c:out value="${pageScope.color}"/><br>
requestScope.color = <c:out value="${requestScope.color}"/><br>
sessionScope.color = <c:out value="${sessionScope.color}"/><br>
sessionScope.color = <c:out value="${applicationScope.color}"/><br>

