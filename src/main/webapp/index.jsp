<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="servlets.User"%>
<%@page import="java.sql.Connection"%>
<%@page import="servlets.JDBC"%>
<%
HttpSession sess = request.getSession(false);
String user = (sess != null) ? (String) sess.getAttribute("userName") : null;
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Parcel Management Company Website</title>
<link rel="stylesheet" href="./css/index.css" />
<link rel="stylesheet" href="./css/navbar.css">
<link rel="stylesheet"	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" /> 
<link
	href="https://fonts.googleapis.com/css2?family=Baloo+Da+2:wght@400;500;600;700;800&family=Josefin+Slab:ital,wght@0,400;0,600;1,300;1,400;1,600&family=Muli:ital,wght@0,300;0,400;0,500;1,300;1,400;1,500&display=swap"
	rel="stylesheet" />
</head>
<body>
	<div class="spinner-container">
		<div class="circles">
			<!-- This div class is for the loader animation -->
			<div></div>
			<div></div>
			<div></div>
			<div></div>
			<div></div>
			<div></div>
			<div></div>
			<div></div>
		</div>
	</div>

	<div class="container">
		<!-- For the hamburger menu -->
		<div class="hamburger-menu">
			<div class="line line-1"></div>
			<div class="line line-2"></div>
			<div class="line line-3"></div>
			<span>Close</span>
		</div>
		<header class="header" id="home">
			<!-- Section 1 -->
			<div class="img-wrapper">
				<img src="images/bg.jpg" />
			</div>
			<div class="banner">
				<h1>Parcel Management System</h1>
				<p>Hello User! Welcome to ABC Parcel Service</p>
				<button>
					<a href="booking-form.jsp">Ship now!</a>
				</button>
			</div>
		</header>

		<section class="sidebar">
			<!-- Contents of the Hamburger menu -->
			<ul class="menu">
				<li class="menu-item"><a href="/" class="menu-link"
					data-content="Home">Home</a></li>
				<li class="menu-item"><a href="booking-form.jsp"
					class="menu-link" data-content="Booking Service">Booking
						Service</a></li>
				<li class="menu-item"><a href="tracking-services.jsp"
					class="menu-link" data-content="Tracking">Tracking</a></li>
				<li class="menu-item"><a href="booking-history.jsp"
					class="menu-link" data-content="Previous&nbsp;Booking">Previous&nbsp;Booking</a>
				</li>
				<li class="menu-item"><a href="#contact" class="menu-link"
					data-content="Contact Support">Contact Support</a></li>
				<%
				if (user != null) {
				%>
				<li class="menu-item"><a href="LogoutHandler" class="menu-link"
					data-content="Logout">Logout</a></li>
				<%
				} else {
				%>

				<li class="menu-item"><a href="login-selection.jsp"
					class="menu-link" data-content="Login">Login</a></li>
				<li class="menu-item"><a href="register.jsp" class="menu-link"
					data-content="Register">Register</a></li>
				<%
				}
				%>

				<li class="menu-item"><a class="menu-link welcome-text">Welcome
						${userName} ${userType}!</a></li>
			</ul>
		</section>

		<section class="booking" id="booking">
			<!-- Section 2 -->
			<div class="section-header">
				<h1 class="section-heading">Booking Services</h1>
				<div class="underline"></div>
			</div>
			<div class="services">
				<div class="service">
					<div class="service-header">
						<i class="fas fa-pen-nib"></i>
						<h3>Secure Storage</h3>
					</div>
					<p class="service-text">Our parcel management company ensures
						the safety of your packages with state-of-the-art storage
						facilities. Advanced surveillance and secure access protocols keep
						every item safe from arrival to delivery.</p>
				</div>
				<div class="service">
					<div class="service-header">
						<i class="fas fa-paint-roller"></i>
						<h3>Efficient Logistics</h3>
					</div>
					<p class="service-text">Our extensive logistics network ensures
						timely and reliable deliveries. We optimise routes and manage
						resources effectively. Our continuous improvements in logistics
						operations guarantee swift and safe.</p>
				</div>
				<div class="service">
					<div class="service-header">
						<i class="fas fa-pencil-alt"></i>
						<h3>Customized Packaging</h3>
					</div>
					<p class="service-text">We offer customized packaging services
						to protect all types of parcels during transit. Our expert team
						uses high-quality materials and innovative techniques to create
						bespoke solutions for fragile, bulky, or special items.</p>
				</div>
				<div class="service">
					<div class="service-header">
						<i class="fas fa-paint-brush"></i>
						<h3>Streamlined Tracking</h3>
					</div>
					<p class="service-text">Our tracking system provides real-time
						updates on your parcels, ensuring complete transparency. Clients
						can monitor shipments via our online platform, receiving
						notifications at key stages.</p>
				</div>
				<div class="service">
					<div class="service-header">
						<i class="fas fa-ruler-combined"></i>
						<h3>Delivery Planning</h3>
					</div>
					<p class="service-text">We tailor our delivery planning
						services to meet each client's specific needs. Our experienced
						team designs effective delivery plans that optimise time and
						resources.</p>
				</div>
				<div class="service">
					<div class="service-header">
						<i class="far fa-building"></i>
						<h3>Reliable Deliveries</h3>
					</div>
					<p class="service-text">Our reliable delivery execution ensures
						packages reach their destination promptly and securely. We monitor
						each step of the delivery process and address issues swiftly. Our
						trained drivers handle parcels with care.</p>
				</div>
				<div class="booking-img-wrapper">
					<img src="images/parcel.jpg" />
				</div>
			</div>
		</section>

		<section class="contact" id="contact">
			<!-- Section 3 -->
			<div class="contact-wrapper">
				<img src="images/contact-bg.jpg" />
				<div class="contact-left"></div>
				<div class="contact-right">
					<h1 class="contact-heading">Contact Support</h1>
					<form>
						<div class="input-group">
							<input type="text" class="field" /> <label class="input-label">Full
								Name</label>
						</div>
						<div class="input-group">
							<input type="email" class="field" /> <label class="input-label">Email</label>
						</div>
						<div class="input-group">
							<textarea class="field"></textarea>
							<label class="message">Message</label>
						</div>
						<input type="submit" class="submit-btn" value="Submit" />
					</form>
				</div>
			</div>
		</section>

		<a href="#" class="scroll-btn"> <i class="fas fa-arrow-up"></i>
		</a>
	</div>
	<script src="./js/script.js"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.js"
		integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
		crossorigin="anonymous"></script>
</body>
</html>
