package servlets;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBC {
	public Connection connect() throws ClassNotFoundException {
		Connection conn = null;
		Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
		try {

			// final String DRIVER = "org.apache.derby.jdbc.EmbeddedDriver";
			final String JDBC_URL = "jdbc:derby:C:\\Users\\Aditya\\MyDB;create=true";

			conn = DriverManager.getConnection(JDBC_URL);
			if (conn != null) {
				System.out.println("Connection successful.");
			}
		} catch (SQLException e) {
			System.out.println("Connection Failed. " + e);
			e.printStackTrace();
		}

		return conn;

	}
	public static void main(String[] args) throws ClassNotFoundException {
		JDBC obj = new JDBC();
		obj.connect();
	}
}
