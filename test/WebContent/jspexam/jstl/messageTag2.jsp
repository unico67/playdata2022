<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<fmt:setBundle var="message" basename="resource.message" />

<fmt:message bundle="${message}" key="TITLE" var="title"/>
<html>
<head><title>${title}</title></head>
<body>

<h3>${title}</h3>
<fmt:message bundle="${message}" key="GREETING" />
<br>
<c:if test="${! empty param.id}">
<fmt:message bundle="${message}" key="VISITOR">
    <fmt:param value="${param.id}" />
</fmt:message>
</c:if>

</body>
</html>
