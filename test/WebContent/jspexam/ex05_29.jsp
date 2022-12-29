<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 테스트</title>
</head>
<body>
<h2>저장된 객체 추출</h2>
<hr>
<%-- <% 
pageContext.setAttribute("message", "PageContext 객체에 저장된 문자열객체"); 
request.setAttribute("message", "HttpServletRequest 객체에 저장된 문자열객체");
session.setAttribute("message", "HttpSession 객체에 저장된 문자열객체");
application.setAttribute("message", "ServletContext 객체에 저장된 문자열객체");
%> --%>
pageScope 객체에서 추출 : ${ pageScope.message }<br>
requestScope 객체에서 추출 : ${ requestScope.message }<br>
sessionScope 객체에서 추출 : ${ sessionScope.message }<br>
applicationScope 객체에서 추출 : ${ applicationScope.message }<br>
<hr>
message 추출 : ${message}<br>
</body>
</html>