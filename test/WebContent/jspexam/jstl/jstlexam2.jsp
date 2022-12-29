<%@ page language="java" %>
<%@ page isELIgnored ="false" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>JSTL</title>
</head>
<body bgcolor="#FFFFFF">
<%
   int[] values = {1, 12,23,34,45,56,67,78,89,90}; 
   for(int i=0; i < values.length; ++i) { 
      out.println("Value = "+ values[i] +"<br>" );
   } 
%>
<c:set var="intValues" value="<%=values%>" scope="page"/><br>
<c:forEach items='${intValues}' var='val'> 
  <b> Value = <c:out value='${val}'/></b><br>
</c:forEach>
</body>
</html>

