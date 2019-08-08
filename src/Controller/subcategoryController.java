package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.categoryDao;
import Dao.countryDao;
import Dao.subcategoryDao;
import Dao.subcategoryDao;
import Vo.categoryVo;
import Vo.countryVo;
import Vo.subcategoryVo;
import Vo.subcategoryVo;

/**
 * Servlet implementation class subcategoryController
 */
@WebServlet("/subcategoryController")
public class subcategoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public subcategoryController() {
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
		else if(flag.equals("edit"))
		{
		
		edit(request,response);
		
	}
		else if(flag.equals("loadcategory"))
		{
		
			loadcategory(request,response);
			
		}
		else if(flag.equals("delete"))
		{
			delete(request,response);
			
		}
	}

	private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
int id=Integer.parseInt(request.getParameter("id"));
		
		subcategoryVo subcategoryvo =new subcategoryVo();
		subcategoryvo.setSubcategoryId(id);
			
		subcategoryDao subcategoryDAO=new subcategoryDao();
		subcategoryDAO.deleteSubCategory(subcategoryvo);
		
		search(request, response);

	}

	private void loadcategory(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		
		categoryVo categoryvo =new categoryVo();
		
		categoryDao categoryDAO=new categoryDao();
		List ls=categoryDAO.searchCategory(categoryvo);
		HttpSession session = request.getSession();
		
		session.setAttribute("List", ls);		
	
		response.sendRedirect("Admin/addSubCategory.jsp");

	}

	private void edit(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		// TODO Auto-generated method stub
			int id=Integer.parseInt(request.getParameter("id"));
		
				subcategoryVo subcategoryvo =new subcategoryVo();
				subcategoryvo.setSubcategoryId(id);
				
				subcategoryDao subcategoryDAO=new subcategoryDao();
			
					
					HttpSession session = request.getSession();
					List ls=subcategoryDAO.editSubCategory(subcategoryvo);
					session.setAttribute("List", ls);
					response.sendRedirect("Admin/editSubCategory.jsp");	
	
	}

	private void search(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		// TODO Auto-generated method stub
		
subcategoryVo subcategoryvo =new subcategoryVo();
		
		subcategoryDao subcategoryDAO=new subcategoryDao();
		List ls=subcategoryDAO.searchSubCategory(subcategoryvo);
		HttpSession session = request.getSession();
		
		session.setAttribute("List", ls);		
	
		
		response.sendRedirect("Admin/viewSubCategory.jsp");
		
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
		else if(flag.equals("update"))
		{
			update(request,response);
		}
		
	}

	private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
int id=Integer.parseInt(request.getParameter("id"));
		
		String subcategoryName=request.getParameter("subcategoryName");
		String subcategoryDiscription=request.getParameter("subcategoryDiscription");
		
		subcategoryVo subcategoryvo =new subcategoryVo();
		subcategoryvo.setSubcategoryId(id);
		subcategoryvo.setSubcategoryName(subcategoryName);
		subcategoryvo.setSubcategoryDiscription(subcategoryDiscription);
		
		subcategoryDao subcategoryDAO=new subcategoryDao();
		subcategoryDAO.updatesubcategory(subcategoryvo);

	}

	private void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id=Integer.parseInt(request.getParameter("id"));
		String subcategoryName=request.getParameter("subcategoryName");
		String subcategoryDiscription=request.getParameter("subcategoryDiscription");
		
		categoryVo categoryVo = new categoryVo();
		categoryVo.setCategoryId(id);
		
		subcategoryVo subcategoryvo =new subcategoryVo();
		subcategoryvo.setSubcategoryName(subcategoryName);
		subcategoryvo.setSubcategoryDiscription(subcategoryDiscription);
		subcategoryvo.setSubcategoryStatus("Active");
		subcategoryvo.setCategoryvo(categoryVo);
		
		subcategoryDao subcategoryDAO=new subcategoryDao();
		subcategoryDAO.insertsubcategory(subcategoryvo);
		response.sendRedirect("Admin/addSubCategory.jsp");
	
	}

}
