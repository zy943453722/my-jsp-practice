<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<body bgcolor = orange><font size = 5>
<% if(session.getAttribute("back") != null)
   {
	   out.println(session.getAttribute("back").toString());
   }
%>
<br><br><form action = "byNumber.jsp" mathod = post name = "form">
根据学号查询<br>输入学号：
<input type = "text" name = "number">
<input type = "submit" value = "提交" name = "submit">
</form><br>
<form action = "byName.jsp" mathod = post name = "form1">
根据姓名(模糊)查询<br>姓名含有
<input type = "text" name = "name">
<input type = "submit" value = "提交" name = "submit1">
</form>
</font>

</body>
</html>