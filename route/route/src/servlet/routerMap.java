package servlet;

import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;

public class routerMap {
    public Map<String,String> map;
    public routerMap()
    {
    	this.map = new HashMap<String,String>();
    }
    public void Init()
    {
    	router1 r1 = new router1();
    	router2 r2 = new router2();
    	router3 r3 = new router3();
    	map.put("?page=first",r1.Action());
    	map.put("?page=second",r2.Action());
    	map.put("?page=third", r3.Action());
    }
    public String match(String u)
    {
    	//String []a = u.split("\\?");
    	//String []b = a[1].split("and");
    	System.out.println(u);
    	String action = "";
    	Iterator <Map.Entry<String,String>> entries = map.entrySet().iterator();
    	while(entries.hasNext())//遍历
    	{
    		Map.Entry<String, String> entry = entries.next();
    		if(u.equals("?page=first"))
    		{
    			System.out.println("if");
    			action = map.get(u).toString();
    			break;
    		}		
    		else if(u.equals("?page=second"))
    		{
    			action = map.get(u).toString();
    			break;
    		}
    		else if(u.equals("?page=third"))
    		{
    			action = map.get(u).toString();
    			break;
    		}
    		else
    		{
    			action = "404";
    			continue;
    		}
    	}
    	return action;
    }
}
