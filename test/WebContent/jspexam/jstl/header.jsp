<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<hr>
<c:if test="${param.id != null}">
<h2 style="color : 'green''"> ${param.id} 님의 방문을 환영합니다.</h2>
<hr>
</c:if>
