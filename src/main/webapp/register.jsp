<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Registration Form</title>
<link rel="stylesheet" href="css/registration_page.css">
<style>
/* Modal Styles */
/* Modal Styles */
.modal {
	display: none;
	position: fixed;
	z-index: 1000;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.3); /* Lighter overlay */
}

.modal-content {
	position: relative;
	background-color: #ffffff; /* Light background */
	margin: 10% auto;
	padding: 2px;
	width: 40%; /* Reduce width for minimalist look */
	border-radius: 10px;
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); /* Light shadow for depth */
	text-align: center;
	font-family: 'Arial', sans-serif;
}

.modal-content h4 {
	color: #333333; /* Soft text color */
	font-size: 18px;
	margin: 0;
	padding: 10px;
	border-radius: 5px;
}

.error-msg {
	background-color: #ffeded; /* Soft red for error */
	color: #d9534f; /* Lighter red text */
}

.success-msg {
	background-color: #e6f7e6; /* Soft green for success */
	color: #5cb85c; /* Lighter green text */
}

.close-btn {
	color: #666666; /* Subtle close button color */
	float: right;
	font-size: 24px;
	font-weight: normal;
	cursor: pointer;
}

.close-btn:hover {
	color: #333333; /* Darker hover effect */
}
</style>
</head>
<body
	style="background-image: url('images/user_background.jpg'); background-repeat: no-repeat; background-size: cover; background-color: rgba(0, 0, 0, 0.5); background-blend-mode: multiply; opacity: 0.85;">
	<div class="form-container">
		<h2>Registration Form</h2>
		<form action="RegistrationHandler" method="post">
			<!-- Section 1: Personal Information -->
			<div class="form-section">
				<h3>Personal Information</h3>
				<label for="name">Customer Name</label> <input type="text" id="name"
					name="customername" placeholder="Full Name" required> <label
					for="email">Email</label> <input type="email" id="email"
					name="email" placeholder="example@email.com" required> <label
					for="phone">Phone Number</label> <input type="tel" id="phone"
					name="phone" placeholder="Country Code + Phone Number" required>
				<label for="address">Address</label> <input type="text" id="address"
					name="address" placeholder="Address" required>
			</div>

			<!-- Section 2: Username and Password -->
			<div class="form-section">
				<h3>Username and Password</h3>
				<label for="username">Username</label> <input type="text"
					id="username" name="username" placeholder="User ID" required>
				<label for="password">Password</label> <input type="password"
					id="password" name="password" placeholder="Password" required>
				<label for="confirmpassword">Confirm Password</label> <input
					name="confPassword" type="password" id="confirmpassword"
					placeholder="Confirm Password" required>
			</div>

			<!-- Section 3: Preferences -->
			<div class="form-section">
				<h3>Preferences</h3>
				<label> <input type="checkbox" id="notifications">
					Receive Notifications
				</label> <label> <input type="checkbox" id="maildelivery">
					Enable Mail Delivery
				</label>
			</div>

			<button type="submit" class="submit-btn">Submit</button>
			<button type="reset" class="reset-btn">Reset</button>
			<p>Already have an account? <a href="login-selection.jsp">Login</a></p>
		</form>
	</div>

	<!-- Minimalistic Modal Structure -->
	<div id="myModal" class="modal">
		<div class="modal-content" id="modalContent">
			<span class="close-btn" id="closeModal">&times;</span>
			<h4 id="modalMessage"></h4>
		</div>
	</div>

	<script>
		// Show modal
		function showModal(message, type) {
			const modal = document.getElementById("myModal");
			const modalMessage = document.getElementById("modalMessage");
			const modalContent = document.getElementById("modalContent");

			modalMessage.innerText = message;

			if (type === 'error') {
				modalMessage.className = 'error-msg';
			} else {
				modalMessage.className = 'success-msg';
			}

			modal.style.display = "block";
		}

		// Close modal
		document.getElementById("closeModal").onclick = function() {
			document.getElementById("myModal").style.display = "none";
		};

		// Check if there's an error or success message from server
		window.onload = function() {
			<% if (request.getAttribute("error") != null) { %>
				showModal("<%= request.getAttribute("error") %>", "error");
			<% } else if (request.getAttribute("success") != null) { %>
				showModal("Registration Successful! Welcome, <%= request.getAttribute("username") %>", "success");
			<% } %>
		};
	</script>
</body>
</html>
