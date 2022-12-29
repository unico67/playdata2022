<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head><title>numberFormat 태그 사용</title></head>
<body>

<c:set var="price" value="10000" />
<fmt:formatNumber value="${price}" type="number" var="numberType" />

통화: <fmt:formatNumber value="${price}" type="currency"
                        currencySymbol="원" /> <br>
통화: <fmt:formatNumber value="${price}" type="currency"
                        currencySymbol="$" /> <br><br>
퍼센트: <fmt:formatNumber value="${price}" type="percent"
                          groupingUsed="true" /> <br>
숫자: ${numberType}

</body>
</html>
