package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.SendEmail;
import Dao.loginDao;
import Dao.regDao;
import Vo.loginVo;
import Vo.regVo;

/**
 * Servlet implementation class Registration
 */
@WebServlet("/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Registration() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String flag = request.getParameter("flag");
		if (flag.equals("searchUser")) {
			searchUser(request, response);
		}
	}

	private void searchUser(HttpServletRequest request, HttpServletResponse response) throws IOException {

		HttpSession session = request.getSession();
		regDao regDao = new regDao();

		List searchUser = regDao.search();
		session.setAttribute("searchUser", searchUser);

		response.sendRedirect("Admin/manageuser.jsp");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag = request.getParameter("flag");
		if (flag.equals("insert")) {
			insert(request, response);
		} else if (flag.equals("forgotPassword")) {
			forgotPassword(request, response);
		}
	}

	private void forgotPassword(HttpServletRequest request, HttpServletResponse response) throws IOException {

		String user_email = request.getParameter("user_email");

		loginVo loginVo = new loginVo();
		loginVo.setEmail(user_email);

		loginDao dao = new loginDao();
		String Passsword = dao.getPassword(loginVo);

		SendEmail.sendMail(user_email, "Forgot Password",
				"your Password Was--->>>" + Passsword, "jazzy.pandya18@gmail.com",
				"8690052520");
		response.sendRedirect("User/Login.jsp");
	}

	private void insert(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		String Firstname = request.getParameter("Firstname");
		String Lastname = request.getParameter("Lastname");
/*		String Gender = request.getParameter("Gender");
*/		String Email = request.getParameter("Email");
		String Password = request.getParameter("Password");
		String ConfirmPassword = request.getParameter("ConfirmPassword");
		String userType = request.getParameter("userType");

		if (Password.equals(ConfirmPassword)) {
			loginVo loginVo = new loginVo();
			loginVo.setEmail(Email);
			loginVo.setPassword(Password);
			loginVo.setUserType("user");

			loginDao loginDao = new loginDao();
			loginDao.insertLogin(loginVo);

			regVo regvo = new regVo();
			regvo.setFirstname(Firstname);
			regvo.setLastname(Lastname);
/*			regvo.setGender(Gender);
*/
			regvo.setLoginVo(loginVo);

			regDao regDAO = new regDao();
			regDAO.insertReg(regvo);

			response.sendRedirect("User/Login.jsp");

		}
	}
}
