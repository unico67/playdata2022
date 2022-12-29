<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<html>
<head><title>SQL �±�</title></head>
<body>

<c:catch var="ex">
<sql:query var="result" dataSource="jdbc/myoracle">
select * from member
</sql:query>
</c:catch>

<p>
<table border="2">
<td>�̸�</td><td>�ּ�</td>
<c:forEach var="row" items="${result.rows}">
<tr>
<td><c:out value="${row.name}"/></td>
<td><c:out value="${row.address}"/></td>
</tr>
</c:forEach>
</table> 

<c:if test="${ex != null}">
���ܰ� �߻��Ͽ����ϴ�:<br>
${ex}
</c:if>

</body>
</html>
