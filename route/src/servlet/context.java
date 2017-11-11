package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class context
 */
@WebServlet("/context")
public class context extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public context() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("处理get请求");
		//String url = request.getHeader("referer");//获取前一个页面的url，而获取不到跳转的url
		StringBuffer url = new StringBuffer("?");
		url.append(request.getQueryString());//获取参数部分
		System.out.println(url.toString());
		StringBuffer action = new StringBuffer("/router");//用于字符串拼接的对象
		routerMap rm = new routerMap();
		rm.Init();
		System.out.println(rm.map);
		action.append(rm.match(url.toString()));
		System.out.println(rm.match(url.toString()));
		//System.out.print(action.toString());
		response.setContentType("text/html;charset=gb2312");
		ServletContext sc = getServletContext();
		RequestDispatcher rd = null;
		rd = sc.getRequestDispatcher(action.toString());
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

}
