# HPP Guide: Quickstart

## Introduction

Hosted Payment Page (HPP) is a ready-to-go solution that allows quick and easy integration with PayCore.io. You only have to redirect your customers to the payment form we give you. There’s also no need for you to pass any PCI scans or have an SSL certificate (though having one is always recommended), since the actual payment is submitted via our secure payment page.


## Try it out

Why not give HPP a test run? Click the  **Pay Now**  button below and the form will spring to life.

<figure class="hpp_container">
    <iframe  height="600px" width="100%" src="https://com-dev.paycore.io/hpp/methods?amount=100&currency=UAH&public_key=pk_test_yNznq07p7MChOL8shs7WT3Yat6ZnlqyXq8ep6WKF998" frameborder="0" allowfullscreen="true"></iframe>
</figure>


## Customer Journey

PayCore.io Commerce HPP is a secure hosted payment page, where you can redirect customers from your website to make a payment through PayCore.io. Commerce HPP provides customers with access to a range of payment methods, based on their location and your account and integration settings. Integration to Commerce HPP is simple and requires collecting customer payment information on your website in a standard HTML form and submitting this to PayCore.io.

Commerce HPP then collects the customer payment details needed to complete the payment, and sends these details to the relevant bank or payment provider for authorisation. After the payment is complete, the customer is returned to your website and you receive a real-time notification of the payment, which includes details of the transaction.

A simplified illustration of the PayCore.io HPP payment flow is shown in the figure below.

![HPP Interaction](images/hpp-interaction.png)

??? tip "Full customer journey details"
    1.  A customer on your website decides to checkout.
    2.  Your website redirects the customer to the Hosted Payment Page on the PayCore.io platform by submitting HTML form or calling the Private API with Payment Invoice data the amount, a payment description, a callback URL, and a Return URL we should redirect the customer to after the payment is made.
    3.  The customer reaches the Hosted Payment Page, chooses a payment method and makes the payment. This process is entirely taken care of by PayCore.io. You don’t need to do anything here.
    4.  At this point PayCore.io returns the visitor to your website using the  `return_url`  specified when the payment was created. Your website already knows the payment was successful and thanks the customer.
    5.  When the payment is made PayCore.io will call your  [callback URL](/integration/callbacks/)  informing your website about the  [payment’s invoice status change](/products/commerce/payment-invoice/). You should define a callback when creating the initial payment.
        
        In response to your callback being called your application just needs to issue a  `200  OK`  status. From that response PayCore.io can tell that your processing of the new status was successful – for any other response we keep trying.

        This fetched status serves to mark the payment paid, trigger fulfilment and send out an email confirmation to the customer.

## Requirements

Commerce HPP is the easiest and the quickest way to integrate checkout into your website.  **No coding knowledge**  is required. But your requirements should satisfy the below conditions:

-   You do not have an user authentication or management system at your end and you rely on PayCore.io for providing it.
-   Only after completing checkout, end users are allowed to access your product or service.

You can integrate with any of our payment page experience offerings. Choose from one of our simple hosted solutions — **Payment Widget** or **Payment Link** which are based on **HPP API**.


## Integration methods

Read about our integration methods below, then choose the one that best suits your needs.

### Payment Widget

<img src="/products/hpp/images/checkout-js.svg" alt="HPP" style="width: 120px; float: right;">

Payment widget is our simplest integration method and requires little technical know-how. It's a payment lightbox that you can easily add to your website without redirecting client to the separate payment page.

Widget is integrated directly to the website page — client selects a payment method, fills out payment details and confirms payment in the widget.

