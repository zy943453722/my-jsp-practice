package javabean;

import java.sql.*;

public class DataBase {
   public String databaseName;
   public String tableName;
   public String user;
   public String passwd;
   public String num;
   public String logo;
   public String date;
   public StringBuffer res;
   public DataBase(String d,String t,String u,String p,String n,String l,String da)
   {
	   this.databaseName = d;
	   this.tableName = t;
	   this.user = u;
	   this.passwd = p;
	   this.num = n;
	   this.logo = l;
	   this.date = da;
   }
   public void Connect()
   {
	   res = new StringBuffer();
	   try{
		   Class.forName("com.mysql.jdbc.Driver");
	   }
	   catch(Exception e){}
   }
   public void databaseSave()
   {
	   Connection con;
	   Statement sql;
	   try
	   {
		  String uri = "jdbc:mysql://127.0.0.1:3306/"+databaseName;//mysql写法
		  String id = user;
		  String password = passwd;
	 	  con = DriverManager.getConnection(uri,id,password);//连接
	 	  sql = con.createStatement();//创建sql语句对象
	 	  sql.executeUpdate("insert into car_info values" + "(" +
	 	  "'"+num+"'"+","+"'"+logo+"'"+","+"'"+date+"'"+")");
	 	  con.close();
	   }
	   catch(Exception e){
	   }
   }
   public StringBuffer databaseRes()
   {
	   Connection con;
	   Statement sql;
	   ResultSet rs;
	   try
	   {
		  String uri = "jdbc:mysql://127.0.0.1:3306/"+databaseName;
		  String id = user;
		  String password = passwd;
	 	  con = DriverManager.getConnection(uri,id,password);//连接
	 	  sql = con.createStatement();//创建sql语句对象
	 	 rs = sql.executeQuery("select * from "+tableName);
		  DatabaseMetaData metadata = con.getMetaData();
	      ResultSet rs1 = metadata.getColumns(null, null,tableName, null);
	      int i = 0;
		  res.append("<table border = 1>");
	      res.append("<tr>");
	      while(rs1.next())
	      {
	    	  i++;
	    	  String clumnName = rs1.getString(4);//默认为4，求列数
	   	      res.append("<td>"+clumnName+"</td>"); 
	      }
	      res.append("</tr>");
	      while(rs.next())
	      {
	    	  res.append("<tr>");
	    	  for(int k = 1; k <= i; k++)
	    	  {
	    		  res.append("<td>" + rs.getString(k) + "</td>");
	    	  }
	    	  res.append("</tr>");
	    }
	      res.append("</table>");
	      con.close();    
	  }
	  catch(SQLException e)
	  {
		  res.append(e);
	  }
	  return res;
   }
}
