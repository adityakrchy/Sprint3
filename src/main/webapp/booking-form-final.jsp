<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Booking Confirmation</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
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
			<!-- <div class="dropdown">
                    <img src="/images/user-icon.jpeg" alt="User Avatar" class="avatar">
                    <div class="dropdown-content">
                        <p class="tb">Username</p>
                        <a href="#" class="dropdown-link">Support</a>
                        <a href="#" class="dropdown-link">Log Out</a>
                    </div>
                </div> -->
			<a href="login-selection.html"
				style="background-color: #e2b646; border-radius: 5px; padding: 5px 20px; cursor: pointer; color: white; text-decoration: none;">Login</a>
		</div>
		<!-- existing navbar content -->
	</nav>
	<div class="container mt-5">
		<div class="card">
			<div class="card-body">
				<h5 class="card-title">Booking Confirmation</h5>
				<p>
					<strong>Sender Name:</strong> ${senderName}
				</p>
				<p>
					<strong>Receiver Name:</strong> ${receiverName}
				</p>
				<p>
					<strong>Service Cost:</strong> ${serviceCost}
				</p>
				<p>
					<strong>Booking ID:</strong> ${booking_id}
				</p>
				<div class="text-center mt-4">
					<a href="booking-form.html" class="btn btn-primary">Book
						Another Parcel</a>
				</div>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
