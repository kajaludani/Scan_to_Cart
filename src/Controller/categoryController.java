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
import Dao.stateDao;
import Dao.categoryDao;
import Dao.categoryDao;
import Vo.categoryVo;
import Vo.countryVo;
import Vo.stateVo;
import Vo.categoryVo;
import Vo.categoryVo;

/**
 * Servlet implementation class categoryController
 */
@WebServlet("/categoryController")
public class categoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public categoryController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String flag=request.getParameter("flag");
		if(flag.equals("search"))
		{
			search(request,response);
		}
		else if(flag.equals("edit"))
		{
		
		edit(request,response);
		
	}
		else if(flag.equals("delete"))
		{
			delete(request,response);
			
		}
	}

	private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id=Integer.parseInt(request.getParameter("id"));
		
		categoryVo categoryvo =new categoryVo();
		categoryvo.setCategoryId(id);
			
		categoryDao categoryDAO=new categoryDao();
		categoryDAO.deleteCategory(categoryvo);
		
		search(request, response);
	}

	private void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id=Integer.parseInt(request.getParameter("id"));
		
		categoryVo categoryvo =new categoryVo();
				categoryvo.setCategoryId(id);
				
				categoryDao categoryDAO=new categoryDao();
			
					
					HttpSession session = request.getSession();
					List ls=categoryDAO.editCategory(categoryvo);
					session.setAttribute("editList", ls);
					
					response.sendRedirect("Admin/editCategory.jsp");	
	}

	private void search(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		categoryVo categoryvo =new categoryVo();
		
		categoryDao categoryDAO=new categoryDao();
		List ls=categoryDAO.searchCategory(categoryvo);
		HttpSession session = request.getSession();
		
		session.setAttribute("List", ls);		
	
		
		response.sendRedirect("Admin/viewCategory.jsp");
			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
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
		
		String categoryName=request.getParameter("categoryName");
		String categoryDiscription=request.getParameter("categoryDiscription");
		
		categoryVo categoryvo =new categoryVo();
		categoryvo.setCategoryId(id);
		categoryvo.setCategoryName(categoryName);
		categoryvo.setCategoryDiscription(categoryDiscription);
		
		categoryDao categoryDAO=new categoryDao();
		categoryDAO.updateCategory(categoryvo);
	}

	private void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String categoryName=request.getParameter("categoryName");
		String categoryDiscription=request.getParameter("categoryDiscription");
		
		categoryVo categoryvo =new categoryVo();
		categoryvo.setCategoryName(categoryName);
		categoryvo.setCategoryDiscription(categoryDiscription);
		
		categoryDao categoryDAO=new categoryDao();
		categoryDAO.insertCategory(categoryvo);
		response.sendRedirect("Admin/addCategory.jsp");
	}

}
