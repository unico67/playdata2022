<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="map" value="<%= new java.util.HashMap() %>" />
<html>
<head>
    <title>set 태그와 remove 태그</title>
</head>
<body>
<c:set target="${map}" property="name" value="유니코" />

변수 map에 저장된 name 값: ${map.name}

</body>
</html>
