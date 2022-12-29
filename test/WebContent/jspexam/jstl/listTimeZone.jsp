<%@ page contentType = "text/html; charset=euc-kr" %>
<html>
<head><title>시간대 목록</title></head>
<body>

<%
    String[] ids = java.util.TimeZone.getAvailableIDs();
    for (int i = 0 ; i < ids.length ; i++) {
        out.println(ids[i]+"<br>");
    }
%>

</body>
</html>
