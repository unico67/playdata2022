<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
EL ��� : <c:out value="${param.buyer}"/><br>
��ũ��Ʈ �±� ��� : <c:out value="<%= request.getParameter("buyer")%>"/>
