package servlets;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {
	public boolean insertUserData(Connection conn, User u) throws SQLException {
		String sql = "insert into users (username, fullname, address, email, mobileno, password, role) values (?, ?, ?, ?, ?, ?, ?)";

		try {
			PreparedStatement pts = conn.prepareStatement(sql);
			pts.setString(1, u.getUsername());
			pts.setString(2, u.getUserFullName());
			pts.setString(3, u.getUserFullAddress());
			pts.setString(4, u.getUserEmail());
			pts.setString(5, u.getUserMobileNo());
			pts.setString(6, u.getUserPassword());
			pts.setString(7, u.getUserRole());

			pts.execute();
			System.out.println("Data Inserted successfully.");
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
			return false;
		}

	}

	public ResultSet login(Connection conn, String username, String password, String userType) throws SQLException {
		// Establish connection to the database

		try {
			String sql = "SELECT * FROM customers WHERE email = ? AND password = ? and role = ?";

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, username);
			ps.setString(2, password);
			ps.setString(3, userType);

			ResultSet rs = ps.executeQuery();
			return rs;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;

	}

}
