package calu;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class computerSum
 */
@WebServlet("/computerSum")
public class computerSum extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public computerSum() {
        super();
        // TODO Auto-generated constructor stub
    }
    public double Calulate_t(double a1,double d,int i)
    {
       double a = a1 + (i-1)*d;
       double sum = (a1+a)*i/2;
       return sum;
    }
    public double Calulate_r(double a1,double q,int i)
    {
        if(q == 1)
        {
        	double sum = i*a1;
        	return sum;
        }
        else
        {
        	double sum = a1*(1-Math.pow(q,i))/(1-q);
            return sum;        
        }
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
		String url = request.getQueryString();
		if(url.equals("type=tolerance"))
		{
			String f = request.getParameter("first");
			String t = request.getParameter("tolerance");
			String n = request.getParameter("num");
			double a1 = Double.parseDouble(f);
		    double d = Double.parseDouble(t);
		    int i = Integer.parseInt(n);
			javaBean bean = new javaBean(a1,d,i);
			getServletContext().setAttribute("beans", bean);
			bean.setSum(Calulate_t(a1,d,i));
			RequestDispatcher dispathcher = request.getRequestDispatcher("/showResult.jsp");
			dispathcher.forward(request, response);
		}
        if(url.equals("type=ratio"))
        {
		    String fg = request.getParameter("first_geometric");
		    String r = request.getParameter("ratio");
		    String ng = request.getParameter("num_geometric");
		    double a1 = Double.parseDouble(fg);
	        double q = Double.parseDouble(r);
	        int i = Integer.parseInt(ng);
            javaBean bean = new javaBean(a1,q,i);//jsp中使用该同名对象
            getServletContext().setAttribute("beans", bean);//bean这个对象的名字叫beans
            bean.setSum(Calulate_r(a1,q,i));
            RequestDispatcher dispathcher = request.getRequestDispatcher("/showResult_r.jsp");
			dispathcher.forward(request, response);
        }		
	}

}
