<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head><title>choose �±�</title></head>
<body>

<ul>
<c:choose> 
  <c:when test="${param.name == 'unico'}" > 
    <li> ����� �̸��� ${param.name} �Դϴ�.
  </c:when> 
  <c:when test="${param.age > 30}" > 
    <li> ����� 30�� �̻��Դϴ�.
  </c:when> 
  <c:otherwise> 
    <li> ����� 'unico'�� �ƴϰ� 30�� �̻��� �ƴմϴ�.
  </c:otherwise> 
</c:choose> 
</ul>

</body>
</html>
