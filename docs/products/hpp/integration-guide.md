# Hosted Payment Page Integration Guide

## Overview

Once a customer has added items to the shopping cart and filled out the shipping and billing details, he or she needs to choose the payment method and needs to provide the payment details. If you choose not to touch and store the credit card details of your consumers, you can outsource your payment page to us and use the Hosted Payment Page.

The payment method selection can be done on your site or can be hosted by us. The payment page itself is hosted by PayCore.io and takes care of building forms, validating the input and securing your customers’ payment details. You can easily adapt the look and feel of that page in the _Dashboard > Commerce Account > Settings_.

## How does it work?

![HPP Interaction](images/hpp-interaction.png)

1.  A customer on your website decides to checkout.
    
2.  Your website redirects the customer to the Hosted Payment Page on the PayCore.io platform by submitting HTML form or calling the Private API with Payment Invoice data the amount, a payment description, a callback URL, and a Return URL we should redirect the customer to after the payment is made.
        
3.  The customer reaches the Hosted Payment Page, chooses a payment method and makes the payment. This process is entirely taken care of by PayCore.io. You don’t need to do anything here.

4.  At this point PayCore.io returns the visitor to your website using the  `return_url`  specified when the payment was created. Your website already knows the payment was successful and thanks the customer.

5.  When the payment is made PayCore.io will call your  [callback URL](/integration/callbacks/)  informing your website about the  [payment’s invoice status change](/products/commerce/payment-invoice/). You should define a callback when creating the initial payment.
    
    In response to your callback being called your application just needs to issue a  `200  OK`  status. From that response PayCore.io can tell that your processing of the new status was successful – for any other response we keep trying.

    This fetched status serves to mark the payment paid, trigger fulfilment and send out an email confirmation to the customer.


## Sequence diagrams

You will find here the usual integration flow of the Hosted Payment Page. In this flow, actors are defined as follow:

-   **Customer**: a physical person that wants to buy something.
-   **Browser**: the browser that the  **Consumer**  is able to control, for example on a desktop or a mobile.
-   **Merchant Backend**: your backend that will do the API calls to HPP, KP and Order Management.
-   **Commerce HPP**: the Hosted Payment Page API
-   **Payment Gateway**: the Payment Gateway API

## Flows

### New payment HPP request

### Forward using a created payment invoice


## Integration type

Your integration type decides how you set your parameters.

### Full-page redirect

