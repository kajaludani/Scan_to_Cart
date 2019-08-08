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
import Dao.stateDao;
import Dao.stateDao;
import Dao.stateDao;
import Vo.countryVo;
import Vo.stateVo;
import Vo.stateVo;
import Vo.stateVo;

/**
 * Servlet implementation class stateController
 */
@WebServlet("/stateController")
public class stateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public stateController() {
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
		else if(flag.equals("delete"))
		{
			delete(request,response);
			
		}
		else if(flag.equals("loadcountry"))
		{
			loadcountry(request,response);
		}
		else if(flag.equals("edit"))
		{
			edit(request,response);
		}

	}
	

	private void edit(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		stateVo statevo =new stateVo();
		statevo.setStateId(id);
		
		stateDao stateDAO=new stateDao();
		List ls=stateDAO.editState(statevo);
		
		HttpSession session = request.getSession();
		session.setAttribute("List", ls);		
	
		response.sendRedirect("Admin/editState.jsp");
		
		
	}

	private void loadcountry(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		countryVo countryvo =new countryVo();
		
		countryDao countryDAO=new countryDao();
		List ls=countryDAO.searchCountry(countryvo);
		HttpSession session = request.getSession();
		
		session.setAttribute("List", ls);		
	
		
		response.sendRedirect("Admin/addState.jsp");
	
	}

	private void delete(HttpServletRequest request, HttpServletResponse response) throws IOException  {
		// TODO Auto-generated method stub
		
			int id=Integer.parseInt(request.getParameter("id"));
		
			stateVo statevo =new stateVo();
			statevo.setStateId(id);
				
			stateDao stateDAO=new stateDao();
			stateDAO.deleteState(statevo);
			
			search(request, response);
	}

	private void search(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		
		stateVo statevo =new stateVo();
		
		stateDao stateDAO=new stateDao();
		List ls=stateDAO.searchState(statevo);
		HttpSession session = request.getSession();
		
		session.setAttribute("List", ls);		
	
		
		response.sendRedirect("Admin/viewState.jsp");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
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
		
		String stateName=request.getParameter("stateName");
		String stateDiscription=request.getParameter("stateDiscription");
		
		stateVo statevo =new stateVo();
		statevo.setStateId(id);
		statevo.setStateName(stateName);
		statevo.setStateDiscription(stateDiscription);
		
		stateDao stateDAO=new stateDao();
		stateDAO.updateState(statevo);
	}

	private void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		String stateName=request.getParameter("stateName");
		String stateDiscription=request.getParameter("stateDiscription");
		
		countryVo countryVo = new countryVo();
		countryVo.setCountryId(id);
		
		stateVo statevo =new stateVo();
		statevo.setStateName(stateName);
		statevo.setStateDiscription(stateDiscription);
		statevo.setStateStatus("Active");
		statevo.setCountryvo(countryVo);
		
		stateDao stateDAO=new stateDao();
		stateDAO.insertState(statevo);
		response.sendRedirect("Admin/addState.jsp");
	}
		// TODO Auto-generated method stub
		
	}


