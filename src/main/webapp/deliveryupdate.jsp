<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Baloo+Da+2:wght@400..800&display=swap"
	rel="stylesheet">
<title>Delivery Update</title>
<link rel="stylesheet" href="./css/delivery-update.css">
<link rel="stylesheet" href="./css/pickup-schedule.css">
<link rel="stylesheet" href="./css/navbar.css">
</head>
<body>
	<%@ include file="officer-navbar.jsp"%>
	<div id="navbar"></div>
	<!-- style="display: flex; justify-content:center; align-items: center; " -->
	<div id="id">
		<h3 id="para">
			Enter your booking ID: &nbsp;&nbsp;
			</h2>
			<input type="text" id="userInput" name="book_id" onkeydown="checkEnter(event)">
	</div>
	<div id="info">

		<div class="column-left">
			<div id="name">
				<h3>Name:</h3>
				<p>Lorem ipsum</p>
			</div>

			<div id="phno">
				<h3>Phone number:</h3>
				<p>Lorem ipsum</p>
			</div>

			<div id="pref_time">
				<h3>Preffered time:</h3>
				<p>12:30 pm</p>
			</div>
		</div>

		<div class="column-right" id="addr">
			<h3>Address:</h3>
			<p>Lorem Ipsum is simply dummy text of the printing and
				typesetting industry. Lorem Ipsum has been the industry's standard
				dummy text ever since the 1500s, when an unknown printer took a
				galley of type and scrambled it to make a type specimen book. It has
				survived not only five centuries, but also the leap into electronic
				typesetting, remaining essentially unchanged.</p>
		</div>

	</div>


	<div id="time_pick">
		<h3>Delivery Status &nbsp;&nbsp;</h3>
		<br>
		<br> <select id="Delivery Status" name="Delivery Status"
			class="dropdown" required>
			<option>-- Select --</option>
			<option value="Pickedup">Pickedup</option>
			<option value="Intransit">Intransit</option>
			<option value="Delivered">Delivered</option>
			<option value="Returned">Returned</option>
		</select>
	</div>

	<div id="buttons">
		<button type="submit" class="submit-btn">Submit</button>
		&nbsp;&nbsp;
		<button type="reset" class="submit-btn">Reset</button>
	</div>
	<script>
		function checkEnter(event){
			if(event.key === "Enter"){
				const inputValue = document.getElementById('userInput').value;
				fetch('http://localhost:8080/Sp2/DeliveryUpdateHandler', {
					method: 'post'
					body: JSON.stringify({data: inputValue})
				})
				.then(response => console.log(response))
				
				
			}
		}
	</script>
</body>
</html>