Full-page is right for you if you take  [Alternative Payment Methods](#)  (APMs) through Worldpay, as well as card payments. Currently the iframe/lightbox integration doesn't support APMs.

In the full-page integration we use an iframe to display 3D Secure. All other Hosted Payment Page content is displayed full page in the browser.

### JavaScript SDK

[JavaScript SDK](#)  is right for you if you want a more advanced integration with card payments only:

-   **In the iframe setup**  all Hosted Payment Page content, including 3D Secure content, is displayed in an iframe within your website.
    
-   **In the lightbox setup**  we use an iframe to display 3D Secure within the lightbox. All other Hosted Payment Page content is displayed in the lightbox.

## Using metadata

In the example above we suppose you will store the  `reference_id`  that’s unique to the payment in your order table. This way your website is able to look-up the order for this payment when the webhook is triggered by PayCore.io. Your website is keeping track of the payment, effectively bringing about the connection between order and payment. This approach is easiest to grasp, which is why we use it in our example.

Alternatively you could ask PayCore.io to remember the unique identifier of your order by instructing the PayCore.io API to store it in the payment’s  `metadata`. You would provide it while creating the payment. In our example  `order_id` would be a good candidate. PayCore.io stores the metadata for you, when you fetch the payment during processing the webhook the metadata is included in the response. This is another way to connect orders and payments. We advise to use the  `metadata`  approach. This is the most popular approach and it’s easiest to implement.


## HPP in an iFrame

Although possible, using **iFrames** can introduce known usability, security and cross-domain browser issues.

Keep the following in mind:

-   Some redirect payment methods, such as iDEAL, do not allow displaying their pages in an iFrame; they will break out of it. Other redirect payment methods may require more available screen space than your iFrame allows. You should also be prepared to handle the difference in behaviour for the payment callback URL, as once the payment completes you may not be in an iFrame anymore.
-   Another problem you may face is the browser's cookie policy. The HPP solution requires cookies. Using an iFrame means that the browser may impose restrictions regarding the conditions in which cookies are allowed to be set within the iFrame. While there are workarounds to get the browser to accept cookies in a default configuration, the shopper may have configured a more restrictive policy. The most common problem is with Apple Safari and Google Chrome browsers: by default, they require user-initiated page loading inside an iFrame. This means that first the iFrame needs to be loaded with a page hosted at the parent domain. Secondly, on this page the user needs to actively click on a button submitting the redirect to the HPP.

PayCore.io cannot guarantee that all payment methods will work when using an iFrame, nor that the behaviour of a payment method will remain the same. Furthermore, the exact operation of a redirect payment method can differ between the test and the live environments.

## Customer details

### Customer email

The  `customer`  element contains more information about the customer making the payment.

It includes  `customer[email]`, which we can use to send an email to the shopper when the payment is authorised or refused (if you choose to enable this notification channel).

## Filtering payment services

For some payment requests, you may decide to filter the payment methods that are displayed on the HPP or bypass the HPP entirely.

-   The `options[show_services]`  field is used to display specific payment services.
-   The  `options[hide_services]`  field is used to prevent specific payment services from being displayed.
-   The  `service`  and the `service_fields` fields are used to take the customer directly to a specific payment service gateway. Example: `service: paypal_usd_hpp`.

All the payment services that are configured for your account, including the value you use to indicate the specific payment method, are available in the Dashboard interface under **Commerce Account Settings > Payment Methods > Name**.  

### Payment method availability by geolocation

Some payment methods are not available in all countries. For example, iDEAL is only offered if the shopper is from The Netherlands.

If the payment method selection is done on your web site, and the `allowedMethods` parameter contains a value for a payment method that is not available in all countries, we advise that you set the `countryCode` parameter as well. This ensures that the shopper only sees the payment methods that are relevant for their country.

For example, if you set `allowedMethods` to `ideal`, you need to set `countryCode` to `NL` to ensure that the iDEAL payment method is displayed.  
The list of countries where a payment method is offered is also available in the payment methods list in the CA interface, under the **Available Countries** column.

The list of payment methods may differ in the test and live environments. All payment methods are not automatically configured for the LIVE environment.

## Use cases

A shopper makes an order for a total amount payable of GBP 100. The order reference in your backoffice is Internet order 12345.

The order details are:

-   Goods shipping date to the shopper: before or not later than October 20th, 2016.
-   Order summary information to display on the payment review page for the order: _1 digital camera_.
-   The merchant account you are using is _TestMerchant_.
-   The order was placed before or on October 11th 2016, 10:30 am.
-   You want the payment offer to expire on October 11th 2016, 11:00 am.

This example represents a complete payment session, based on the order details above.

!!! example "Simple redirect example"
    ```html
    <form action="https://com.paycore.io/hpp/" method="get">
        <input type="hidden" name="public_key" value="<!-- Your public key like 'pk_live_***' -->"/>
        <input type="hidden" name="reference_id" value="12345" />
        <input type="hidden" name="currency" value="GBP" />
        <input type="hidden" name="description" value="Test payment" />
        <input type="hidden" name="amount" value="100" />
        <input type="submit" value="Pay with PayCore.io" />
    </form>
    ```

!!! example "Any amount pay button"
    ```html hl_lines="7"
    <form action="https://com.paycore.io/hpp/" method="get">
        <!-- This public key of TestMerchant -->
        <input type="hidden" name="public_key" value="<!-- Your public key like 'pk_live_***' -->"/>
        <input type="hidden" name="reference_id" value="12345" />
        <input type="hidden" name="currency" value="GBP" />
        <input type="hidden" name="description" value="Test payment" />
        Amount: <input type="text" name="amount" value="100" />
        <input type="submit" value="Pay with PayCore.io" />
    </form>
    ```

!!! example "Payment form with additional fields"
    ```html hl_lines="7 8"
    <form action="https://com.paycore.io/hpp/" method="get">
        <!-- This public key of TestMerchant -->
        <input type="hidden" name="public_key" value="<!-- Your public key like 'pk_live_***' -->"/>
        <input type="hidden" name="reference_id" value="12345" />
        <input type="hidden" name="currency" value="GBP" />
        <input type="hidden" name="description" value="Test payment" />
        <input type="hidden" name="metadata[key1]" value="SomeValue1" />
        <input type="hidden" name="metadata[key2]" value="SomeValue2" />
        <input type="hidden" name="amount" value="100" />
        <input type="submit" value="Pay with PayCore.io" />
    </form>
    ```

!!! example "The form of payment embed into iFrame"
    ```html hl_lines="1 10"
    <form action="https://com.paycore.io/hpp/" method="get" target="pay_frame">
        <!-- This public key of TestMerchant -->
        <input type="hidden" name="public_key" value="<!-- Your public key like 'pk_live_***' -->"/>
        <input type="hidden" name="reference_id" value="12345" />
        <input type="hidden" name="currency" value="GBP" />
        <input type="hidden" name="description" value="Test payment" />
        <input type="hidden" name="amount" value="100" />
        <input type="submit" value="Pay with PayCore.io" />
    </form>
    <iframe name="pay_frame" src="" id="pay_frame" width="XX" height="YY"></iframe>     
    ```

## Notifications

## Testing

## Error handling

When an error condition occurs, there are some cases where PayCore.io cannot determine which skin and language to use to display the error message with.

To enhance the shopper experience, you have the option to include the following fields in the URL that the shopper is directed to:


|Field        |Description                                                                                   |
|-------------|----------------------------------------------------------------------------------------------|
|skinCode     |The code of the skin used.                                                                    |
|shopperLocale|A combination of a language code and country code to specify the language used in the session.|

These values are used as a fallback when PayCore.io is unable to determine skin and language configuration.


### Custom return URLs

Provide custom `return_url` so that your shoppers are returned to your website at the end of the payment process.

If `return_url` are not provided, shoppers are redirected to one of PayCore.io's default result pages, where the payment journey ends.