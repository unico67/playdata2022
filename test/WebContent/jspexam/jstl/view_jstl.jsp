<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<HTML>
<HEAD>
<TITLE>forward ����</TITLE>
</HEAD>
<BODY>
<H4>view_jstl.jsp �� ���� ���</H4>
<%--
<jsp:useBean id="userinfo" scope="request" class="sds.edu.jsp.beans.AccountBean" >
   ����� ��ü�� �����ϴ�.
</jsp:useBean>
����� AccountBean ��ü ���� :
�̸� : <jsp:getProperty name="userinfo" property="name" /> 
��ȣ : <jsp:getProperty name="userinfo" property="number" /><BR>
--%>
<c:choose>
  <c:when test="${empty requestScope.userinfo}" >
   ����� ��ü�� �����ϴ�.!!
  </c:when>
  <c:otherwise > 
   ����� AccountBean ��ü ���� :
   �̸� : ${requestScope.userinfo.name} 
   ��ȣ : ${requestScope.userinfo.number}<BR>
</c:otherwise>
</c:choose>
</BODY>
</HTML>
