package javaBean;

import java.sql.*;

public class DataBase {
   public String databaseName;
   public String tableName;
   public String user;
   public String passwd;
   public String name;
   public String headline;
   public String content;
   public String time;
   public StringBuffer res;
   public DataBase(String d,String t,String u,String p,String n,String h,String c,String ti)
   {
	   this.databaseName = d;
	   this.tableName = t;
	   this.user = u;
	   this.passwd = p;
	   this.name = n;
	   this.headline = h;
	   this.content = c;
	   this.time = ti;
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
	 	  sql.executeUpdate("insert into Mess values" + "(" +
	 	  "'"+name+"'"+","+"'"+headline+"'"+","+"'"+content+"'"+","+"'"+time+"'"+")");
	 	  con.close();
	   }
	   catch(Exception e){
		   System.out.println(e);
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
	      int k = 0;
		  res.append("<table border = 1 width = 800>");
		  res.append("<th width = 200>留言者姓名</th>");
		  res.append("<th width = 200>留言标题</th>");
		  res.append("<th width = 200>留言内容</th>");
		  res.append("<th width = 200>留言时间</th>");
	      while(rs1.next())
	      {
	    	  i++;
	      }
	      while(rs.next())
	      {
	    	  res.append("<tr>");
	    	  for(k = 1; k <= 2; k++)
	    	  {
	    		  res.append("<td width = 200>" + rs.getString(k) + "</td>");
	    	  }
	    	  res.append("<td width = 200><textarea style=\"width:100%;height:100%;\" readonly=\"readonly\">"+rs.getString(k)+"</textarea></td>");
	    	  res.append("<td width = 200>" + rs.getString(i) + "</td>");
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
