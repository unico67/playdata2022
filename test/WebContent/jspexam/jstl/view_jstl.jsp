<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<HTML>
<HEAD>
<TITLE>forward 예제</TITLE>
</HEAD>
<BODY>
<H4>view_jstl.jsp 의 수행 결과</H4>
<%--
<jsp:useBean id="userinfo" scope="request" class="sds.edu.jsp.beans.AccountBean" >
   추출된 객체가 없습니다.
</jsp:useBean>
추출된 AccountBean 객체 정보 :
이름 : <jsp:getProperty name="userinfo" property="name" /> 
번호 : <jsp:getProperty name="userinfo" property="number" /><BR>
--%>
<c:choose>
  <c:when test="${empty requestScope.userinfo}" >
   추출된 객체가 없습니다.!!
  </c:when>
  <c:otherwise > 
   추출된 AccountBean 객체 정보 :
   이름 : ${requestScope.userinfo.name} 
   번호 : ${requestScope.userinfo.number}<BR>
</c:otherwise>
</c:choose>
</BODY>
</HTML>
