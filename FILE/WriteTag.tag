<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ tag import = "java.io.*" %>
<%@ attribute name = "n" required = "true"%>
<%@ attribute name = "m" required = "true"%>
<%@ attribute name = "t" required = "true"%>
<%! public void writeContent(File f,String content)
    {
	   try{
		   FileWriter outfile = new FileWriter(f);
		   BufferedWriter bufferout = new BufferedWriter(outfile);
		   bufferout.write(content);
		   bufferout.close();
		   outfile.close();
	   }
	   catch(IOException e)
	   {
	   }
    }
%>
<% String filename = n;
   String menu = m;
   String content = t;
   File f = new File(m,n);
   if(content.length() > 0)
   {
	   writeContent(f,content);
	   out.println("文件写入成功！");
   }
%>