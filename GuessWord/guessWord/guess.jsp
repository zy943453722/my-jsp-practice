<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir = "/WEB-INF/tags" prefix = "guessNumber"%>
<html>
<body bgcolor = orange><font size = 3>
<Form action = "" method = post name = form>
  <input type = "text" name = "num">
  <input type = "submit" value = "提交" name = "submit">
</Form>
<%
  String str = request.getParameter("num");
  if(str == null || str == ""){
  }
  else
  {
	  //out.println("else");
	  char c = str.charAt(0);
	  //out.println(c);
	  if(c >= 'a' && c <= 'z')
	  {
%>       <guessNumber:GuessTag word = "<%=str%>"/>
          当前的猜测结果：<%=message%>
<%	      if(message.startsWith("您猜对了"))//判断是不是以括号内的内容开头
          {
%>           <br><A href = "random.jsp">重新获取随机数</A>	           
<%        }
          else
          {
        	  out.println("请继续猜！");
          }
	  }
	  else
	  {
		  out.println("请输入26个小写英文字母之一");
	  }	
  }
%>
</font>
</body>
</html>