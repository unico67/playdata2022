<%@ page pageEncoding="euc-kr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<c:import var="xmldata" url="http://localhost:8080/edu/jstl/student.xml" charEncoding="euc-kr"/>
<x:parse xml="${xmldata}" varDom="xdata"/> 

<c:catch var="ex">
<x:out select="$xdata//�л�[1]/�̸�" /> <x:out select="$xdata//�л�[1]/@��ȣ" /><br>
<x:out select="$xdata//�л�[2]/�̸�" /> <x:out select="$xdata//�л�[2]/@��ȣ" /><br>
<x:out select="$xdata//�л�[3]/�̸�" /> <x:out select="$xdata//�л�[3]/@��ȣ" /><br>
<x:out select="$xdata//�л�[4]/�̸�" /> <x:out select="$xdata//�л�[4]/@��ȣ" /><br>
<hr>
<x:forEach select="$xdata//�л�">
  <x:out select="�̸�" />
  <x:out select="@��ȣ" /><br>
</x:forEach>
<hr>
<x:forEach select="$xdata//�̸�[@����='��']" var="result">
���л� : <x:out select="text()" /> <br>
</x:forEach>
<hr>

<x:if select="$xdata//�л�[@��ȣ='0004']" >
��ȣ�� 0004 ���� �л� �̸� : <x:out select="$xdata//�л�[@��ȣ='0004']/�̸�" /><br>
</x:if>
<hr>
<x:choose>
<x:when select="$xdata//�л�[@��ȣ='0005']" >
��ȣ�� 0005 ���� �л� �̸� : <x:out select="$xdata//�л�[@��ȣ='0004']/�̸�" /><br>
</x:when>
<x:otherwise>
��ȣ�� 0005�� �л� ����Ÿ�� �������� �ʽ��ϴ�!!
</x:otherwise>
</x:choose>

 
</c:catch>

<c:if test="${ex != null}">
${ex}
</c:if>




