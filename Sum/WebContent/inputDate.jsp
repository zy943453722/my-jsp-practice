<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<body bgcolor=orange>
	<font size=3> <script language="javascript">
		function CheckPost() {
			var r = /^[0-9]*[1-9][0-9]*$/;//声明正则表达式
			if (form.first.value == "" || form.tolerance.value == ""
					|| form.num.value == "") {
				alert("请将等差数列的信息填写完整！");
				form.first.focus();
				return false;
			}
			if (isNaN(form.first.value)) {
				alert("首项请输入数字");
				form.first.focus();
				return false;
			}
			if (isNaN(form.tolerance.value)) {
				alert("公差请输入数字");
				form.tolerance.focus();
				return false;
			}
			if (r.test(form.num.value) == false) {
				alert("项数请输入正整数");
				form.tolerance.focus();
				return false;
			}
			alert("提交成功！");
			return true;
		}
		function CheckPost1() {
			var r = /^[0-9]*[1-9][0-9]*$/;//声明正则表达式
			if (form1.first_geometric.value == "" || form1.ratio.value == ""
					|| form1.num_geometric.value == "") {
				alert("请将等比数列的信息填写完整");
				form1.first_geometric.focus();
				return false;
			}
			if (isNaN(form1.first_geometric.value)) {
				alert("首项请输入数字");
				form1.first_geometric.focus();
				return false;
			}
			if (isNaN(form1.ratio.value)) {
				alert("公比请输入数字");
				form1.ratio.focus();
				return false;
			}
			if (r.test(form1.num_geometric.value) == false) {
				alert("项数请输入正整数");
				form1.num_geometric.focus();
				return false;
			}
			if (parseInt(form1.first_geometric.value) == 0) {
				alert("首项不能为0");
				form1.first_geometric.focus();
				return false;
			}
			if (parseInt(form1.ratio.value) == 0) {
				alert("公比不能为0");
				form1.ratio.focus();
				return false;
			}
			alert("提交成功！");
			return true;
		}
	</script>
		<form action="calu/computerSum?type=tolerance" name="form"
			method="post" onsubmit="return CheckPost();">
			等差数列求和:<br>输入首项: <input type="text" name="first"> 输入公差:<input
				type="text" name="tolerance"> 求和项数:<input type="text"
				name="num"> <input type="submit" name="submit" value="提交">
		</form>
		<form action="calu/computerSum?type=ratio" name="form1" method="post"
			onsubmit="return CheckPost1();">
			<br>
			<br>等比数列求和:<br>输入首项: <input type="text"
				name="first_geometric"> 输入公比:<input type="text" name="ratio">
			求和项数:<input type="text" name="num_geometric"> <input
				type="submit" name="submit1" value="提交">
		</form>
	</font>
</body>
</html>