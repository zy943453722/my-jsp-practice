<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib tagdir = "/WEB-INF/tags" prefix = "write" %>
<html>
  <body bgcolor = orange><font size = 5>
<%
  request.setCharacterEncoding("UTF-8");
  String name = request.getParameter("filename");
  String menus = request.getParameter("menu");
  String text = request.getParameter("content");
  if(name == null || name == "")
  {
	  String s = "文件名为空，请重新输入";
	  session.setAttribute("back",new String(s));
	  response.sendRedirect("giveContent.jsp");
  }
  if(text == null || text == "")
  {
	  String s = "输入内容为空，请重新输入";
	  session.setAttribute("back",new String(s));
	  response.sendRedirect("giveContent.jsp");
  }
  else
  {
%>	  <write:WriteTag n="<%=name%>" m="<%=menus%>" t="<%=text%>"/>
      
<%}
%>   
   </font>   
  </body>
</html>