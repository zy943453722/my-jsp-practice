package javabean;

import java.sql.*;

public class car {
   public String num;
   public String logo;
   public String date;
   public String databaseName;
   public String tableName;
   public String user;
   public String passwd;
   public car(){};
   public car(String num_c,String logo_c,String date_c,String databaseName_c,String tableName_c,String user_c,String passwd_c)
   {
	   this.num = num_c;
	   this.logo = logo_c;
	   this.date = date_c;
	   this.databaseName = databaseName_c;
	   this.tableName = tableName_c;
	   this.user = user_c;
	   this.passwd = passwd_c;
   }
   public String getNum()
   {
	   return num;
   }
   public void setNum(String num_c)
   {
	   num = num_c;
   }
   public String getLogo()
   {
	   return logo;
   }
   public void setLogo(String logo_c)
   {
	   logo = logo_c;
   }
   public String getDate()
   {
	   return date;
   }
   public void setDate(String date_c)
   {
	   date = date_c;
   }
   public String getDatabaseName()
   {
	   return databaseName;
   }
   public void setDatabaseName(String d)
   {
	   databaseName = d.trim();
   }
   public String getTableName()
   {
	   return tableName;
   }
   public void setTableName(String t)
   {
	   tableName = t.trim();
   }
   public String getUser()
   {
	   return user;
   }
   public void setUser(String d)
   {
	   user = d.trim();
   }
   public String getPasswd()
   {
	   return passwd;
   }
   public void setPasswd(String d)
   {
	   passwd = d.trim();
   }
   public void Save()
   {
	   DataBase da = new DataBase(databaseName,tableName,user,passwd,num,logo,date);
	   da.Connect();
	   da.databaseSave();
   }
   public String getResult()
   {
	   DataBase da = new DataBase(databaseName,tableName,user,passwd,num,logo,date);
	   da.Connect();
	   String result = new String(da.databaseRes());
	   return result;
   }
}
