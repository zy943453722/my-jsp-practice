<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "javaBean.board.*"%>
<%@ page import = "java.util.Date"%>
<%@ page import = "java.text.SimpleDateFormat"%>
<jsp:useBean id="message" class = "javaBean.board" scope = "application"></jsp:useBean>
<jsp:setProperty name = "message" property = "databaseName" value = "MessageBoard"/>
<jsp:setProperty name = "message" property = "tableName" value = "Mess"/>
<jsp:setProperty property="user" name="message" value = "root"/>
<jsp:setProperty name = "message" property = "passwd" value = "826451379"/>
<html>
<body bgcolor = orange>
  <form action = "" method = post>
   <p>输入您的名字：<br>
   <input type = "text" name = "name">
   <p><br>输入您的留言标题：<br>
   <input type = "text" name = "headline">
   <p><br>输入您的留言：<br>
   <input type = "text" name = "content">
   <br><input type = submit name = "submit" value = "提交信息">
  </form>
  <a href = "show.jsp">查看留言板</a>
<%
  SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//大小写必须这么写
  String t = df.format(new Date());//获取当前系统时间
  request.setCharacterEncoding("UTF-8");
  String n = request.getParameter("name");
  String l = request.getParameter("headline");
  String d = request.getParameter("content");
  if(n != null || l != null ||d != null)
  {
	  if(n == "" || l == "" || d == "")
	  {
		  out.println("填写信息不完整，请重输！");
	  }
	  else
	  {
		  out.println("<br>提交成功");
	  }
  }
%>
<jsp:setProperty name = "message" property = "time" value = "<%=t%>"/>
<jsp:setProperty property="*" name="message"/> <!-- 不用具体指定bean属性值对应表单中的值，会根据名字匹配 -->
</body>
</html>