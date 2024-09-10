document.getElementById('trackButton').addEventListener('click', function() {
    var bookingId = document.getElementById('bookingId').value;
    if (bookingId.trim() === '') {
        alert('Please enter a booking ID.');
        return;
    }

    // Show loading indicator
    document.getElementById('loading').classList.remove('d-none');
    document.getElementById('statusContainer').classList.add('d-none');

//    // Send request to the backend
//    fetch(`/your-servlet-url?bookingId=${bookingId}`)
//        .then(response => response.json())
//        .then(data => {
//            // Hide loading indicator
//            document.getElementById('loading').classList.add('d-none');
//            document.getElementById('statusContainer').classList.remove('d-none');
//
//            // Update the status container with fetched data
//            // Example: Assuming data has the relevant properties
//            if (data.status === 'Order placed') {
//                document.getElementById('step1').classList.add('active');
//            }
//            if (data.status === 'In Transit') {
//                document.getElementById('step2').classList.add('active');
//            }
//            if (data.status === 'Out for Delivery') {
//                document.getElementById('step3').classList.add('active');
//            }
//            if (data.status === 'Delivered') {
//                document.getElementById('step4').classList.add('active');
//            }
//            document.getElementById('partner').textContent = data.partner || 'Partner';
//            document.getElementById('deliveryDate').textContent = data.deliveryDate || 'Date';
//        })
//        .catch(error => {
//            console.error('Error fetching tracking data:', error);
//            // Hide loading indicator and show an error message
//            document.getElementById('loading').classList.add('d-none');
//            alert('Error fetching tracking data.');
//        });
});
