<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Invoice</title>
    <link
      href="https://fonts.googleapis.com/css2?family=Baloo+Da+2:wght@400;500;600;700;800&family=Josefin+Slab:ital,wght@0,400;0,600;1,300;1,400;1,600&family=Muli:ital,wght@0,300;0,400;0,500;1,300;1,400;1,500&display=swap"
      rel="stylesheet"
      />
    <link rel="stylesheet" href="css/invoice-main.css">
</head>

<body>
    <div class="container">
    <h1><b>INVOICE</b></h1>

    <div class="invoice-details">
    <div class="receiver">
    <label id=receiver_name>Receiver Name:</label><br>
    <label id="recever_address">Address:</label><br>
    <label id="receiver_mobile">Phone:</label><br>
    </div>

    <div class="time">
    <label id="invoice_pin">Invoice Pin:</label><br>
    <label id="pickup time">Pick-Up Time:</label><br>
    <label id="Drop time">Drop Off Time:</label><br>
    </div>
    </div>

    <table>
        <tr>
            <th id="parcel_weight">Parcel Weight</th>
            <th id="parcel_description">Description</th>
            <th id="delivery_type">Delivery Type</th>
            <th id="packing_pref">Packing Preference</th>
            <th id="service_cost">Service Cost</th>
            <th id="payment_time">Payment Time</th>
        </tr>
    </table>

    <button onclick="printInvoice()">Print</button>
    </div>
    <script src="./js/invoice-main.js"></script>

</body>
</html>