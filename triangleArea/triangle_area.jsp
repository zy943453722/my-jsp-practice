<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir = "/WEB-INF/tags" prefix = "triangle" %>
<html>
<body bgcolor = orange>
<h4>
下面求三角形的面积：
</h4>
<triangle:GetArea sizeB="3.2" sizeA="4.3" sizeC="5.7"/>
<%
  out.println("三角形面积为："+ area);
%>
</body>
</html>