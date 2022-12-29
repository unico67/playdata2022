<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
EL 사용 : <c:out value="${param.buyer}"/><br>
스크립트 태그 사용 : <c:out value="<%= request.getParameter("buyer")%>"/>
