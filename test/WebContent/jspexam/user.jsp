﻿<%@ page contentType="text/html; charset=utf-8"   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>user화면  </title>
</head>
<body>
일반 사용자님 환영합니다. <br>
이 화면은 사용자를 위한 화면입니다. <br>
전달된 파라미터 : <span style="color:red;"><%=request.getParameter("message")%></span>
</body>
</html>
