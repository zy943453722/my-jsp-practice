<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "calu.javaBean.*"%>
<jsp:useBean id="beans" type="calu.javaBean" scope = "application"/>
<html>
<body bgcolor = orange>
<table border = 1>
  <th>数列的首项</th>
  <th>等差数列的公差</th>
  <th>所求项数</th>
  <th>求和结果</th>
  <tr>
     <td><jsp:getProperty name="beans" property="f"/></td>
     <td><jsp:getProperty name="beans" property="s"/></td>
     <td><jsp:getProperty name="beans" property="n"/></td>
     <td><jsp:getProperty name="beans" property="sum"/></td>
  </tr>
</table>
</body>
</html>