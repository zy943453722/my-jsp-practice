function check_logname()
  {
	  var r = /^[a-zA-Z0-9]*([a-zA-Z][0-9]|[0-9][a-zA-Z])[a-zA-Z0-9]*$/;//判断数字和字母的组合正则
	  var i = form.logname.value;
	  if(r.test(i) == false)
	  {
		  document.getElementById("d1").innerHTML = "用户名请输入字母数字的组合";  
	  }
	  else if(i.length < 8 || i.length > 16)
	  {
		  document.getElementById("d1").innerHTML = "用户名长度不合规范，应为8~16位";//用于在div之间显示这句话
	  }
	  else
	  {
		  document.getElementById("d1").innerHTML = "";
	  }
  }
  function check_passwd()
  {
	  var r = /^[a-zA-Z0-9]*([a-zA-Z][0-9]|[0-9][a-zA-Z])[a-zA-Z0-9]*$/;//判断非数字和字母的正则
	  var i = form.password.value;
	  if(r.test(i) == false)
	  {
		  document.getElementById("d2").innerHTML = "密码请输入字母数字的组合";  
	  }
	  else if(i.length < 8 || i.length > 16)
	  {
		  document.getElementById("d2").innerHTML = "密码长度不合规范，应为8~16位";//用于在div之间显示这句话
	  }
	  else
	  {
		  document.getElementById("d2").innerHTML = "";
	  }
  }
  function check_phone()
  {
	  var r = /^[0-9]*$/;
	  var i = form.phone.value;  
	  if(r.test(i) == false)
	  {
		  document.getElementById("d3").innerHTML = "电话号码请输入数字";  
	  }
	  else if(i.length != 11 && i.length != 0)
	  {
		  document.getElementById("d3").innerHTML = "电话号码长度不合规范，应为11位";//用于在div之间显示这句话
	  }
	  else
	  {
		  document.getElementById("d3").innerHTML = "";
	  }
  }
  function check_email()
  {
	  var r = /^([0-9A-Za-z\-_\.]+)@([0-9a-z]+\.[a-z]{2,3}(\.[a-z]{2})?)$/g;//验证电子邮箱
	  var i = form.email.value;
	  if(r.test(i) == false)
	  {
		  document.getElementById("d5").innerHTML = "电子邮箱不符合输入规范"; 
	  }
	  else
	  {
		  document.getElementById("d5").innerHTML = "";
	  }
  }
  function check_message()
  {
	  var i = form.message.value;
	  if(i.length == 0)
	  {
		  document.getElementById("d6").innerHTML = "简介不可为空";
	  }
	  else
	  {
		  document.getElementById("d6").innerHTML = "";
	  }
  }
  function checkSub()
  {
	 if( document.getElementById("d6").innerHTML != "" ||  document.getElementById("d5").innerHTML != ""
		 || document.getElementById("d3").innerHTML != "" || document.getElementById("d2").innerHTML != ""
			 ||document.getElementById("d1").innerHTML != "")
		 {
		    alert("填写信息仍存在错误，注册失败！");
		    form.logname.focus();
		    return false;
		 }
	     else if(form.logname.value == "" || form.password.value == "" || form.email.value == ""
			  || form.message.value == "")
		  {
		     alert("填写信息不完整，注册失败！");
		     form.logname.focus();
		     return false;
		  }
	     else
		 {
		   alert("提交成功！");
		   return true;
		 }
  }
  