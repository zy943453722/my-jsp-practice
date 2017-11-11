<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir = "/WEB-INF/tags" prefix = "Name"%>
<html>
<body bgcolor = cyan>
<%
   request.setCharacterEncoding("UTF-8");
   String na = request.getParameter("name");
   if(na == null || na == "")
   {
	   String s = "姓名关键字为空，请重新输入";
		  session.setAttribute("back",new String(s));
		  response.sendRedirect("inputCondition.jsp");
   }
   else
   {
%>	 <Name:NameCondition nam = "<%=na%>"/>  
     根据姓名含有"<%=na%>"查询到的记录为：<br>
<%      out.println(data_name); 
 }
%>
</body>
</html>