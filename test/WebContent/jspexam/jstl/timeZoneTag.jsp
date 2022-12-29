<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head><title>timeZone 태그 사용</title></head>
<body>

<c:set var="now" value="<%= new java.util.Date() %>" />

그리니찌 표준시 - 
<fmt:timeZone value="Greenwich">
<fmt:formatDate value="${now}" type="both" 
                dateStyle="full" timeStyle="full" />
</fmt:timeZone>
<br>

우리나라 표준시 -
<fmt:formatDate value="${now}" type="both" 
                dateStyle="full" timeStyle="full" />

<br>

일본 표준시 -
<fmt:timeZone value="Japan">
<fmt:formatDate value="${now}" type="both" 
                dateStyle="full" timeStyle="full" />
</fmt:timeZone>
<br>

미국 동부 표준시 -
<fmt:timeZone value="US/Eastern">
<fmt:formatDate value="${now}" type="both" 
                dateStyle="full" timeStyle="full" />
</fmt:timeZone>
<br>

</body>
</html>
