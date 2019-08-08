package Controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.feedbackDao;
import Vo.feedbackVo;
import Vo.loginVo;

/**
 * Servlet implementation class feedbackController
 */
@WebServlet("/feedbackController")
public class feedbackController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public feedbackController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag = request.getParameter("flag");
		if (flag.equals("search")) {
			search(request, response);
		}
	
		else if (flag.equals("delete"))
		{
			delete(request, response);
		}
	}
	private void delete(HttpServletRequest request, HttpServletResponse response) throws IOException{
		
		int id=Integer.parseInt(request.getParameter("id"));
		
		feedbackVo feedbackvo= new feedbackVo();
		feedbackvo.setFeedbackId(id);

		feedbackDao feedbackdao=new feedbackDao();
		feedbackdao.delete(feedbackvo);
		
		search(request,response);
	}
	private void search(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		
		feedbackVo feedbackvo=new feedbackVo();
		feedbackDao feedbackdao=new feedbackDao();
		List ls =feedbackdao.search(feedbackvo);
		HttpSession session=request.getSession();
		session.setAttribute("List",ls);
		response.sendRedirect("Admin/viewFeedback.jsp");				
	}

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag = request.getParameter("flag");
		if (flag.equals("insert")) {
			insert(request, response);
		}
	}

	private void insert(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		int id = (int) request.getSession().getAttribute("userID");
		
		loginVo loginvo = new loginVo();
		 loginvo.setLoginId(id);
		 

		Date d = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		String date = dateFormat.format(d);

		SimpleDateFormat timeFormat = new SimpleDateFormat("HH:mm:ss");

		String time = timeFormat.format(d);

		String feedbackTitle = request.getParameter("title");
		String feedbackDescription = request.getParameter("description");
		String feedbackRating = request.getParameter("rating");

		feedbackVo feedbackvo = new feedbackVo();
		feedbackvo.setFeedbackTitle(feedbackTitle);
		feedbackvo.setFeedbackRatings(feedbackRating);
		feedbackvo.setFeedbackDescription(feedbackDescription);
		feedbackvo.setFeedbackDate(date);
		feedbackvo.setFeedbackTime(time);
		feedbackvo.setUserId(loginvo);

		feedbackDao feedbackdao = new feedbackDao();
		feedbackdao.insert(feedbackvo);

		response.sendRedirect("User/feedback.jsp");
	}


	}


