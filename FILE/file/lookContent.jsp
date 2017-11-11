<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<body bgcolor = cyan><font size = 5>
<%
   if(session.getAttribute("back") != null)
   {
	   out.println(session.getAttribute("back").toString());
   }
%>
<br><br><form action = "readContent.jsp" method = post name = form>
      请输入文件名：<br>
      <br><input type = "text" name = "filename"><br>
       <br>请输入文件所在目录:<br>
       <input type = "text" name = "path"> 
      <br><input type = "submit" value = "提交" name = "submit"> 
     </form>
</font>
</body>
</html>