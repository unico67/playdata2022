<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url var="urlheader" value="header.jsp" >
  <c:param name="id" value="UNICO" />
</c:url>

<c:import url="${urlheader}" var="head" />
<c:import url="http://www.yes24.co.kr/" var="urlEx"/>    
<c:import url="footer.jsp" var="foot" />

<html>
<head><title>import¿Í url ÅÂ±×</title></head>
<body>

${head}

${urlEx}

${foot}

</body>
</html>
