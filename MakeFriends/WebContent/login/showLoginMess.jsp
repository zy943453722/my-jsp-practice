<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="member_sevlet.Info.*"%>
<jsp:useBean id="base_inf" type="member_sevlet.Info" scope="application" />
<%@ include file="head.txt"%>
<html>
<body bgcolor=orange>
	<center>
		<p>
			<font size=6 color=blue>登陆成功</font>
		<p>
			<font size=4 color=red>登录会员名称：<jsp:getProperty
					name="base_inf" property="logname" />
			</font>
	</center>
</body>
</html>