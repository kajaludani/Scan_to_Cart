package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.cityDao;
import Dao.countryDao;
import Dao.stateDao;
import Dao.cityDao;
import Vo.cityVo;
import Vo.countryVo;
import Vo.stateVo;
import Vo.cityVo;

/**
 * Servlet implementation class cityController
 */
@WebServlet("/cityController")
public class cityController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public cityController() {
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
		if(flag.equals("loadstate"))
		{
		
			loadstate(request,response);
			
		}

		
	}

	private void loadstate(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
stateVo statevo =new stateVo();
		
		stateDao stateDAO=new stateDao();
		List ls=stateDAO.searchState(statevo);
		
		countryVo countryvo =new countryVo();
		
		countryDao countryDAO=new countryDao();
		List ls1=countryDAO.searchCountry(countryvo);
		HttpSession session = request.getSession();
		
		session.setAttribute("sList", ls);		

		
		
		session.setAttribute("cList", ls1);		
	
		
		response.sendRedirect("Admin/addCity.jsp");	
	}

	private void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		
		cityVo cityvo =new cityVo();
				cityvo.setCityId(id);
				
				cityDao cityDAO=new cityDao();
			
					
					HttpSession session = request.getSession();
					List ls=cityDAO.editCity(cityvo);
					session.setAttribute("editList", ls);
					
					response.sendRedirect("Admin/editCity.jsp");
		
	}

	private void search(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
cityVo cityvo =new cityVo();
		
		cityDao cityDAO=new cityDao();
		List ls=cityDAO.searchCity(cityvo);
		HttpSession session = request.getSession();
		
		session.setAttribute("List", ls);		
	
		
		response.sendRedirect("Admin/viewCity.jsp");
			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

		String flag=request.getParameter("flag");
		if(flag.equals("insert"))
		{
			insert(request,response);
		}
	}

	private void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String cityName=request.getParameter("cityName");
		String cityDiscription=request.getParameter("cityDiscription");
		
		cityVo cityvo =new cityVo();
		cityvo.setCityName(cityName);
		cityvo.setCityDiscription(cityDiscription);
		
		cityDao cityDAO=new cityDao();
		cityDAO.insertcity(cityvo);
		response.sendRedirect("Admin/addCity.jsp");
		
	}

}
