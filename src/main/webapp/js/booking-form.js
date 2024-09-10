document.getElementById('addParcelBtn').addEventListener('click', function () {
    // Get the table body where new rows will be added
    var tableBody = document.getElementById('parcelDetailsBody');
  
    // Create a new row
    var newRow = document.createElement('tr');
  
    // Create the first cell (Parcel Size)
    var sizeCell = document.createElement('td');
    var sizeSelect = document.createElement('select');
    sizeSelect.name = 'parcelSize';
    
    // Add options to the sizeSelect
    var smallOption = document.createElement('option');
    smallOption.value = 'Small';
    smallOption.text = 'Small';
    var mediumOption = document.createElement('option');
    mediumOption.value = 'Medium';
    mediumOption.text = 'Medium';
    var largeOption = document.createElement('option');
    largeOption.value = 'Large';
    largeOption.text = 'Large';
    
    sizeSelect.appendChild(smallOption);
    sizeSelect.appendChild(mediumOption);
    sizeSelect.appendChild(largeOption);
    
    sizeCell.appendChild(sizeSelect);
    
    // Create the second cell (Parcel Weight)
    var weightCell = document.createElement('td');
    var weightInput = document.createElement('input');
    weightInput.type = 'number';
    weightInput.name = 'parcelWeight';
    
    weightCell.appendChild(weightInput);
  
    // Create the third cell (Remove Button)
    var actionCell = document.createElement('td');
    var removeButton = document.createElement('button');
    removeButton.textContent = 'Remove';
    removeButton.className = 'removeRowBtn';
    
    // Add event listener to the remove button
    removeButton.addEventListener('click', function () {
      tableBody.removeChild(newRow);
    });
    
    actionCell.appendChild(removeButton);
    
    // Append cells to the new row
    newRow.appendChild(sizeCell);
    newRow.appendChild(weightCell);
    newRow.appendChild(actionCell);
  
    // Append the new row to the table body
    tableBody.appendChild(newRow);
  });

  
  document.getElementById('bookingForm').addEventListener('submit', function (event) {
      event.preventDefault(); // Prevent default form submission

      // Collect all form data
      var formData = new FormData(this);

      // Collect parcel details
      var parcelDetails = [];
      document.querySelectorAll('#parcelDetailsBody tr').forEach(row => {
          var size = row.querySelector('select[name="parcelSize"]').value;
          var weight = row.querySelector('input[name="parcelWeight"]').value;
          parcelDetails.push({ size: size, weight: weight });
      });

      // Add parcel details array to FormData
      formData.append('parcelDetails', JSON.stringify(parcelDetails));
	  console.log(parcelDetails)
	  
	  console.log(formData)

//      // Send data to servlet
//      fetch('BookingServiceHandler', {
//          method: 'POST',
//          body: formData
//      }).then(response => {
//          if (response.ok) {
//              alert('Booking submitted successfully!');
//          } else {
//              alert('Error submitting booking.');
//          }
//      }).catch(error => {
//          console.error('Error:', error);
//      });
  });
