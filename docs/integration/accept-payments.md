# Accept Payments

With PayCore.io, you can build a payments flow that gives you and your customers the power of choice. Collect payment information quickly and securely, create charges server-side in over 150 currencies, or accept payments from a host of additional payment methods, including 3-D Secure, Apple Pay, and SEPA.

Read about our integration methods below, then choose the one that best suits your needs.


## [Hosted Payment Page (HPP)](/products/hpp/)

![](/products/hpp/images/hpp-preview.png)

Our Hosted Payment Page (HPP) is a complete, ready-made payment UI that offers a quick and easy way to securely accept payments. The UI includes a card entry form and supports any payment method flow. When a user successfully completes the UI, your client code obtains a payment method nonce for use on your server.

Use our hosted responsive solution for payment processing:

-   Least effort integration
-   Can be used as a standalone page or as an iframe
-   Supports one specific or all available payment methods.
-   Easy do-it-yourself styling options
-   Good for connecting to existing checkout flows
-   Responsive design on mobile

??? question "What we do? What you do?"
    We reduce your PCI-DSS burden by handling and validating your shopper data on our payment pages.

    **What we do**

    -   Collect the shopper's payment details
    -   Process your shopper's payment
    -   Carry out changes/modifications to the payment
    -   Notify you of payment status changes
    -   Respond to your queries about the status of an order

    **What you do**

    -   Collect details of the items your shopper wants to buy
    -   Send the order details to PayCore.io
    -   Redirect the shopper to PayCore.io to make a payment
    -   Inform the shopper of the payment result

[Learn more -->](/products/hpp/)


## [Self-hosted payment page](/products/hpp/self-hosted-payment-page/)

<img src="/integration/images/icon-paymentform.svg" alt="Payment Form" style="width: 150px; float: right; padding-left: 10px;">

Before you can make a payment with our API integration, you need to collect any required payment details from your shopper. Here we describe how to do this by building your own payment form.
Building your own form gives you full control over the look and feel of your checkout. If you'd rather not build your own payment form, you can also collect the shopper's payment details using our pre-built JavaScript Components. These are available for many popular payment methods.

Build and host yourself using SDKs or client API:

-   Full control over design
-   Users stay in your application/domain
-   Easy best-practices based development
-   Available for many platforms

??? question "What we do? What you do?"
    You can manage shopper data and the shopper journey within your own environment.

    **What we do**

    -   Process your shopper's payment
    -   Carry out changes/modifications to the payment
    -   Notify you of payment status changes
    -   Respond to your queries about the status of an order

    **What you do**

    -   Collect details of the items your shopper wants to buy
    -   Collect the shopper's payment details (such as cardholder name and card number) and their chosen payment method
    -   Send the payment to PayCore.io

[Learn more -->](/products/hpp/self-hosted-payment-page/)

<!--
## Payment card interfaces

### CardGate HPP

<img src="/products/hpp/images/checkout-js.svg" alt="CardGate HPP" style="width: 150px; float: right;">

Unlike our other integration methods, the full card details API does not use card tokens. Instead, you process your customers' card details directly. If you are looking to have total control over the HPP experience, then the full card details API may be the option for you.

[Learn more](/products/cardgate/hpp/)

### Full card details API

<img src="/products/hpp/images/payment-methods.svg" alt="Full card details API" style="width: 150px; float: right;">

Unlike our other integration methods, the full card details API does not use card tokens. Instead, you process your customers' card details directly. If you are looking to have total control over the HPP experience, then the full card details API may be the option for you.

[Learn more](/products/cardgate/full-card-details-api/)
-->

## SDKs

<img src="/products/hpp/images/mobile-sdk.svg" alt="SDKs" style="width: 150px; float: right;">

Whether you're processing payments on desktop or on mobile, our software development kits give you the freedom to build your own custom integration. We'll still take care of the processing side of things, and return tokenized payment information to you.
  
[Learn more -->](/integration/sdks/)

<!--
## Shopping carts

<img src="/products/hpp/images/merchant.svg" alt="Shopping carts" style="width: 150px; float: right;">

Our payment gateway is integrated with many popular shopping cart platforms. Get up and running quickly, processing online payments with an ecommerce plugin.

[Learn more](/integration/cms-modules/)
-->

!!! question
    Can't find what you're looking for? [Contact our support team for help](https://support.paycore.io/).