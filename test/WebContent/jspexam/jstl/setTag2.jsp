<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="map" value="<%= new java.util.HashMap() %>" />
<html>
<head>
    <title>set �±׿� remove �±�</title>
</head>
<body>
<c:set target="${map}" property="name" value="������" />

���� map�� ����� name ��: ${map.name}

</body>
</html>
