
<%-- <% --%>
// //HttpSession session = request.getSession(false);

// if (session == null || session.getAttribute("userName") == null) {
// 	response.sendRedirect(request.getContextPath() + "/login-selection.jsp");
// }
<%-- %> --%>

<!-- <!DOCTYPE html> -->
<!-- <html lang="en"> -->
<!-- <head> -->
<!-- <meta charset="UTF-8"> -->
<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
<!-- <title>Parcel Tracking Status</title> -->
<!-- <link rel="stylesheet" -->
<!-- 	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"> -->
<!-- <link rel="stylesheet" href="./css/tracking-services.css"> -->
<!-- <link rel="preconnect" href="https://fonts.googleapis.com"> -->
<!-- <link rel="stylesheet" href="./css/navbar.css"> -->

<!-- <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin> -->
<!-- <link -->
<!-- 	href="https://fonts.googleapis.com/css2?family=Baloo+Da+2:wght@400..800&display=swap" -->
<!-- 	rel="stylesheet"> -->
<!-- </head> -->
<!-- <body> -->
<%-- 	<%@ include file="customer-navbar.jsp"%> --%>
<!-- 	<div class="container"> -->
<!-- 		<div class="card mt-5"> -->
<!-- 			<div class="card-body"> -->
<!-- 				<h5 class="card-title text-center">Order Status</h5> -->
<!-- 				<p class="card-text text-center">Booking ID:</p> -->
<!-- 				<input type="text" class="form-control" id="tb" name="book_id"> -->
<!-- 				<div class="track"> -->
<!-- 					<div class="step active">Order placed</div> -->
<!-- 					<div class="step">In Transit</div> -->
<!-- 					<div class="step">Out for Delivery</div> -->
<!-- 					<div class="step">Delivered</div> -->
<!-- 				</div> -->
<!-- 				<div class="text-center mt-4"> -->
<!-- 					<p> -->
<!-- 						Shipped with <strong> Partner </strong> -->
<!-- 					</p> -->
<!-- 					<p> -->
<!-- 						Estimated Delivery <strong> -->
<!-- 							<h5>Date</h5> -->
<!-- 						</strong> -->
<!-- 					</p> -->
<!-- 				</div> -->
<!-- 				<div class="text-center"> -->
<!-- 					<button class="btn btn-primary"> -->
<!-- 						<i class="fas fa-phone"></i> Contact -->
<!-- 					</button> -->
<!-- 					<button class="btn btn-primary"> -->
<!-- 						<i class="fas fa-envelope"></i> Email -->
<!-- 					</button> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->

<!-- 	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script> -->
<!-- 	<script -->
<!-- 		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script> -->
<!-- 	<script -->
<!-- 		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> -->
<!-- 	<script src="https://kit.fontawesome.com/a076d05399.js"></script> -->
<!-- </body> -->
<!-- </html> -->


<%@ page import="javax.servlet.http.Cookie"%>
<%
//HttpSession session = request.getSession(false);

if (session == null || session.getAttribute("userName") == null) {
	response.sendRedirect(request.getContextPath() + "/login-selection.jsp");
}
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Parcel Tracking Status</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="./css/tracking-services.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="stylesheet" href="./css/navbar.css">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Baloo+Da+2:wght@400..800&display=swap"
	rel="stylesheet">
</head>
<body>
	<%@ include file="customer-navbar.jsp"%>
	<div class="container">
		<div class="card mt-5">
			<div class="card-body">
				<h5 class="card-title text-center">Order Status</h5>
				<p class="card-text text-center">Booking ID:</p>
				<input type="text" class="form-control" id="bookingId" name="book_id">
				<button class="btn btn-primary mt-3" id="trackButton">Track</button>

				<div id="statusContainer" class="d-none mt-4">
					<div class="track">
						<div class="step" id="step1">Order placed</div>
						<div class="step" id="step2">In Transit</div>
						<div class="step" id="step3">Out for Delivery</div>
						<div class="step" id="step4">Delivered</div>
					</div>
					<div class="text-center mt-4">
						<p>
							Shipped with <strong id="partner">Partner</strong>
						</p>
						<p>
							Estimated Delivery <strong>
								<h5 id="deliveryDate">Date</h5>
							</strong>
						</p>
					</div>
				</div>

				<div id="loading" class="text-center mt-4 d-none">
					<p>Loading...</p>
				</div>
			</div>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script src="https://kit.fontawesome.com/a076d05399.js"></script>
	<script src="./js/tracking.js"></script>
</body>
</html>
