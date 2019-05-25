# HPP Guide: Integration Methods

Hosted Payment Page (HPP) is a ready-to-go solution that allows quick and easy integration with PayCore.io. You only have to redirect your customers to the payment form we give you. There’s also no need for you to pass any PCI scans or have an SSL certificate (though having one is always recommended), since the actual payment is submitted via our secure payment page.


## Overview

Commerce HPP is the easiest and the quickest way to integrate checkout into your website.  **No coding knowledge**  is required. But your requirements should satisfy the below conditions:

-   You do not have an user authentication or management system at your end and you rely on PayCore.io for providing it.
-   Only after completing checkout, end users are allowed to access your product or service.

You can integrate with any of our payment page experience offerings. Choose from one of our simple hosted solutions — **Payment Widget** or **Payment Link** which are based on **HPP API**.


## Payment Widget

<img src="/products/hpp/images/checkout-js.svg" alt="HPP" style="width: 120px; float: right;">

Payment widget is our simplest integration method and requires little technical know-how. It's a payment lightbox that you can easily add to your website without redirecting client to the separate payment page.

Widget is integrated directly to the website page — client selects a payment method, fills out payment details and confirms payment in the widget.

```html
<script src="https://unpkg.com/@paycore/merchant-widget-js@0.1.7/dist/merchantWidget.umd.min.js"></script>
<script>
window.widget.init({
    selector: "HTML_ID_SELECTOR_TO_INSERT_WIDGET_INTO",
    flow: "iframe",
    public_key: "YOUR_PUBLIC_KEY",
    amount: "AMOUNT_OF_INVOICE",
    currency: "USD",
    baseUrl: "URL_OF_YOUR_HPP"
});
</script>
```

Jump to  [this page](/products/hpp/quickstart/)  for the **Payment Link** based integration steps.


## Payment Link

<img src="/products/hpp/images/mobile-sdk.svg" alt="Widget" style="width: 120px; float: right;">

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

## Widget vs Link

|Feature              |Payment Widget|Payment Link|
|---------------------|--------------|------------|
|Technology           |JavaScript    |GET Request |
|Request Validation   |✔             |            |
|Error & Event Handing|✔             |            |

## Embed options

-   **Embedded HPP**: Display an overlay payment form on your site.
-   **Standard HPP**: Redirect to a customizable hosted payment page.

## Customizations & Settings

You can configure how the checkout should look and what fields you need to show, by navigating to  _Settings > Configure PayCore.io > Checkout & Self-Serve Portal._  in chargebee app.

You can have a look at the various settings which we have in this  [page](/products/hpp/customization/).


## Self-hosted Payment Page

Integrating using API provides you with better control. But requires coding knowledge. Choose this option if you:

-   Have user authentication (/management) system at your end.
-   Or need more control than offered by  **HPP**  (like 'price overriding' , changing 'trial end date')

Jump to  [this page](/products/hpp/self-hosted-payment-page/)  for the 'API' based integration steps.

## Alternative methods

This page lists a high-level overview of all ways to integrate PayCore.io HPP into a website, application, web store or Smart TV service.

-   To build a custom integration, check which API works best to accept payments: Payment Widget, HPP API or Private APIs in the  [API Overview](#overview).
-   To study all the APIs, such as cancelling subscriptions, issuing refunds, getting the list of supported methods, go to  [full API Reference](/integration/api-references/).
-   For an SDK for iOS, Android, Unity or Smart TV, check out the  [SDKs section](/integration/sdks/).
-   For server-side API libraries, check out the  [Server SDKs section](/integration/sdks/).
-   For shopping cart systems or e-commerce solutions, such as Magento or Woocommerce, check out the  [CMS Modules & Shopping Cards](/integration/cms-modules/).
-   To learn which products works with which API, check the  [API Compatibility](https://docs.paymentwall.com/#api-compatibility).

Read about our all integration methods for payments below, then [choose the one that best suits your needs](/integration/accept-payments/).

## Next

Jump to next page for the [Quickstart integration steps](/products/hpp/quickstart/).