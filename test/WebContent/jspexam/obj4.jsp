<%@ page contentType="text/html; charset=EUC-KR" %>
<HTML>
<HEAD>
<TITLE>���尴ü ���� </TITLE>
</HEAD>
<BODY>
<H3>out Ȱ�� ���� </H3>
<%  
   int total = out.getBufferSize();
   out.print("�̺κ��� ��µ��� ���� ���Դϴ�.  ");
   out.clearBuffer();
   out.print("��� ������ ũ�� :" + total + "<BR>");
   out.print("������ ���� ������ ũ�� :" +out.getRemaining()+"<BR>");
   out.flush();
   out.print("flush �� ������ ���� ������ ũ�� :" +out.getRemaining());
  
%>
<HR>
<H5>���� �ε��� println ���캸�� </H5>
<PRE>
<% 
out.println(100);
out.println(true);
out.println(3.14);
out.println("TEST");
out.println('��');
out.println(new java.io.File("\\"));
out.print("������ ���� ������ ũ�� :" +out.getRemaining());

%>
</PRE>
</BODY>

