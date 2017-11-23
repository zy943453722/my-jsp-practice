<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ tag import = "java.text.*"%>
<h4>
这是一个Tag文件，负责接收.jsp文件传过来的值，计算出面积，再传给.jsp文件。
</h4>
<%@ attribute name = "sizeA" required = "true"%>
<%@ attribute name = "sizeB" required = "true"%>
<%@ attribute name = "sizeC" required = "true"%>
<%@ variable name-given = "area" variable-class = "java.lang.String" scope = "AT_BEGIN"%>
<%!
  public String getArea(double a, double b, double c)
  {
	if(a+b > c && a+c > b && b+c > a)
	  {
	  	
	  	double x = (a*a-b*b+c*c)/(2*c);
	  	double h = Math.sqrt(a*a-x*x);
	  	double Area = (h*c)/2;
	  	return String.valueOf(Area);
	  }
	  else
	  {
		return ("<br>"+a+","+b+","+c+"不能构成一个三角形");
	  }
  }
%>
<%
  double a = Double.parseDouble(sizeA);
  double b = Double.parseDouble(sizeB);
  double c = Double.parseDouble(sizeC);
  NumberFormat f = NumberFormat.getInstance();
	f.setMaximumFractionDigits(3);
  String t_area = getArea(a,b,c);
  double d = Double.parseDouble(t_area);
  String s = f.format(d);
  jspContext.setAttribute("area",s+"s是");
%>