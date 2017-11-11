<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ tag import = "java.sql.*" %>
<%@ attribute name = "nam" required = "true"%>
<%@ variable name-given = "data_name" variable-class = "java.lang.String" scope = "AT_END"%>
<%
  StringBuffer result = new StringBuffer();
  try{
	  Class.forName("com.mysql.jdbc.Driver");
  }
  catch(Exception e){
	  result.append(e);
  }
  Connection con;
  Statement sql;
  ResultSet rs;
  try
  {
	  con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/Student?user=root&password=826451379&useUnicode=true&characterEncoding=gb2312");//连接
	  sql = con.createStatement();//创建sql语句对象
	  rs = sql.executeQuery("select * from info where S_name like '%"+nam+"%'");
	  DatabaseMetaData metadata = con.getMetaData();
      ResultSet rs1 = metadata.getColumns(null, null,"info", null);
      int i = 0;
	  result.append("<table border = 1>");
      result.append("<tr>");
      while(rs1.next())
      {
    	  i++;
    	  String clumnName = rs1.getString(4);//默认为4，求列数
   	      result.append("<td>"+clumnName+"</td>"); 
      }
      result.append("</tr>");
      while(rs.next())
      {
    	  result.append("<tr>");
    	  for(int k = 1; k <= i; k++)
    	  {
    		  result.append("<td>" + rs.getString(k) + "</td>");
    	  }
    	  result.append("</tr>");
    }
      result.append("</table>");
      con.close();    
  }
  catch(SQLException e)
  {
	  result.append(e);
  }
  jspContext.setAttribute("data_name",new String(result));
%>