<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<body bgcolor = orange>
<p>随机分配26个小写英文字母中的一个，请猜！
<%
  char a[] = new char[26];
  char ch = 'a';
  for(int i = 0; i < 26; i++)
  {
	  a[i] = ch;
	  ch++;
  }
  int num = (int)(Math.random()*26);
  session.setAttribute("count",new Integer(0));//传递计数器
  session.setAttribute("save",new Character(a[num]));//关键字索引为save，char类型对象是character
%>
<br><A href = "guess.jsp">去猜测这个字母</A>
</body>
</html>