
document.querySelector('.submit-btn').addEventListener('click', function(event){
    event.preventDefault();

    const name = document.getElementById('name').value;
    const email = document.getElementById('email').value;
    const phone = document.getElementById('phone').value;
    const address = document.getElementById('address').value;
    const userid = document.getElementById('userid').value;
    const password = document.getElementById('password').value;
    const confirmpassword = document.getElementById('confirmpassword').value;
   // const role = document.getElementById("role").value;

    //Validation
    if(!name || !email || !phone || !address || !userid || !password || !confirmpassword){
        alert('All fields are required!');
        return;
    }
    const emailRegex = /^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$/;
    if(!email || !emailRegex.test(email)) {
        alert('Invalid email format.');
        return;
    }
    const phoneRegex = /^\d{10}$/;
    if(!phone || !phoneRegex.test(phone)) {
        alert('Invalid mobile number');
        return;
    }
    // if(address == null || address.isEmpty() || address.length() > 255) {
    //     alert('Invalid Address');
    //     return;
    // }
    // if(userid == null || userid.length() < 5 || userid.length() > 20) {
    //     alert('Invalid user Id');
    //     return;
    // }
    // if(password == null || password.isEmpty() || password.length() > 30) {
    //     alert('Invalid password');
    //     return;
    // }
    if(password !==confirmpassword){
        alert('Password do not match!');
        return
    }


    const randomUsername = 'user' + Math.floor(Math.random()*10000);
  //  document.getElementById('generatedUsername').textContent = randomUsername;

   // document.getElementById('acknowledgment').style.display = 'block';
});

document.querySelector('.reset-btn').addEventListener('click',function(){
    document.getElementById('acknowledgment').style.display = 'none';
});
