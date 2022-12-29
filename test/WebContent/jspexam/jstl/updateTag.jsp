<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<html>
<head><title>SQL 태그</title></head>
<body>
<%
   	request.setCharacterEncoding("EUC-KR");
%>
<c:catch var="ex">
  <sql:update sql="INSERT INTO member VALUES (?,?,?,?,?)" dataSource="jdbc/myoracle">
	 <sql:param value="${param.name}"/>
	 <sql:param value="${param.id}"/>
	 <sql:param value="${param.passwd}"/>
	 <sql:param value="${param.address}"/>
	 <sql:param value="${param.memo}"/>
    </sql:update>	
</c:catch>

<c:if test="${!empty ex}">
  </h4> 시스템 장애로 처리가 불가능합니다.</h4>
</c:if>
<c:if test="${empty ex}">
<h4>회원 등록이 완료되었습니다!! <BR> 감사합니다.</h4>
</c:if>

</body>
</html>
