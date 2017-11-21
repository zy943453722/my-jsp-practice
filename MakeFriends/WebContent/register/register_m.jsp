<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="head.txt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!-- 获取项目的根路径 -->
<html>
<script type="text/javascript" src="check.js"></script>
<body>
	<style>
body {
	width: 100%;
	height: auto;
	background: url(3.jpg);
	background-size: 100%;
}

.right {
	position: absolute;
	right: 400px;
	width: 530px;
}
</style>
	<p>
	<center>
		<font size=5>网络交友注册<br> <br></font>
	</center>
	<div class="right">
		<form action="/MakeFriends/member_sevlet/handle" method="post"
			name="form" onsubmit="return checkSub();">
			<span style="display: inline-block; width: 200px; text-align: right;">*会员名称:&nbsp;&nbsp;&nbsp;&nbsp;</span><input
				type="search" name="logname" placeholder="允许8~16位字母、数字组合"
				style="width: 200px;" onBlur="check_logname()" /> <br>
			<div id="d1" style="color: red; font-size: 4; text-align: center"></div>
			<br> <span
				style="display: inline-block; width: 200px; text-align: right;">*设置密码:&nbsp;&nbsp;&nbsp;&nbsp;</span><input
				type="search" name="password" placeholder="允许8~16位字母数字组合"
				style="width: 200px;" onBlur="check_passwd()"> <br>
			<div id="d2" style="color: red; font-size: 4; text-align: center"></div>
			<br> <span
				style="display: inline-block; width: 200px; text-align: right;">电话号码:&nbsp;&nbsp;&nbsp;&nbsp;</span><input
				type="search" name="phone" placeholder="电话号码必须输入11位"
				style="width: 200px;" onBlur="check_phone()"> <br>
			<div id="d3" style="color: red; font-size: 4; text-align: center"></div>
			<br> <span
				style="display: inline-block; width: 200px; text-align: right;">*电子邮箱:&nbsp;&nbsp;&nbsp;&nbsp;</span><input
				type="search" name="email" placeholder="电子邮箱请按xxx@xx.com"
				style="width: 200px;" onBlur="check_email()"> <br>
			<div id="d5" style="color: red; font-size: 4; text-align: center"></div>
			<br> <br> <span
				style="display: inline-block; width: 200px; text-align: right;">*选择年龄:&nbsp;&nbsp;&nbsp;&nbsp;</span>
			<select name="age">
				<%
					for (int i = 18; i <= 70; i++) {
						out.println("<option value=\"" + i + "\">" + i + "</option>");
					}
				%>
			</select> <br> <br> <span
				style="display: inline-block; width: 200px; text-align: right;">*选择性别:&nbsp;&nbsp;&nbsp;&nbsp;</span><input
				type="radio" name="man" value="男" checked="true">男 <input
				type="radio" name="man" value="女">女 <br> <br> <span
				style="display: inline-block; width: 200px; text-align: right; vetical-align: top; float: left">*简介及交友标准:&nbsp;&nbsp;&nbsp;&nbsp;</span>
			<TextArea name="message" style='height: 100px; width: 200px;'
				onBlur="check_message()"></TextArea>
			<br>
			<div id="d6" style="color: red; font-size: 4; text-align: center"></div>
			<br>
			<center>
				<input type="submit" value="提交" style="width: 80px; height: 25px;">
			</center>
		</form>
	</div>
</body>
</html>