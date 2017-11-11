<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "javaBean.board.*"%>
<jsp:useBean id="message" class = "javaBean.board" scope = "application"></jsp:useBean>
<html>
<body bgcolor = yellow>
<%
   if(message.name != null || message.headline != null || message.content != null)
   {
	   message.Save();
	   String s = message.getResult();
	   out.println("<br><br>" + s);
   }
   else
   {
	   String s = message.getResult();
	   out.println("<br><br>" + s);
   }
   
%>
<a href = "inputMess.jsp">我要留言</a>
</body>
</html>