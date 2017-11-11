<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name = "word" required = "true"%>
<%@ variable name-given = "message" variable-class = "java.lang.String" scope = "AT_END"%>
<%
  String mess = "";//用于存放输出信息
  Character ch = (Character)session.getAttribute("save");
  char c = ch.charValue();//获取对象中的值
  char guessWord ='\0';
  boolean boo = true;
  try
  {
    guessWord =  word.charAt(0);
  }
  catch(Exception exp)
  {
	  boo = false;
  }
  if(boo)
  {
	  if(c == guessWord)
	  {
		  int n = ((Integer)session.getAttribute("count")).intValue();
	      n++;
	      session.setAttribute("count", new Integer(n));
	      mess = "您猜对了，这是第"+n+"次猜测";      
	  }
	  else if(guessWord > c)
	  {
		  int n = ((Integer)session.getAttribute("count")).intValue();
	      n++;
	      session.setAttribute("count", new Integer(n));
	      mess = "您猜大了，这是第"+n+"次猜测";     
	  }
	  else
	  {
		  int n = ((Integer)session.getAttribute("count")).intValue();
	      n++;
	      session.setAttribute("count", new Integer(n));
	      mess = "您猜小了，这是第"+n+"次猜测";     
	  }
	  jspContext.setAttribute("message",mess);
  }
  else
  {
	  jspContext.setAttribute("message","请输入您的猜测");
  }
%>  