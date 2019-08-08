package Filter;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import Dao.categoryDao;
import Dao.regDao;
import Vo.categoryVo;
import Vo.loginVo;

/**
 * Servlet Filter implementation class loginFilter
 */
@WebFilter("/*")
public class loginFilter implements Filter {

    /**
     * Default constructor. 
     */
    public loginFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpSession session = ((HttpServletRequest) request).getSession();
		RequestDispatcher requestDispatcher;

		String flag = request.getParameter("flag");
		// System.out.println("registration flag===" + reg);
		// int i = (Integer)session.getAttribute("userID");
		// System.out.println("id = = = = =" + i);
		String uri = ((HttpServletRequest) request).getRequestURI();

		System.out.println("Before URI>>>>>>>>>>>" + uri);
		// System.out.println("link = = = = = " + uri);
		System.out.println("Flag =" + flag);
		if (flag != null && flag.equals("logout")) {
			RequestDispatcher rd;
			rd = request.getRequestDispatcher("/User/Login.jsp");
			rd.forward(request,response);

		} else if (uri.contains("/Productdetails")||uri.contains("/Registration") || uri.contains("Login.jsp") || uri.contains("Registration.jsp")
				|| uri.contains("/css") || uri.contains("/js") || uri.contains("/controller") || uri.contains("/images")
				|| uri.contains("/fonts")) {

			System.out.println("After URI>>>>>>>>>>>" + uri);
			// System.out.println("inside reg");

			// requestDispatcher =
			// request.getRequestDispatcher("/user/register.jsp");
			// requestDispatcher.forward(request,response);

			chain.doFilter(request, response);

		}

		/*
		 * else if(uri.contains("Visitor/index.jsp")) { chain.doFilter(request,
		 * response); }
		 */

		else if (request.getParameter("flag") != null && request.getParameter("flag").equals("login")) {
			String Email = request.getParameter("username");
			String Password = request.getParameter("password");
			System.out.println(Email + "" + Password);

			loginVo loginVO = new loginVo();
			loginVO.setEmail(Email);
			loginVO.setPassword(Password);
			regDao regDAO = new regDao();
			List list = regDao.authentication(loginVO);

			System.out.println("size is :" + list.size());

			if (list != null && list.size() >= 1) {

				Iterator itr = list.iterator();

				// while(itr.hasNext()){
			loginVo user = (loginVo) itr.next();

				int y = (Integer) user.getLoginId();

				session.setAttribute("userID", y);

				System.out.println(user.getUserType());
				// System.out.println(session.getAttribute("userId"));
				String type = user.getUserType();
				session.setAttribute("usertype", type);
				System.out.println(y);

				
				if (type.equals("admin")) {
					System.out.println("<<<<<<<<<<IN ADMIN>>>>>>>>>");

					int userID = (int) session.getAttribute("userID");
					loginVo vo =  new loginVo();
					loginVO.setLoginId(userID);
					
					regDao dao = new regDao();
					
					List name = dao.search1(loginVO);
					List noOfUsers = dao.search();
					session.setAttribute("Name", name);
					session.setAttribute("noOfUsers", noOfUsers.size());
					
				
					
					requestDispatcher = request.getRequestDispatcher("/Admin/index.jsp");
					requestDispatcher.forward(request, response);
				} else if (type.equals("user")) {

					categoryVo categoryvo =new categoryVo();
					
					categoryDao categoryDAO=new categoryDao();
					List ls=categoryDAO.searchCategory(categoryvo);
					
					session.setAttribute("catList", ls);		
				
					System.out.println("CateGoryLIstSIZE>>>>>>>>>>>>>"+ls.size());
					
					requestDispatcher = request.getRequestDispatcher("/User/index.jsp");
					requestDispatcher.forward(request, response);
				}
			}

			else {
				requestDispatcher = request.getRequestDispatcher("/User/Login.jsp");
				requestDispatcher.forward(request, response);
			}
		}

		else if (session.getAttribute("userID") != null) {
			String h = (String) session.getAttribute("usertype");
			System.out.println("type = = = " + h);

			if (h != null && h.equals("admin"))
			{

				System.out.println("chain");
				chain.doFilter(request, response);
			}

			else if (h != null && h.equals("user")) 
			{
				System.out.println("chain");
				chain.doFilter(request, response);
			}

			else {
				RequestDispatcher rd = request.getRequestDispatcher("/User/Login.jsp");
				rd.forward(request, response);

			}
		}

		else {

			RequestDispatcher rd = request.getRequestDispatcher("/User/Login.jsp");
			rd.forward(request, response);

		}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
