<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir = "/WEB-INF/tags" prefix = "Number"%>
<html>
<body bgcolor = cyan>
<%
   String n = request.getParameter("number");
   if(n == null || n == "")
   {
	   String s = "学号为空，请重新输入";
	   session.setAttribute("back",new String(s));
	   response.sendRedirect("inputCondition.jsp");
   }
   else
   {
%>       <Number:NumberCondition num = "<%=n%>"/>
        根据学号<%=n%>查询到的记录为：<br>
<%        out.println(data_num);    
 }
%> 
</body>
</html>