<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="member_sevlet.Info.*"%>
<jsp:useBean id="base_info" type="member_sevlet.Info"
	scope="application" />
<%@ include file="head.txt"%>
<html>
<body bgcolor=orange>
<%
    String s = (String)request.getAttribute("m");
    if(s != null)
    {
    	if (s.equals("注册失败,账号已存在！请重新注册")) 
    	{
    	   out.println("<br><center>" + request.getAttribute("m").toString()+"</center>");
    	}
    	else if(s.equals("注册失败,数据库操作错误！请重新注册"))
    	{
    		out.println("<br><center>" + request.getAttribute("m").toString()+"</center>");
    	}
    	else
    	{
         out.print("<p><center><font size=5>注册成功<br><br></font></center>");
         out.print("<br><center>注册的会员名称:"+base_info.logname+"</center>");
         out.print("<br><center>注册的电子邮件:"+base_info.email+"</center>");
         if(base_info.getPhone() != "" && base_info.getPhone() != null)
	         out.println("<br><center>注册的电话号码:"+base_info.phone+"</center>");
         if(base_info.getSex() == 1)
        	 out.print("<br><center>注册的性别:男</center>");
         else
        	 out.print("<br><center>注册的性别:女</center>");
         out.print("<br><center>注册的年龄:"+base_info.age+"</center>");
         out.print("<br><center>您的简历和交友标准:</center>");
         out.print("<br><center><textarea rows=\"10px\" cols=\"30px\">"+base_info.message+"</textarea>");
         out.print("</center>");
         }
    }
%>
</body>
</html>