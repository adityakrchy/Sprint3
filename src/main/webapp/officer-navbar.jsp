<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="./css/navbar.css">
</head>
<body>
	<nav class="navbar">
		<div class="navbar-left">
			<div>
				<a href="index.html"> <img src="images/logo.png" alt="Logo"
					class="logo">
				</a>
			</div>

			<a href="booking-form.jsp" class="nav-link">Booking Service</a> <a
				href="tracking-services.jsp" class="nav-link">Tracking</a> <a
				href="booking-history.jsp" class="nav-link">Previous Booking</a>
		</div>
		<div class="navbar-right">
			<div class="dropdown">
				<img src="images/avatar.png" alt="User Avatar" class="avatar" />
				<div class="dropdown-content">
					<p class="tb">${userName}</p>
					<a href="#" class="dropdown-link">Support</a> <a
						href="LogoutHandler" class="dropdown-link">Log Out</a>
				</div>
			</div>
			<!--             <a href="LogoutHandler" -->
			<!--                 style="background-color: #e2b646; border-radius: 5px; padding: 5px 20px; cursor:pointer; color: white; text-decoration:none;">Logout</a> -->
		</div>
	</nav>
</body>
</html>