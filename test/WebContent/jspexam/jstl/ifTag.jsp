<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head><title>if �±�</title></head>
<body>
<c:if test="true">
������ ����<br>
</c:if>

<c:if test="${param.name == 'unico'}">
name �Ķ������ ���� ${param.name} �Դϴ�.<br>
</c:if>

<c:if test="${30 < param.age}">
����� ���̴� 30�� �̻��Դϴ�.
</c:if>
</body>
</html>
