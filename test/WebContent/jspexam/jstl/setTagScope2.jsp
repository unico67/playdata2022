<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
pageScope.color = <c:out value="${pageScope.color}"/><br>
requestScope.color = <c:out value="${requestScope.color}"/><br>
sessionScope.color = <c:out value="${sessionScope.color}"/><br>
applicationScope.color = <c:out value="${applicationScope.color}"/><br>
