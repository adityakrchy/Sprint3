package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginHandler
 */
@WebServlet("/LoginHandler")
public class LoginHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginHandler() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String userType = request.getParameter("userType");

		// Check if input fields are filled
		if (username == null || username.isEmpty() || password == null || password.isEmpty() || userType == null
				|| userType.isEmpty()) {
			request.setAttribute("error", "Please fill in all details.");
			request.getRequestDispatcher("login-selection.jsp").forward(request, response);
			return;
		}

		// Establish connection to the database
		JDBC jdbc = new JDBC();
		String sql;
		try (Connection conn = jdbc.connect()) {
			if ("Customer".equals(userType)) {
				sql = "SELECT * FROM users WHERE username = ? AND password = ? AND role = 'user'";
			} else if ("Admin".equals(userType)) {
				sql = "SELECT * FROM users WHERE username = ? AND password = ? AND role = 'admin'";
			} else {
				request.setAttribute("error", "Invalid user type.");
				request.getRequestDispatcher("login-selection.jsp").forward(request, response);
				return;
			}

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, username);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				// Successful login - Create session and redirect to respective dashboard
				String role = rs.getString("role");
				String name = rs.getString("fullname");
				String address = rs.getString("address");
				String phone = rs.getString("mobileno");
				System.out.println(name + address + phone);
				if (rs.getString("role").equals("user")) {

					HttpSession session = request.getSession();
					session.setAttribute("userName", username);
					session.setAttribute("fullname", name);
					session.setAttribute("userType", role);

					session.setAttribute("name", name);
					session.setAttribute("address", address);
					session.setAttribute("phone", phone);

					RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
					rd.forward(request, response);
				} else if (rs.getString("role").equals("admin")) {
					HttpSession session = request.getSession();
					session.setAttribute("userName", username);
					session.setAttribute("userType", role);

					RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
					rd.forward(request, response);
				}
			} else {
				// Invalid credentials
				request.setAttribute("error", "Invalid email or password.");
				request.getRequestDispatcher("login-selection.jsp").forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "An error occurred. Please try again.");
			request.getRequestDispatcher("login-selection.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
