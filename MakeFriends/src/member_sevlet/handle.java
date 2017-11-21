package member_sevlet;

import java.io.IOException;

import Database.database_handle;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class handle
 */
@WebServlet("/handle")
public class handle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public handle() {
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
		String pa = request.getParameter("password");
		String ph = request.getParameter("phone");
		String ea = request.getParameter("email");
		String mess = request.getParameter("message");
		int ag = Integer.parseInt(request.getParameter("age"));
		String sex = request.getParameter("man");
		int se;
		if(sex.equals("男"))
		{
			se = 1;
		}
		else
		{
			se = 0;
		}
		database_handle han = new database_handle();
		han.Connect();
		StringBuffer s = new StringBuffer();
		s.append("select * from member where logname ='");
		s.append(na+"'");
		if(han.databaseFound(s.toString()) == 0)
		{
			Info in = new Info(na,pa,ea,ph,mess,ag,se);
			getServletContext().setAttribute("base_info", in);
			han.databaseSave(na,pa,ea,ph,mess,ag,se);
			request.setAttribute("m", "成功");
			RequestDispatcher dispathcher = request.getRequestDispatcher("/register/showRegisterMess.jsp");
			dispathcher.forward(request, response);
		}
		else if(han.databaseFound(s.toString()) == 1)
		{
			Info in = new Info();
			getServletContext().setAttribute("base_info", in);
			request.setAttribute("m", "注册失败,账号已存在！请重新注册");
			RequestDispatcher dispathcher = request.getRequestDispatcher("/register/showRegisterMess.jsp");
			dispathcher.forward(request, response);
		}
		else
		{
			Info in = new Info();
			getServletContext().setAttribute("base_info", in);
			request.setAttribute("m", "注册失败,数据库操作错误！请重新注册");
			RequestDispatcher dispathcher = request.getRequestDispatcher("/register/showRegisterMess.jsp");
			dispathcher.forward(request, response);
		}
		
	}

}
