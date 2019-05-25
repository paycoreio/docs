# Quickstart with HPP


## How it works

Once a customer has added items to the shopping cart and filled out the shipping and billing details, he or she needs to choose the payment method and needs to provide the payment details. If you choose not to touch and store the credit card details of your customers, you can outsource your payment page to us and use the Hosted Payment Page.

The payment method selection can be done on your site or can be hosted by us. The payment page itself is hosted by PayCore.io and takes care of building forms, validating the input and securing your customers payment details.


## Try it out

Why not give HPP a test run? Click the  **Pay Now**  button below and the form will spring to life.

## Pick a integration method

Read about our integration methods below, then choose the one that best suits your needs.



## Before you start

Make sure you have your  `public_key`. You can find it in the  [Hub](https://hub.checkout.com/v2), under  **Settings > Channels**. If you don't have an account with us yet, sign up for your free test account at  [Checkout.com](https://hub.checkout.com/v2).

## Step 1:  Pick a display method

First, you need to choose a display method. We offer three ways to integrate Checkout.js into your website, so you can pick the one that best fits your requirements:

Method

Description

`window.CKOConfig`

Our recommended option, which allows you to run Checkout.js synchronously or asynchronously. This simple integration method provides a widget displaying accepted payment icons alongside a  **Pay Now**  button that triggers the payment form.

`Checkout.configure()`

Gives you more control over how and when the  **Pay Now**  button and payment lightbox appear.

We offer two variants:

-   Variant A, which opens the payment lightbox instantly, without the use of a  **Pay Now**  button.
-   Variant B, which uses a custom  **Pay Now**  button to launch the payment lightbox.

Checkout.js can only be run synchronously with this method.

`Checkout.render()`

Renders the payment widget automatically onto your page, displaying the accepted payment icons, the  **Pay Now**  button, and the lightbox payment form.

Checkout.render() offers an asynchronous payment process. This means that it can take several days to confirm the success or failure of a payment.

## Step 2:  Add the code snippet to your site

Next, copy the code snippet for your chosen method and add it to your checkout page.

You'll need to replace the example  `publicKey`  with your own, and edit the required key-value pairs to reflect the order details (see the  [JavaScript keys table](https://docs.checkout.com/docs/checkoutjs#section-javascript-keys)  below for details).

The card token will be posted via the URL specified in the form's  `action`  attribute.

-   [window.CKOConfig](https://docs.checkout.com/docs/checkoutjs)
-   [Checkout.configure() - Variant A](https://docs.checkout.com/docs/checkoutjs)
-   [Checkout.configure() - Variant B](https://docs.checkout.com/docs/checkoutjs)
-   [Checkout.render()](https://docs.checkout.com/docs/checkoutjs)

Copy

```
<form class="payment-form" method="POST" action="https://merchant.com/successUrl">
  <script>
    window.CKOConfig = {
      publicKey: 'pk_test_6ff46046-30af-41d9-bf58-929022d2cd14',
      customerEmail: 'user@email.com',
      value: 100,
      currency: 'GBP',
      paymentMode: 'cards',
      cardFormMode: 'cardTokenisation',
      cardTokenised: function(event) {
        console.log(event.data.cardToken);
      }
    };
  </script>
  <script async src="https://cdn.checkout.com/sandbox/js/checkout.js"></script>
</form>
```

When you're processing live payments, replace  `<script async src="https://cdn.checkout.com/sandbox/js/checkout.js"></script>`  with  `<script async src="https://cdn.checkout.com/js/checkout.js"></script>`.

### JavaScript keys

These are the JavaScript keys you need to use when embedding Checkout.js.

JavaScript keys

Description

`cardFormMode`  
REQUIRED

Set to  `cardTokenisation`  to charge with card token.

`currency`  
REQUIRED

The payment currency (three-letter ISO 4217 code).

`publicKey`  
REQUIRED

Your public key. You'll find this in the  [Hub](https://hub.checkout.com/v2).

`value`  
REQUIRED

The payment amount, written as a whole number (0 and decimal figures are not allowed).

For most currencies, the value is 100 times one unit of currency (e.g. 1 US Dollar is equivalent to 'value = 100').

A full description of how value is calculated for all our supported currencies is available  [here](https://docs.checkout.com/docs/calculating-the-value).

`customerEmail`  
OPTIONAL

The customer's email address.


## Follow our guide

1.  [Choose your integration path](/products/hpp/integration-methods/).
2.  Learn more about  [objects handled using Commerce APIs](/products/hpp/integration-overview/): payment invoice, payment request, callbacks…
3.  Read our  [step by step integration guide](/products/hpp/integration-guide/)  and create your own flow.
4.  Check that you  [respect specific use cases rules](/products/hpp/#use-cases)  for Telesales or In-store cases.
5.  [Customize the Hosted Payment Page](/products/hpp/customization/)  to increase conversion.
6.  Read the  [Full HPP API Reference](/integration/api-references/#commerce-hpp).