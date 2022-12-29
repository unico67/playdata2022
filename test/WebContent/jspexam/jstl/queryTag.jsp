<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<html>
<head><title>SQL 태그</title></head>
<body>

<c:catch var="ex">
<sql:query var="result" dataSource="jdbc/myoracle">
select * from member
</sql:query>
</c:catch>

<p>
<table border="2">
<td>이름</td><td>주소</td>
<c:forEach var="row" items="${result.rows}">
<tr>
<td><c:out value="${row.name}"/></td>
<td><c:out value="${row.address}"/></td>
</tr>
</c:forEach>
</table> 

<c:if test="${ex != null}">
예외가 발생하였습니다:<br>
${ex}
</c:if>

</body>
</html>
