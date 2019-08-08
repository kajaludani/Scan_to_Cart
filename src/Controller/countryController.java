package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;	

import Dao.countryDao;
import Vo.countryVo;

/**
 * Servlet implementation class countryController
 */
@WebServlet("/countryController")
public class countryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public countryController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag=request.getParameter("flag");
		if(flag.equals("search"))
		{
			search(request,response);
		}
		if(flag.equals("edit"))
		{
		
		edit(request,response);
		
	}
	}

	private void edit(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stu
		
		
			int id=Integer.parseInt(request.getParameter("id"));
					
			countryVo countryvo =new countryVo();
					countryvo.setCountryId(id);
					
					countryDao countryDAO=new countryDao();
				
						
						HttpSession session = request.getSession();
						List ls=countryDAO.editCountry(countryvo);
						session.setAttribute("editList", ls);
						
						response.sendRedirect("Admin/editCountry.jsp");
					
	}

	private void search(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		countryVo countryvo =new countryVo();
		
		countryDao countryDAO=new countryDao();
		List ls=countryDAO.searchCountry(countryvo);
		HttpSession session = request.getSession();
		
		session.setAttribute("List", ls);		
	
		
		response.sendRedirect("Admin/viewCountry.jsp");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub1
		doGet(request, response);
		String flag=request.getParameter("flag");
		if(flag.equals("insert"))
		{
			insert(request,response);
		}
		else if(flag.equals("update"))
		{
			update(request,response);
		}
		
	}

	private void update(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		int id=Integer.parseInt(request.getParameter("id"));
		
		String countryName=request.getParameter("countryName");
		String countryDiscription=request.getParameter("countryDiscription");
		
		countryVo countryvo =new countryVo();
		countryvo.setCountryId(id);
		countryvo.setCountryName(countryName);
		countryvo.setCountryDiscription(countryDiscription);
		
		countryDao countryDAO=new countryDao();
		countryDAO.updateCountry(countryvo);
	}

	private void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String countryName=request.getParameter("countryName");
		String countryDiscription=request.getParameter("countryDiscription");
		
		countryVo countryvo =new countryVo();
		countryvo.setCountryName(countryName);
		countryvo.setCountryDiscription(countryDiscription);
		
		countryDao countryDAO=new countryDao();
		countryDAO.insertCountry(countryvo);
		response.sendRedirect("Admin/addCountry.jsp");

	}

}
