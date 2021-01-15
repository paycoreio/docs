# HPP Guide: Integration Methods

## Requirements

Commerce HPP is the easiest and the quickest way to integrate checkout into your website.  **No coding knowledge**  is required. But your requirements should satisfy the below conditions:

-   You do not have an user authentication or management system at your end and you rely on {{custom.company_name}} for providing it.
-   Only after completing checkout, end users are allowed to access your product or service.

You can integrate with any of our payment page experience offerings. Choose from one of our simple hosted solutions — **Payment Widget** or **Payment Link** which are based on **HPP API**.

## Integration methods

Read about our integration methods below, then choose the one that best suits your needs.

### Payment Widget

<img src="/products/hpp/images/checkout-js.svg" alt="HPP" style="width: 120px; float: right;">

Payment widget is our simplest integration method and requires little technical know-how. It's a payment lightbox that you can easily add to your website without redirecting client to the separate payment page.

Widget is integrated directly to the website page — client selects a payment method, fills out payment details and confirms payment in the widget.

```html
<script async src="https://unpkg.com/@paycore/merchant-widget-js@0.1.7/dist/merchantWidget.umd.min.js"></script>
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
    <form action="{{custom.pay_domain}}/hpp/" method="GET">
        <input type="hidden" name="public_key" value="<your-public-key>" />
        <input type="hidden" name="reference_id" value="<unique-reference-id>" />
        <input type="hidden" name="currency" value="USD" />
        <input type="hidden" name="description" value="Some goods" />
        <input type="hidden" name="amount" value="100" />
        <input type="submit" value="Pay with {{custom.company_name}}" />
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

## Self-hosted Payment Page

Integrating using API provides you with better control. But requires coding knowledge. Choose this option if you:

-   Have user authentication / management system at your end.
-   Or need more control than offered by  **HPP**  (like 'price overriding' , changing 'trial end date')

Jump to  [this page](/products/hpp/self-hpp/)  for the API based integration steps.

## Next

Jump to next page for the [HPP Features](/products/hpp/guide/features/).