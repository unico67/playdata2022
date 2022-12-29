<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="vo.CountBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>세션 스코프를 적용한 객체의 정보 추출</h1>
<hr>
<%
	CountBean bean = (CountBean)session.getAttribute("countSession");
    if(bean == null) {
    	out.print("세션객체에서 추출된 CountBean 객체가 없습니다.");
    }
    else {
%>
count 값 : <%= bean.getCount()  %>
<% } %>
</body>
</html>
 --%>






