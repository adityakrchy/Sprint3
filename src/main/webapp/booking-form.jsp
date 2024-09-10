
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
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Baloo+Da+2:wght@400..800&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="./css/navbar.css">
<link rel="stylesheet" href="css/booking-form.css">
<title>Booking Service</title>

</head>

<body>
	<%@ include file="customer-navbar.jsp"%>
	<h2 style="text-align: center;">Booking Service Form</h2>
	<form id="bookingForm" >

		<div class="form-group">
			<label for="senderName">Sender Name:</label> <input type="text"
				id="senderName" name="senderName" placeholder="Name">
		</div>
		<div class="form-group">
			<label for="senderAddress">Sender Address:</label> <input type="text"
				id="senderAddress" name="senderAddress" placeholder="Address">
		</div>
		<div class="form-group">
			<label for="senderContact">Sender Mobile number:</label> <input
				type="text" id="senderContact" name="senderMobilenumber" placeholder="Mobile number" >
		</div>

		<div class="form-group">
			<label for="receiverName">Receiver Name:</label> <input type="text"
				id="receiverName" name="receiverName" placeholder="Name">
		</div>
		<div class="form-group">
			<label for="receiverAddress">Receiver Address:</label> <input
				type="text" id="receiverAddress" name="receiverAddress"
				placeholder="Address">
		</div>
		<div class="form-group">
			<label for="receiverPincode">Receiver Pincode:</label> <input
				type="text" id="receiverPincode" name="receiverPincode"
				pattern="\d{6}" placeholder="Pincode">
		</div>
		<div class="form-group">
			<label for="rec_contact">Receiver Mobile Number:</label> <input
				type="text" id="rec_Contact" name="mobileno"
				placeholder="Mobile number">
		</div>
		<div class="form-group">
			<label>Parcel Details:</label>
			<table id="parcelDetailsTable">
				<thead>
					<tr>
						<th>Parcel Size</th>
						<th>Parcel Weight (kg)</th>
						<th>Action</th>
						<!-- New column for Remove button -->
					</tr>
				</thead>
				<tbody id="parcelDetailsBody">
					<!-- Initial row -->
					<tr>
						<td><select id="parcelSize" name="parcelSize">
								<option value="Small">Small</option>
								<option value="Medium">Medium</option>
								<option value="Large">Large</option>
						</select></td>
						<td><input type="number" id="parcelWeight"
							name="parcelWeight" /></td>
						<td>
							<button class="removeRowBtn">Remove</button> <!-- Remove button -->
						</td>
					</tr>
				</tbody>
			</table>
			<button id="addParcelBtn">Add</button>

			<!-- <button type="button" id="addParcelBtn">Add</button> -->
		</div>
		<div class="form-group">
			<label for="deliverySpeed">Delivery Speed:</label> <select
				id="deliverySpeed" name="deliverySpeed" required>
				<option value="standard">Standard</option>
				<option value="express">Express</option>
				<option value="premium">premium</option>
			</select>
		</div>
		<div class="form-group">
			<label for="packagingPreference">Packaging Preferences:</label> <select
				id="packagingPreference" name="packagingPreference" required>
				<option value="standard">Standard Packaging</option>
				<option value="custom">Custom Packaging</option>
			</select>
		</div>
		<div class="form-group">
			<label for="pickupTime">Preferred Pickup Time:</label> <input
				type="datetime-local" id="pickupTime" name="pickupTime" required>
		</div>
		<div class="form-group">
			<label for="serviceCost">Service Cost:</label> <input type="text"
				id="serviceCost" name="serviceCost" placeholder="cost">
		</div>
		<div class="form-group">
			<label for="paymentMethod">Payment Method:</label> <select
				id="paymentMethod" name="paymentMethod" required>
				<option value="credit">Credit Card</option>
				<option value="debit">Debit Card</option>
				<option value="netbanking">Net Banking</option>
			</select>
		</div>
		<div class=""
			style="display: flex; align-items: flex-start; justify-content: flex-start;">
			<input style="width: 20px;" type="checkbox" id="trackingService"
				name="trackingService" value="yes"> <label
				for="trackingService">Enable Tracking</label>
		</div>
		<button type="submit" class="submit">Submit</button>
	</form>
	<script src="./js/booking-form.js"></script>
</body>