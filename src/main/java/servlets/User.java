package servlets;

public class User {
	private static int customerCount = 1;
	private static int officerCount = 1;

	private String customerId;
	private String userFullName;
	private String userEmail;
	private String userMobileNo;
	private String userFullAddress;
	private String username;
	private String userPassword;
	private String userRole;

	public User() {
		this.setCustomerId(null);
        this.userFullName = null;
        this.userFullAddress = null;
        this.userEmail = null;
        this.userMobileNo = null;
        this.userPassword = null;
        this.userRole = null;
    }

	public User(String username, String fullName, String FullAddress, String email, String mob, String password, String role) {
		this.userFullName = fullName;
        this.userFullAddress = FullAddress;
        this.userEmail = email;
        this.userMobileNo = mob;
        this.userPassword = password;
        this.userRole = role;
        this.username = username;
    }

	public String getUsername() {
		return this.username;
	}

	public String getUserFullName() {
		return this.userFullName;
	}

	public String getUserFullAddress() {
		return this.userFullAddress;
	}

	public String getUserEmail() {
		return this.userEmail;
	}

	public String getUserMobileNo() {
		return this.userMobileNo;
	}

	public String getUserPassword() {
		return this.userPassword;
	}

	public String getUserRole() {
		return this.userRole;
	}

	public void setUserId(String username) {
		this.username = username;
	}

	public void setUserFullName(String fullname) {
		this.userFullName = fullname;
	}

	public void setUserFullAddress(String fulladdress) {
		this.userFullAddress = fulladdress;
	}

	public void setUserEmail(String email) {
		this.userEmail = email;
	}

	public void setUserMobileNo(String mob) {
		this.userMobileNo = mob;
	}

	public void setUserPassword(String pass) {
		this.userPassword = pass;
	}

	public void setUserRole(String role) {
		this.userRole = role;
	}

	public static String generateCustomerIdBasedOnRole(String role) {
		String custId = "";
		if (role.equalsIgnoreCase("CUSTOMER")) {
			custId = "CUS" + customerCount++;
		} else if (role.equalsIgnoreCase("OFFICER")) {
			custId = "OFF" + officerCount++;
		}
		return custId;
	}

	public String getCustomerId() {
		return customerId;
	}

	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}
}
