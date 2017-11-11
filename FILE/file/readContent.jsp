<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir = "/WEB-INF/tags" prefix = "read" %>
<html>
<body bgcolor = cyan>
<%
  String name = request.getParameter("filename");
  String menu = request.getParameter("path");
  if(name == null || name == "")
  {
	  String s = "文件名为空，请重新输入";
	  session.setAttribute("back",new String(s));
	  response.sendRedirect("lookContent.jsp");
  }
  if(menu == null || menu == "")
  {
	  String s = "文件目录为空，请重新输入";
	  session.setAttribute("back",new String(s));
	  response.sendRedirect("lookContent.jsp");
  }
  else
  {
%>   <read:ReadTag n = "<%=name%>" m = "<%=menu %>"/>	  
<%  }
%>
</body>
</html>