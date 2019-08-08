
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
import Dao.productDao;
import Dao.viewProductDao;
import Vo.FileVO;
import Vo.categoryVo;
import Vo.loginVo;
import Vo.productVo;
import Vo.wishlistVo;

/**
 * Servlet implementation class viewProductController
 */
@WebServlet("/viewProductController")
public class viewProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public viewProductController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag=request.getParameter("flag");
		if(flag.equals("viewProduct"))
		{
			viewProduct(request,response);
		}
		else if(flag.equals("add"))
		{
			addToWishList(request,response);
		}
		else if(flag.equals("search"))
		{
			search(request,response);
		}
		
	}

	private void search(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub

		loginVo vo = new loginVo();
		vo.setLoginId((int)request.getSession().getAttribute("userID"));
		
		productDao productDAO=new productDao();
		List ls=productDAO.searchwishlist(vo);
		
		HttpSession session = request.getSession();
		session.setAttribute("List", ls);		

		categoryVo categoryvo =new categoryVo();
		
		categoryDao categoryDAO=new categoryDao();
		List ls1=categoryDAO.searchCategory(categoryvo);
		
		session.setAttribute("catList", ls1);
		
		viewProductDao dao = new viewProductDao();
		FileVO fileVO = new FileVO();
		
		List file = dao.searchProduct(fileVO);
		session.setAttribute("FileList", file);
		
		
		response.sendRedirect("User/cartContents.jsp");

	}

	private void addToWishList(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String amount=request.getParameter("amount");
		int itemID=Integer.parseInt(request.getParameter("itemID"));
		
		System.out.println(amount+"-"+itemID);
		
		
		System.out.println("in Method");
		productVo productVo = new productVo();
		productVo.setProductId(itemID);
		
		loginVo loginVo = new loginVo();
		loginVo.setLoginId((int)request.getSession().getAttribute("userID"));

		wishlistVo wishlistVo = new wishlistVo();
		wishlistVo.setAmount(amount);
		wishlistVo.setLoginVo(loginVo);
		wishlistVo.setProductvo(productVo);
		productDao dao = new productDao();
		dao.insertWishlist(wishlistVo);
		
		
	}

	private void viewProduct(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		
int id=Integer.parseInt(request.getParameter("id"));
String cname = request.getParameter("cname");
		
		categoryVo categoryvo =new categoryVo();
				categoryvo.setCategoryId(id);
		
				productVo vo = new productVo();
				vo.setCategoryvo(categoryvo);
		
		
				viewProductDao viewProductDAO=new viewProductDao();
				List ls1=viewProductDAO.searchProductbyCategory(vo);
				
				
				
		FileVO filevo =new FileVO();
		
		List ls=viewProductDAO.searchProduct(filevo);
		HttpSession session = request.getSession();
		
		session.setAttribute("List", ls);		
		session.setAttribute("pList", ls1);	
		session.setAttribute("cname", cname);
		
		response.sendRedirect("User/Productdetails.jsp");

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

	

	private void insert(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		int id=Integer.parseInt(request.getParameter("id"));
		String amount=request.getParameter("amount");
		
		productVo productvo = new productVo();
		productvo.setProductId(id);
		
		wishlistVo vo =new wishlistVo();
		vo.setAmount(amount);
		vo.setProductvo(productvo);
		
		
		response.sendRedirect("User/wishlist.jsp");
		
	}

}