```html
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

Jump to  [this page](/products/hpp/quickstart/)  for the **Payment Link** based integration steps.


### Payment Link

<img src="/products/hpp/images/mobile-sdk.svg" alt="Widget" style="width: 120px; float: right;">

Payment Link is a quick and easy solution for accepting payments. Just create, and optionally customize, a Payment Link, then copy and paste the HTML code snippet to your website.

The simplest case would involve an HTML form with specific information that would be sent via a GET request. There’s no need to require any the data from your customers, so all the fields will be hidden in most cases. 
Here’s how it can look like:

!!! example "Simple redirect example"

    ```html
    <form action="https://com.paycore.io/hpp/" method="GET">
        <input type="hidden" name="public_key" value="<your-public-key>" />
        <input type="hidden" name="reference_id" value="<unique-reference-id>" />
        <input type="hidden" name="currency" value="USD" />
        <input type="hidden" name="description" value="Some goods" />
        <input type="hidden" name="amount" value="100" />
        <input type="submit" value="Pay with PayCore.io" />
    </form>
    ```

### Widget vs Link

|Feature                   |Payment Widget|Payment Link|
|--------------------------|--------------|------------|
|Technology                |JavaScript    |GET Request |
|Request Validation        |✔             |            |
|Error & Event Handing     |✔             |            |
|Invoicing via Email or SMS|              |✔           |
|Invoicing via QR-code     |              |✔           |

### Alternative methods

Read about our integration methods below, then choose the one that best suits your needs:

-   To build a custom integration, check which API works best to accept payments: Payment Widget, HPP API or Private APIs in the  [API Overview](#overview).
-   To study all the APIs, such as cancelling subscriptions, issuing refunds, getting the list of supported methods, go to  [full API References](/integration/api-references/).
-   For an SDK for iOS, Android, Unity or Smart TV, check out the  [SDKs section](/integration/sdks/).
-   For server-side API libraries, check out the  [Server SDKs section](/integration/sdks/).
-   For shopping cart systems or e-commerce solutions, such as Magento or Woocommerce, check out the  [CMS Modules & Shopping Cards](/integration/cms-modules/).
-   To learn which components works with which API, check the  [Integration Overview](/products/hpp/integration-overview/).

Read about our all integration methods for accepting payments below, then [choose the one that best suits your needs](/integration/accept-payments/).


## Embed options

-   **Standard HPP**: Redirect to a customizable hosted payment page.
-   **Embedded HPP**: Display an overlay payment form on your site.

### Full-page redirect

The Hosted Payment Page are displayed full-page in a browser. When your customers are redirected to the Hosted Payment Page, the web address for the Hosted Payment Page is displayed. Full-page redirect supports over 60 payment methods.

??? example "Payment Widget"
    Set flow field to "redirect" for Payment Widget integration method:

    ```javascript
    window.payment_widget.init({
        selector: "HTML_ID_SELECTOR_TO_INSERT_WIDGET_INTO",
        flow: "redirect",
        public_key: "YOUR_PUBLIC_KEY",
        amount: "AMOUNT_OF_INVOICE",
        currency: "USD",
    });
    ```

### Embedded (iframe)

The Hosted Payment Page are displayed in an **iframe** or **lightbox** within your website. When you redirect your customers to our payment page, the web address for your website remains unchanged, providing a more seamless shopping experience. An iframe or lightbox integration requires a more advanced integration.

We apply responsive web design to payment content displayed in an iframe or lightbox. When the width of the parent page is resized, the content in the iframe or lightbox is automatically adjusted.

Depending on the content being displayed, the height of the iframe or lightbox may increase. For an iframe, the content in the parent page that is below the iframe is pushed down as the payment page content expands vertically.

??? example "Payment Widget"
    Set flow field to "iframe" and create HTML tag to insert HPP into. Define "selector" key in widget configuration options;

    Example:

    ```javascript
    window.payment_widget.init({
        selector: "HTML_ID_SELECTOR_TO_INSERT_WIDGET_INTO",
        flow: "redirect",
        public_key: "YOUR_PUBLIC_KEY",
        amount: "AMOUNT_OF_INVOICE",
        currency: "USD",
    });
    ```


## Basic integration

### Before you start

Make sure you have your  `public_key`. You can find it in the  [Dashboard](https://dashboard.paycore.io/), under  **Commerce Account Settings > Integration**. If you don't have an account with us yet, sign up for your free test account at  [PayCore.io](https://dashboard.paycore.io/).

!!! warning
    HPP works only with **active** commerce account which **allows payment invoice public creation**.

    Please contact your account Administrator if you need to *activate Commerce Account* or *Allow public payment invoice creation* for it.


### Step 1:  Pick a integration method

First, you need to choose a [integration method](#integration-methods). We offer two ways to integrate HPP into your website, so you can pick the one that best fits your requirements.


### Step 2:  Add the code snippet to your site

Next, copy the code snippet for your chosen method and add it to your checkout page.

You'll need to replace the example  `public_key`  with your own, and edit the required key-value pairs to reflect the order details (see the  [full reference](/products/hpp/reference/)  below for details).


```html
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


## More examples

A shopper makes an order for a total amount payable of GBP 100. The order reference in your backoffice is Internet order 12345.

The order details are:

-   Goods shipping date to the shopper: before or not later than October 20th, 2016.
-   Order summary information to display on the payment review page for the order: _1 digital camera_.
-   The merchant account you are using is _TestMerchant_.
-   The order was placed before or on October 11th 2016, 10:30 am.
-   You want the payment offer to expire on October 11th 2016, 11:00 am.

This example represents a complete payment process, based on the order details above.

??? example "Simple redirect example"
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

??? example "Any amount pay button"
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

??? example "Payment invoice with additional fields"
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

??? example "HPP embed into iFrame"
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

## Make HPP your own

### Customization

HPP gives you the flexibility to adjust its look and feel to suit your brand and payment page. You can display your company's logo, use custom fonts and add some color to represent your brand's personality. Check out our [customization guide](/products/hpp/customization/) for more details.

### Configuration options

You'll find a list of all the possible configuration options, plus some examples, in our [HPP reference guide](/products/hpp/reference/).

### Self-hosted Payment Page

Integrating using API provides you with better control. But requires coding knowledge. Choose this option if you:

-   Have user authentication / management system at your end.
-   Or need more control than offered by  **HPP**  (like 'price overriding' , changing 'trial end date')

Jump to  [this page](/products/hpp/self-hpp/)  for the API based integration steps.


## Follow our guide

1.  Learn more about  [integration overview](/products/hpp/guide/integration-overview/).
2.  Learn more about  [callback handling](/integration/callbacks/).
3.  Read our  [step by step integration guide](/products/hpp/integration-guide/)  and create your own flow.
4.  Check that you  [respect specific use cases rules](/products/hpp/#use-cases)  for Telesales or In-store cases.
5.  [Customize the Hosted Payment Page](/products/hpp/customization/)  to increase conversion.
6.  Read the  [Full HPP API Reference](/integration/api-references/#commerce-hpp).