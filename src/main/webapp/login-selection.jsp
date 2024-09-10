<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Page</title>
<link rel="stylesheet" href="css/login-selection.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Baloo+2:wght@400..800&display=swap"
	rel="stylesheet">
</head>
<body
	style="background-image: url('images/user_background.jpg'); background-repeat: no-repeat; background-size: cover; background-blend-mode: calc(75%);">
	<div class="container">
		<h2>Choose Account Type</h2>
		<div class="account-type">
			<!-- Buttons to select user type, setting a hidden input for userType -->
			<button type="button" class="btn active"
				onclick="setUserType('Customer')">
				<img src="images/customer.png"><br>Customer
			</button>
			<button type="button" class="btn" onclick="setUserType('Admin')">
				<img src="images/admin.png"><br>Admin
			</button>
		</div>
	 <form id="login-form" action="LoginHandler" method="post">
            <input type="hidden" name="userType" id="userType" value="Customer">
            <p id="welcome-text">Hello User! Please enter the credentials to proceed.</p>
            <div class="input-field">
                <input type="text" id="username" name="username" placeholder="User ID" >
            </div>
            <div class="input-field">
                <input type="password" id="password" name="password" placeholder="Password" >
            </div>
            <!-- Display error message if any -->
            <div class="error" style="margin-bottom: 10px;">
                <%= request.getAttribute("error") != null ? request.getAttribute("error") : "" %>
            </div>
            <button type="submit" class="login-btn">Login</button>
        </form>
        <p>Don't have an account? <a href="register.jsp">Register</a></p>
	</div>

	<script src="js/login-selection.js"></script>
	<script>
        function setUserType(type) {
            document.getElementById('userType').value = type;
            var buttons = document.querySelectorAll('.btn');
            buttons.forEach(button => button.classList.remove('active'));
            if (type === 'Customer') {
                buttons[0].classList.add('active');
            } else {
                buttons[1].classList.add('active');
            }
        }
        if(document.getElementById('password').value >= 4){
        	
        }
    </script>
</body>
</html>