document.getElementById('customer-btn').addEventListener('click', function() {
	document.getElementById('welcome-text').textContent = "Hello User! Please enter the credentials to proceed.";
	document.getElementById('customer-btn').classList.add('active');
	document.getElementById('admin-btn').classList.remove('active');
});

document.getElementById('admin-btn').addEventListener('click', function() {
	document.getElementById('welcome-text').textContent = "Hello Admin! Please enter the credentials to proceed.";
	document.getElementById('admin-btn').classList.add('active');
	document.getElementById('customer-btn').classList.remove('active');
});



function addCategory(category){
	document.getElementById("category").value = category;
	console.log(document.getElementById("category").value = category)
	document.getElementById("login-form").submit();
}