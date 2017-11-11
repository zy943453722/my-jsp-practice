package javaBean;

import java.sql.*;

import javaBean.DataBase;

public class board {
	public String databaseName;
	public String tableName;
	public String user;
	public String passwd;
	public String name;
	public String headline;
	public String content;
	public String time;
	public String allMessage;
	public board(){};
	public board(String name_c,String headline_c,String content_c,String time_c,String databaseName_c,String tableName_c,String user_c,String passwd_c)
    {
		   this.name = name_c;
		   this.headline = headline_c;
		   this.content = content_c;
		   this.time = time_c;
		   this.databaseName = databaseName_c;
		   this.tableName = tableName_c;
		   this.user = user_c;
		   this.passwd = passwd_c;
	}
	public String getDatabaseName() {
		return databaseName;
	}
	public void setDatabaseName(String databaseName) {
		this.databaseName = databaseName;
	}
	public String getTableName() {
		return tableName;
	}
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getHeadline() {
		return headline;
	}
	public void setHeadline(String headline) {
		this.headline = headline;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public void Save()
	{
	   DataBase da = new DataBase(databaseName,tableName,user,passwd,name,headline,content,time);		   
	   da.Connect();
	   da.databaseSave();
	}
	public String getResult()
    {
		DataBase da = new DataBase(databaseName,tableName,user,passwd,name,headline,content,time);
		da.Connect();
        allMessage = new String(da.databaseRes());
        return allMessage;
	}
}
