<%@ page pageEncoding="euc-kr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<c:import var="xmldata" url="http://localhost:8080/edu/jstl/student.xml" charEncoding="euc-kr"/>
<x:parse xml="${xmldata}" varDom="xdata"/> 

<c:catch var="ex">
<x:out select="$xdata//학생[1]/이름" /> <x:out select="$xdata//학생[1]/@번호" /><br>
<x:out select="$xdata//학생[2]/이름" /> <x:out select="$xdata//학생[2]/@번호" /><br>
<x:out select="$xdata//학생[3]/이름" /> <x:out select="$xdata//학생[3]/@번호" /><br>
<x:out select="$xdata//학생[4]/이름" /> <x:out select="$xdata//학생[4]/@번호" /><br>
<hr>
<x:forEach select="$xdata//학생">
  <x:out select="이름" />
  <x:out select="@번호" /><br>
</x:forEach>
<hr>
<x:forEach select="$xdata//이름[@성별='남']" var="result">
남학생 : <x:out select="text()" /> <br>
</x:forEach>
<hr>

<x:if select="$xdata//학생[@번호='0004']" >
번호가 0004 번인 학생 이름 : <x:out select="$xdata//학생[@번호='0004']/이름" /><br>
</x:if>
<hr>
<x:choose>
<x:when select="$xdata//학생[@번호='0005']" >
번호가 0005 번인 학생 이름 : <x:out select="$xdata//학생[@번호='0004']/이름" /><br>
</x:when>
<x:otherwise>
번호가 0005인 학생 데이타가 존재하지 않습니다!!
</x:otherwise>
</x:choose>

 
</c:catch>

<c:if test="${ex != null}">
${ex}
</c:if>




