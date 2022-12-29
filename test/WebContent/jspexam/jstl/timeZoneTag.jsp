<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head><title>timeZone �±� ���</title></head>
<body>

<c:set var="now" value="<%= new java.util.Date() %>" />

�׸����� ǥ�ؽ� - 
<fmt:timeZone value="Greenwich">
<fmt:formatDate value="${now}" type="both" 
                dateStyle="full" timeStyle="full" />
</fmt:timeZone>
<br>

�츮���� ǥ�ؽ� -
<fmt:formatDate value="${now}" type="both" 
                dateStyle="full" timeStyle="full" />

<br>

�Ϻ� ǥ�ؽ� -
<fmt:timeZone value="Japan">
<fmt:formatDate value="${now}" type="both" 
                dateStyle="full" timeStyle="full" />
</fmt:timeZone>
<br>

�̱� ���� ǥ�ؽ� -
<fmt:timeZone value="US/Eastern">
<fmt:formatDate value="${now}" type="both" 
                dateStyle="full" timeStyle="full" />
</fmt:timeZone>
<br>

</body>
</html>
