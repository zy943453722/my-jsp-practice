<%@page import="javabean.car"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "javabean.car.*" %>
<jsp:useBean id = "car" class = "javabean.car" scope = "request"/>
<jsp:setProperty name = "car" property = "databaseName" value = "Cars"/>
<jsp:setProperty name = "car" property = "tableName" value = "car_info"/>
<jsp:setProperty property="user" name="car" value = "root"/>
<jsp:setProperty name = "car" property = "passwd" value = "826451379"/>
<html>
<body bgcolor = orange><font size = 3>
<form action = "" name = "form" method = "post">
  汽车牌号：<input type = "text" name = "num">(如：“陕A12345”)<br>
  汽车品牌：<input type = "text" name = "logo">(如：“BMW牌)<br>
  生产日期：<input type = "text" name = "date">(如：”2017.12.4“)<br>
  <input type = "submit" name = "submit" value = "提交">
</form>
<%
   request.setCharacterEncoding("UTF-8");
   String n = request.getParameter("num");
   String l = request.getParameter("logo");
   String d = request.getParameter("date");
   if(n != null || l != null ||d != null)
   {
 	  if(n == "" || l == "" || d == "")
 	  {
 		  out.println("填写信息不完整，请重输！");
 	  }
 	  else
 	  {
 		  out.println("最后一个提交的数据为：<br>");
 		  out.println("车牌号："+ n + ",品牌："+l+",生产日期："+ d);
 		  //javabean.car ca = new javabean.car();
 		  car.setNum(n);
 		  car.setLogo(l);
 		  car.setDate(d);
 		  car.Save();
 		  String s = car.getResult();
 		  out.println("<br><br>"+s);
 	  }
   }
%>
</font>
</body>
</html>