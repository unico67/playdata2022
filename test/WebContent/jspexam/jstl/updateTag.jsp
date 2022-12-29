<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<html>
<head><title>SQL �±�</title></head>
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
  </h4> �ý��� ��ַ� ó���� �Ұ����մϴ�.</h4>
</c:if>
<c:if test="${empty ex}">
<h4>ȸ�� ����� �Ϸ�Ǿ����ϴ�!! <BR> �����մϴ�.</h4>
</c:if>

</body>
</html>
