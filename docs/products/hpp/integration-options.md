# Integration Options

## Payment widget

Payment.widget.js is our simplest integration method and requires little technical know-how. It's a payment lightbox that you can easily add to your website. Just like with Elements, customers enter their payment information, which we then exchange for a token.
  
[Learn more -->](/integration/payment-widget-js/)

## Client Redirection

Hosted Payment Page (HPP) is a ready-to-go solution that allows quick and easy integration with PayCore.io. You only have to redirect your customers to the payment form we give you. There’s also no need for you to pass any PCI scans or have an SSL certificate (though having one is always recommended), since the actual payment is submitted via our secure payment page.

??? example "Simple redirect example"
    The simplest case would involve an HTML form with specific information that would be sent via a POST request. There’s no need to require any the data from your customers, so all the fields will be hidden in most cases. 
    Here’s how it can look like:

    ```html
    <form action="https://com.paycore.io/hpp/" method="POST">
        <input type="hidden" name="public_key" value="<your-public-key>" />
        <input type="hidden" name="reference_id" value="<unique-reference-id>" />
        <input type="hidden" name="currency" value="USD" />
        <input type="hidden" name="description" value="Some goods" />
        <input type="hidden" name="amount" value="100" />
        <input type="submit" value="Pay with PayCore.io" />
    </form>
    ```

You can integrate with any of our 3 checkout experience offerings. Choose from one of our simple hosted solutions (Inline and Standard), or for more advanced users, integrate with our Payment API.

-   [![Payment API](https://www.2checkout.com/upload/images/icon_payment-api_white.png)](https://www.2checkout.com/documentation/payment-api)
    
    **Payment API**  
    Tokenize card data on your site and submit the charge from your server.
    
-   [![Embedded HPP](https://www.2checkout.com/upload/images/icon_inline_white.png)](https://www.2checkout.com/documentation/checkout/inline-checkout)
    
    **Embedded Checkout**  
    Display an overlay payment form on your site.
    
-   [![Standard HPP](https://www.2checkout.com/upload/images/icon_standard_white.png)](https://www.2checkout.com/documentation/checkout/standard-checkout)
    
    **Standard Checkout**  
    Redirect to a customizable hosted payment page.

    

## Overview

PayCore.io’s in-app checkout helps you to setup subscription creation and subscription upgrade workflow easily in your app.

### Why use PayCore.io’s in-app Checkout rather than building your own checkout form?

-   Easy to setup. It only takes 5 minutes to have a working flow.
-   PCI compliance for collecting card details.
-   Integrate multiple payment methods like card, paypal, direct debit via gocardless, ACH via stripe and plaid. PayCore.io provides a way to control these payment methods without even changing a single line of code at your end.
-   You can make use of PayCore.io’s smart routing rules to manage payment gateways. For different currencies, different gateways can be configured. You need not worry about changing your code, if you want to switch to a different gateway. Change your smart routing rule, it will get applied in your checkout pages
-   PayCore.io takes care of showing a proper order estimate that includes tax calculations, and discounts.
-   Takes full advantage of mobile browser’s autocomplete functionality. For eg. card scanning is supported in iPhone safari browser.
-   Returning users, who have already subscribed for a product, can easily checkout another product in just 2 clicks.

## Customizations & Settings

You can configure how the checkout should look and what fields you need to show, by navigating to  _Settings > Configure PayCore.io > Checkout & Self-Serve Portal._  in chargebee app.

You can have a look at the various settings which we have in this  [page](/products/hpp/customization/).

## Integration Options

There are two ways in which you can integrate PayCore.io checkout

### "Drop-in" Script

Drop-in script is the easiest and the quickest way to integrate checkout (and portal) into your website.  **No coding knowledge**  is required. But your requirements should satisfy the below conditions

-   You do not have an user authentication(/management) system at your end and you rely on PayCore.io for providing it.
-   Only after completing checkout, end users are allowed to access your product or service.

Jump to  **[this page](https://www.chargebee.com/checkout-portal-docs/drop-in-integration.html)**  for the 'drop-in' script based integration steps.

### API

Integrating using API provides you with better control. But requires coding knowledge. Choose this option if you

-   Have user authentication (/management) system at your end.
-   Or need more control than offered by  **drop-in**  code (like 'price overriding' , changing 'trial end date')

Jump to  [this page](https://www.chargebee.com/checkout-portal-docs/api-checkout.html)  for the 'API' based integration steps.

## When to use API vs "Drop-in" Script

