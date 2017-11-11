<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
  <body bgcolor = orange><font size = 5>
<%
   if(session.getAttribute("back") != null)
   {
	   out.println(session.getAttribute("back").toString());
   }
%>
    <br><br><form action = "writeContent.jsp" method = post name = form>
      请输入文件名：<br>
      <br><input type = "text" name = "filename"><br>
        <br>请选择文件所在目录:<br>
        <br><Select name = "menu">
          <Option value = "/home/zy/zy/apache-tomcat-8.0.46/file_text1">/home/zy/zy/apache-tomcat-8.0.46/file_text1
          <Option value = "/home/zy/zy/apache-tomcat-8.0.46/file_text2">/home/zy/zy/apache-tomcat-8.0.46/file_text2
          <Option value = "/home/zy/zy/apache-tomcat-8.0.46/file_text3">/home/zy/zy/apache-tomcat-8.0.46/file_text3
        </Select><br>
          <br>请输入想要写入的内容：<br>
         <br><TextArea name = "content" Rows = "4" Cols = "20"></TextArea>
      <br><input type = "submit" value = "提交" name = "submit"> 
     </form>
     <p>如果您想读文件，请选择下面的超链接<br>
     <a href = "lookContent.jsp">lookContent.jsp</a>
   </font>
  </body>
</html>