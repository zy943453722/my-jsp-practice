<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ tag import = "java.sql.*" %>
<%@ attribute name = "num" required = "true"%>
<%@ variable name-given = "data_num" variable-class = "java.lang.String" scope = "AT_END"%>
<%
  System.out.println(num);
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
	  String uri = "jdbc:mysql://127.0.0.1:3306/Student";
	  String user = "root";
	  String password = "826451379";
	  con = DriverManager.getConnection(uri,user,password);//连接
	  sql = con.createStatement();//创建sql语句对象
	  rs = sql.executeQuery("select * from info where S_id = '"+num+"'");
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
  jspContext.setAttribute("data_num",new String(result));
%>