<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Baloo+Da+2:wght@400..800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
        integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="./css/payment.styles.css">
    <title>PayBill - Parcel Management System</title>
</head>

<body>
    <section class="payment-section">
        <div class="left-side">
            <div class="left-side-back-button-banner">
                <i class="fa-solid fa-arrow-left"></i>
                <span>Back to page</span>
            </div>
            <div style="display: flex; justify-content: space-between; margin-bottom: 20px;">
                <span>Total Amount: </span><span>
                    $100
                </span>
            </div>
            <hr size="1px" style="margin-bottom: 20px;">
            <div>
                <div style="display: flex; justify-content: space-between;">
                    <div style="display: flex;">
                        <div class="image-wrapper">
                            <i class="fa fa-list-alt" aria-hidden="true"></i>
                        </div>
                        <div class="item-description">
                            <span>Item Name</span>
                            <span>Quantity: 1</span>
                        </div>
                    </div>
                    <div class="item-price">
                        <span>$100</span>
                    </div>

                </div>

            </div>
            <hr class="hr-line-seperator" size="1px">
            <span>Total Due: $100</span>
        </div>
        <div class="right-side">
            <form class="right-form" action="#">
                <span id="right-form-heading">Shipping Information</span>
                <label for="email">Email</label>
                <input type="email" placeholder="Enter your email">
                <label for="shipping-address">Shipping Address</label>
                <div class="shipping-address-input-box">
                    <input type="address-line-1" placeholder="Address Line 1">
                    <input type="address-line-2" placeholder="Address Line 2">
                    <input type="address-line-3" placeholder="Address Line 3">
                </div>

                <label for="payment-details">
                    Payment Details
                </label>
                <div class="payment-details-input-box">
                    <input type="text" placeholder="Card Information">
                    <div class="card-credentials-input-box">
                        <input type="text" placeholder="MM/YY">
                        <input type="text" placeholder="CVV">
                    </div>
                </div>

                <div class="form-checkbox">
                    <input type="checkbox">
                    <p>Billing address is same as shipping address.
                    </p>
                </div>

                <input class="pay-button" type="submit" value="Pay">

            </form>
        </div>
    </section>
</body>

</html>