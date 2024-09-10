function populateInvoice(data){
    document.getElementById('receiver_name').textContent= data.receiverName;
    document.getElementById('receiver_address').textContent= data.receiverAddress;
    document.getElementById('invoice_pin').textContent= data.invoicePin;
    document.getElementById('receiver_mobile').textContent= data.receiverMobile;
    document.getElementById('parcel_weight').textContent= data.parcelWeight;
    document.getElementById('parcel_description').textContent= data.parcelDesc;
    document.getElementById('delivery_type').textContent= data.deliverType;
    document.getElementById('packing_pref').textContent= data.packingPref;
    document.getElementById('pick-up').textContent= data.pickup;
    document.getElementById('dropoff').textContent= data.dropoff;
    document.getElementById('service_cost').textContent= data.serviceCost;
    document.getElementById('payment_time').textContent= data.paymentTime;
}

window.overload=function(){
    populateInvoice(invoiceData);
}
function printInvoice(){
    window.print();
}