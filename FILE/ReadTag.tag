<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ tag import = "java.io.*" %>
<%@ attribute name = "n" required = "true"%>
<%@ attribute name = "m" required = "true"%>
<%! public String readContent(File f)
    {
	   StringBuffer str = new StringBuffer();
	   try{
		   FileReader in = new FileReader(f);
		   BufferedReader bufferin = new BufferedReader(in);
		   String temp = "";
		   while((temp = bufferin.readLine()) != null)
		   {
			   str.append(temp);
		   }
		   bufferin.close();
		   in.close();
	   }
	   catch(IOException e)
	   {
	   }
	return new String(str);
    }
%>
<% String filename = n;
   String menu = m;
   File f = new File(m,n);
   String str = readContent(f);
   System.out.println(str+"000000000");
   if(str == null)
   {
	   out.println("此文件为空");
   }
   else
   {
	   if(!str.isEmpty())
	   {
	   out.println(f.getName()+"的内容:<br>");
	   out.println(str);
	   }
	   else
	   {
		   out.println("此文件中没有内容");
	   }
   }
%>