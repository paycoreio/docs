# Hosted Payment Page Integration Guide


## How does it work?

![HPP Interaction](images/hpp-interaction.png)

1.  A customer on your website decides to checkout.
    
2.  Your website redirects the customer to the Hosted Payment Page on the PayCore.io platform by submitting HTML form or calling the Private API with Payment Invoice data the amount, a payment description, a callback URL, and a Return URL we should redirect the customer to after the payment is made.
        
3.  The customer reaches the Hosted Payment Page, chooses a payment method and makes the payment. This process is entirely taken care of by PayCore.io. You don’t need to do anything here.

4.  At this point PayCore.io returns the visitor to your website using the  `return_url`  specified when the payment was created. Your website already knows the payment was successful and thanks the customer.

5.  When the payment is made PayCore.io will call your  [callback URL](/integration/callbacks/)  informing your website about the  [payment’s invoice status change](/products/commerce/payment-invoice/). You should define a callback when creating the initial payment.
    
    In response to your callback being called your application just needs to issue a  `200  OK`  status. From that response PayCore.io can tell that your processing of the new status was successful – for any other response we keep trying.

    This fetched status serves to mark the payment paid, trigger fulfilment and send out an email confirmation to the customer.


## Using metadata

In the example above we suppose you will store the  `reference_id`  that’s unique to the payment in your order table. This way your website is able to look-up the order for this payment when the webhook is triggered by PayCore.io. Your website is keeping track of the payment, effectively bringing about the connection between order and payment. This approach is easiest to grasp, which is why we use it in our example.

Alternatively you could ask PayCore.io to remember the unique identifier of your order by instructing the PayCore.io API to store it in the payment’s  `metadata`. You would provide it while creating the payment. In our example  `order_id` would be a good candidate. PayCore.io stores the metadata for you, when you fetch the payment during processing the webhook the metadata is included in the response. This is another way to connect orders and payments. We advise to use the  `metadata`  approach. This is the most popular approach and it’s easiest to implement.


## Use case

A shopper makes an order for a total amount payable of GBP 100. The order reference in your backoffice is Internet order 12345.

The order details are:

-   Goods shipping date to the shopper: before or not later than October 20th, 2016.
-   Order summary information to display on the payment review page for the order: _1 digital camera_.
-   The merchant account you are using is _TestMerchant_.
-   The order was placed before or on October 11th 2016, 10:30 am.
-   You want the payment offer to expire on October 11th 2016, 11:00 am.

### Example

This example represents a complete payment session, based on the order details above.

```html
<form action="https://com.paycore.io/hpp/" method="GET">
    <!-- This public key of TestMerchant -->
    <input type="hidden" name="public_key" value="pk_live_mF-EbTQBhz15e4AWAQNq-CFrBIdAEKG2pFSuj7JudNY"/>
    <input type="hidden" name="reference_id" value="12345" />
    <input type="hidden" name="currency" value="GBP" />
    <input type="hidden" name="expires" value="2014-10-11T10:30:00Z" />
    <input type="hidden" name="description" value="Test payment" />
    <input type="hidden" name="customer[email]" value="test102@gmail.com" />
    <input type="hidden" name="amount" value="100" />
    <input type="submit" value="Pay with PayCore.io" />
</form>

```