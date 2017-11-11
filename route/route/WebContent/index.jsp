<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<body bgcolor = orange><font size = 5>
<%
   String Path = request.getServerName()+":"+
    request.getServerPort()+request.getContextPath();
   //获取localhost:8080/工程名
%> 
<a href = "router?page=first">localhost:8080/router?page=first</a><br>
<a href = "router?page=second">localhost:8080/router?page=second</a><br>
<a href = "router?page=third">localhost:8080/router?page=third</a><br>
<a href = "router1?page=first">localhost:8080/router1?page=first</a><br>
<a href = "router1?page=second">localhost:8080/router1?page=second</a><br>
<a href = "router1?page=third">localhost:8080/router1?page=third</a><br>
</font>
</body>
</html>