<%@ page language="java" %>
<%@ page isELIgnored ="false" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>JSTL</title>
</head>
<body bgcolor="#FFFFFF">
<c:forTokens items='First | Second | Three | Four' 
            delims='|' var='item'>
   <c:out value='${item}'/><br>
</c:forTokens>
<hr>
<c:forTokens items= '{123456}-{7890123}' 
            delims= '{}' var='item'>
   <b><c:out value='${item}'/></b><br>
</c:forTokens>
</body>
</html>

