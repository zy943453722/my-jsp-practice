<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="head.txt"%>	
<html>
<body>
  <style>
  body {
	width: 100%;
	height: auto;
	background: url(6.jpg);
	background-size: 100%;
}
  </style>
<script language="javascript">
  function check_login()
  {
	  if(form1.logname.value == "" || form1.password1.value == "")
	  {
		 alert("填写不完整，登录失败");
		 form1.logname.focus();
		 return false;
	  }
	  return true;
  }
  function check_cancel()
  {
	  form1.logname.reset();
	  form1.password1.reset();
	  return true;
  }
  function hideShow()
  {
	  if(form1.password1.type == "password")
	  {
		  form1.password1.type = "text"; 
	      form1.img1.src = "4.png";
	  }
	  else
		  {
		     form1.password1.type = "password"; 
	         form1.img1.src = "5.png";
	         
		  }
  }
</script>
	<center><br>
	<form action = "/MakeFriends/member_sevlet1/Handle_login" name = "form1" method = post onsubmit = "return check_login();" onreset = "return check_cancel();">
		<table border=1>
			<th colspan = 2><font size=4>请您登陆</font></th>
			<tr>
				<td>登录名称:</td>
				<td><input type="search" name="logname" placeholder="请输入用户名" style="""width:100%;height:100%;\">
				</td>
			</tr>
			<tr>
				<td>输入密码:</td>
				<td><input type="password" name="password1" placeholder="请输入密码" style="""width:100%;height:100%;\">
				<img id = "img1" onclick="hideShow()" src = "5.png" width = "15px" height = "15px">
				</td>
			</tr>
		</table>
		<input type = "submit" name = "submit" value = "登录">
		<input type = "reset" name = "reset" value = "取消">
		</form>
	</center>
<% 
   String s = (String)request.getAttribute("mess");
   if(s != null)
   {
	 out.println("<br><center>"+request.getAttribute("mess").toString()+"</center>");
   }
%>
</body>
</html>