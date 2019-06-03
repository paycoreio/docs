# Quickstart with HPP

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