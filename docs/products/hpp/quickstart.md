# HPP Guide: Overview

## Introduction

PayCore.io Commerce HPP is a secure hosted payment page, where you can redirect customers from your website to make a payment through PayCore.io. Commerce HPP provides customers with access to a range of payment methods, based on their location and your account and integration settings. Integration to Commerce HPP is simple and requires collecting customer payment information on your website in a standard HTML form and submitting this to PayCore.io. Commerce HPP then collects the customer payment details needed to complete the payment, and sends these details to the relevant bank or alternative payment provider for authorisation. After the payment is complete, the customer is returned to your website and you receive a real-time notification of the payment, which includes details of the transaction.

## Customer Journey

A simplified illustration of the PayCore.io HPP payment flow is shown in the figure below.

![HPP Interaction](../images/hpp-interaction.png)

1.  A customer on your website decides to checkout.
2.  Your website redirects the customer to the Hosted Payment Page on the PayCore.io platform by submitting HTML form or calling the Private API with Payment Invoice data the amount, a payment description, a callback URL, and a Return URL we should redirect the customer to after the payment is made.
3.  The customer reaches the Hosted Payment Page, chooses a payment method and makes the payment. This process is entirely taken care of by PayCore.io. You don’t need to do anything here.
4.  At this point PayCore.io returns the visitor to your website using the  `return_url`  specified when the payment was created. Your website already knows the payment was successful and thanks the customer.
5.  When the payment is made PayCore.io will call your  [callback URL](/integration/callbacks/)  informing your website about the  [payment’s invoice status change](/products/commerce/payment-invoice/). You should define a callback when creating the initial payment.
    
    In response to your callback being called your application just needs to issue a  `200  OK`  status. From that response PayCore.io can tell that your processing of the new status was successful – for any other response we keep trying.

    This fetched status serves to mark the payment paid, trigger fulfilment and send out an email confirmation to the customer.


## Integration methods

This page lists a high-level overview of all ways to integrate PayCore.io HPP into a website, application, web store or Smart TV service.

