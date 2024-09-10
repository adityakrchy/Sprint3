package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistrationHandler
 */
@WebServlet("/RegistrationHandler")
public class RegistrationHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegistrationHandler() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	@Override
	protected void service(HttpServletRequest Request, HttpServletResponse Response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String customername = Request.getParameter("customername");
		String email = Request.getParameter("email");
		String phone = Request.getParameter("phone");
		String address = Request.getParameter("address");
		String username = Request.getParameter("username");
		String password = Request.getParameter("password");
		String confPassword = Request.getParameter("confPassword");
		String role = "Customer";
		JDBC jdbc = new JDBC();
		try (Connection conn = jdbc.connect()) {
			if (!password.equals(confPassword)) {
				Request.setAttribute("error", "Password didn't matched");
				Request.getRequestDispatcher("register.jsp").forward(Request, Response);
				return;
			}

			if (!password.matches("^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=!]).{8,}$")) {
				Request.setAttribute("error",
						"Password must contain at least 8 characters, including uppercase, lowercase, numbers, and special characters.");
				Request.getRequestDispatcher("register.jsp").forward(Request, Response);
				return;
			}

			if (!email.matches("^[\\w\\.-]+@[\\w\\.-]+\\.[a-z]{2,}$")) {
				Request.setAttribute("error", "Invalid email format.");
				Request.getRequestDispatcher("register.jsp").forward(Request, Response);
				return;
			}

			if (!username.matches("^[a-zA-Z0-9_]{5,20}$")) {
				Request.setAttribute("error",
						"Username must be 5-20 characters long and can contain only letters, numbers, and underscores.");
				Request.getRequestDispatcher("register.jsp").forward(Request, Response);
				return;
			}

			if (isUserExists(conn, username, email)) {
				Request.setAttribute("error", "Username or Email already exists.");
				Request.getRequestDispatcher("register.jsp").forward(Request, Response);
				return;
			}

			User user = new User(username, customername, address, email, phone, password, role);
			UserDAO ins = new UserDAO();
			System.out.println("started inserting");
			boolean res = ins.insertUserData(conn, user);

			if (res == true) {
				Request.setAttribute("message", "Data inserted successfully.");
				Request.setAttribute("success", true);
			} else {
				Request.setAttribute("message", "Something went wrong.");
				Request.setAttribute("error", true);
			}

			RequestDispatcher rDispatch = Request.getRequestDispatcher("register.jsp");
			rDispatch.forward(Request, Response);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	// Method to check if a user exists
	private boolean isUserExists(Connection conn, String username, String email) throws Exception {
		String query = "SELECT * FROM users WHERE username = ? OR email = ?";
		try (PreparedStatement stmt = conn.prepareStatement(query)) {
			stmt.setString(1, username);
			stmt.setString(2, email);

			ResultSet rs = stmt.executeQuery();
			// Return true if user exists
			return rs.next();
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		service(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		service(request, response);
	}

}
