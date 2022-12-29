<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head><title>choose 태그</title></head>
<body>

<ul>
<c:choose> 
  <c:when test="${param.name == 'unico'}" > 
    <li> 당신의 이름은 ${param.name} 입니다.
  </c:when> 
  <c:when test="${param.age > 30}" > 
    <li> 당신은 30세 이상입니다.
  </c:when> 
  <c:otherwise> 
    <li> 당신은 'unico'가 아니고 30세 이상이 아닙니다.
  </c:otherwise> 
</c:choose> 
</ul>

</body>
</html>