-   To build a custom integration, check which API works best to accept payments: Payment Widget, HPP API or Private APIs in the  [API Overview](#overview).
-   To study all the APIs, such as cancelling subscriptions, issuing refunds, getting the list of supported methods, go to  [full API Reference](/integration/api-references/).
-   For an SDK for iOS, Android, Unity or Smart TV, check out the  [SDKs section](/integration/sdks/).
-   For server-side API libraries, check out the  [Server SDKs section](/integration/sdks/).
-   For shopping cart systems or e-commerce solutions, such as Magento or Woocommerce, check out the  [CMS Modules & Shopping Cards](/integration/cms-modules/).
-   To learn which products works with which API, check the  [API Compatibility](#api-compatibility).

Read about our all integration methods for payments below, then [choose the one that best suits your needs](/integration/accept-payments/).


## Next

Learn more about  [integration overview](/products/hpp/guide/integration-overview/).


## Quickstart with HPP

## Introduction

Hosted Payment Page (HPP) is a ready-to-go solution that allows quick and easy integration with PayCore.io. You only have to redirect your customers to the payment form we give you. There’s also no need for you to pass any PCI scans or have an SSL certificate (though having one is always recommended), since the actual payment is submitted via our secure payment page.

## How it works

Once a customer has added items to the shopping cart and filled out the shipping and billing details, he or she needs to choose the payment method and needs to provide the payment details. If you choose not to touch and store the credit card details of your customers, you can outsource your payment page to us and use the Hosted Payment Page.

The payment method selection can be done on your site or can be hosted by us. The payment page itself is hosted by PayCore.io and takes care of building forms, validating the input and securing your customers payment details.

## Try it out

Why not give HPP a test run? Click the  **Pay Now**  button below and the form will spring to life.

!!! note
    `example`




## Before you start

Make sure you have your  `public_key`. You can find it in the  [Dashboard](https://dashboard.paycore.io/), under  **Commerce Account Settings > Integration**. If you don't have an account with us yet, sign up for your free test account at  [PayCore.io](https://dashboard.paycore.io/).

## Step 1:  Pick a display method

First, you need to choose a display method. We offer three ways to integrate `payment-widget.js` into your website, so you can pick the one that best fits your requirements:

| Method | Description |
|---|---|
|`window.CKOConfig` | Our recommended option, which allows you to run Checkout.js synchronously or asynchronously. This simple integration method provides a widget displaying accepted payment icons alongside a  **Pay Now**  button that triggers the payment form.
| `Checkout.configure()` | 
Gives you more control over how and when the  **Pay Now**  button and payment lightbox appear. We offer two variants:

-   Variant A, which opens the payment lightbox instantly, without the use of a  **Pay Now**  button.
-   Variant B, which uses a custom  **Pay Now**  button to launch the payment lightbox.

Checkout.js can only be run synchronously with this method.|
| `Checkout.render()` | Renders the payment widget automatically onto your page, displaying the accepted payment icons, the  **Pay Now**  button, and the lightbox payment form. Checkout.render() offers an asynchronous payment process. This means that it can take several days to confirm the success or failure of a payment.|

## Step 2:  Add the code snippet to your site

Next, copy the code snippet for your chosen method and add it to your checkout page.

You'll need to replace the example  `public_key`  with your own, and edit the required key-value pairs to reflect the order details (see the  [JavaScript keys table](https://docs.paycore.io/docs/checkoutjs#section-javascript-keys)  below for details).

The card token will be posted via the URL specified in the form's  `action`  attribute.

-   [window.CKOConfig](https://docs.paycore.io/docs/checkoutjs)
-   [Checkout.configure() - Variant A](https://docs.paycore.io/docs/checkoutjs)
-   [Checkout.configure() - Variant B](https://docs.paycore.io/docs/checkoutjs)
-   [Checkout.render()](https://docs.paycore.io/docs/checkoutjs)

```
<script src="https://unpkg.com/@paycore/merchant-widget-js@0.1.7/dist/merchantWidget.umd.min.js"></script>
<script>
window.widget.init({
    selector: "HTML_ID_SELECTOR_TO_INSERT_WIDGET_INTO",
    public_key: "YOUR_PUBLIC_KEY",
    amount: 100.00,
    currency: "USD",
});
</script>
```

When you're processing live payments, replace  `<script async src="https://cdn.paycore.io/sandbox/js/checkout.js"></script>`  with  `<script async src="https://cdn.paycore.io/js/checkout.js"></script>`.

### JavaScript keys

These are the JavaScript keys you need to use when embedding Checkout.js.

| Key | Description |
|---|---|
| `public_key` REQUIRED | Your public key. You'll find this in the  [Hub](https://dashboard.paycore.io/).|
| `currency` REQUIRED | The payment currency (three-letter ISO 4217 code).|
| `amount` REQUIRED | The payment amount, written as a whole number (0 and decimal figures are not allowed). For most currencies, the value is 100 times one unit of currency (e.g. 1 US Dollar is equivalent to 'value = 100'). A full description of how value is calculated for all our supported currencies is available  [here](https://docs.paycore.io/docs/calculating-the-value). |
| `customer[email]` OPTIONAL | The customer's email address. |

## Make HPP your own

### Customization

HPP gives you the flexibility to adjust its look and feel to suit your brand and payment page. You can display your company's logo, use custom fonts and add some color to represent your brand's personality. Check out our [customization guide](/products/hpp/customization/) for more details.

### Configuration options

You'll find a list of all the possible configuration options, plus some examples, in our [HPP reference guide](/products/hpp/guide/).


## Follow our guide

1.  [Choose your integration path](/products/hpp/integration-methods/).
2.  Learn more about  [objects handled using Commerce APIs](/products/hpp/integration-overview/): payment invoice, payment request, callbacks…
3.  Read our  [step by step integration guide](/products/hpp/integration-guide/)  and create your own flow.
4.  Check that you  [respect specific use cases rules](/products/hpp/#use-cases)  for Telesales or In-store cases.
5.  [Customize the Hosted Payment Page](/products/hpp/customization/)  to increase conversion.
6.  Read the  [Full HPP API Reference](/integration/api-references/#commerce-hpp).