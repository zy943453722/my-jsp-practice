package member_sevlet1;

import member_sevlet.Info;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Database.database_handle;

/**
 * Servlet implementation class Handle_login
 */
@WebServlet("/Handle_login")
public class Handle_login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Handle_login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String na = request.getParameter("logname");
		String pa = request.getParameter("password1");
		database_handle han = new database_handle();
		han.Connect();
		StringBuffer s = new StringBuffer();
		s.append("select * from member where logname ='");
		s.append(na+"' and password='"+pa+"'");
		int res = han.databaseFound(s.toString());
		if(res == 1)
		{
			Info inf = new Info(na);
			getServletContext().setAttribute("base_inf", inf);
			RequestDispatcher dispathcher = request.getRequestDispatcher("/login/showLoginMess.jsp");
			dispathcher.forward(request, response);
		}
		else if(res == 0)
		{
			request.setAttribute("mess", "登录失败,账号密码错误！");
			RequestDispatcher dispathcher = request.getRequestDispatcher("/login/login_m.jsp");
			dispathcher.forward(request, response);
		}
		else
		{
			request.setAttribute("mess", "登录失败,数据库出错");
			RequestDispatcher dispathcher = request.getRequestDispatcher("/login/login_m.jsp");
			dispathcher.forward(request, response);
		}
	}

}
