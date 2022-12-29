<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ page import = "java.io.IOException, java.io.FileReader" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head><title>�ҽ� ����</title></head>
<body>

<%
    FileReader reader = null;
    try {
        String path = request.getParameter("path");
        reader = new FileReader(getServletContext().getRealPath(path));
%>
<font size="5" color="red">�ҽ� �ڵ� = <%= path %></font>
<pre>
<c:out value="<%= reader %>" escapeXml="true" />
</pre>
<%
    } catch(IOException ex) {
%>
����: <font color="red"><%= ex.getMessage() %></font>
<%    
    } finally {
        if (reader != null)
            try {
                reader.close();
            } catch(IOException ex) {}
    }
%>

</body>
</html>