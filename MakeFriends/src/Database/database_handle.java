package Database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class database_handle {
	public String databaseName;
	public String tableName;
	public String user;
	public String passwd;
	public database_handle()
	{
		databaseName = "MakeFriends";
		tableName = "member";
		user = "root";
		passwd = "826451379";
		
	}
	public void Connect()
	{
		   try{
			   Class.forName("com.mysql.jdbc.Driver");
		   }
		   catch(Exception e){}
	} 
	public void databaseSave(String na,String pa,String ea,String ph,String mess,int ag,int se)
    {
	    Connection con;
		Statement sql;
		StringBuffer handleSql;
		try
	    {
		   String uri = "jdbc:mysql://127.0.0.1:3306/"+databaseName;//mysql写法
		   String id = user;
		   String password = passwd;
		   handleSql = new StringBuffer();
		   con = DriverManager.getConnection(uri,id,password);//连接
		   sql = con.createStatement();//创建sql语句对象
		   handleSql.append("insert into member(logname,password,phone,sex,age,email,photo,message) values" + "(" +
				 	  "'"+na+"'"+","+"'"+pa+"'"+",");
		   if(ph != "")
		   {
			   handleSql.append("'"+ph+"'"+",");
		   }
		   else
		   {
			   handleSql.append(null+",");
		   }
		   handleSql.append(se+","+ag+","+"'"+ea+"',"+null);
		   handleSql.append(",'"+mess+"')");
		   sql.executeUpdate(handleSql.toString());
		   con.close();
		}
		catch(Exception e){
			 System.out.println(e);
		}
	}
	public int databaseFound(String sqlword)
	{
		Connection con;
		Statement sql;
		ResultSet rs;
		try
	    {
		   String uri = "jdbc:mysql://127.0.0.1:3306/"+databaseName;//mysql写法
		   String id = user;
		   String password = passwd;
		   con = DriverManager.getConnection(uri,id,password);//连接
		   sql = con.createStatement();//创建sql语句对象
		   rs = sql.executeQuery(sqlword);
		   rs.last();
		   int length = rs.getRow();
		   return length;
	    }
		catch(Exception e)
		{
			System.out.println(e);
			return -1;
		}
	}
}
