# Integration Cases

## Overview

Chargebee’s in-app checkout helps you to setup subscription creation and subscription upgrade workflow easily in your app.

### Why use Chargebee’s in-app Checkout rather than building your own checkout form?

-   Easy to setup. It only takes 5 minutes to have a working flow.
-   PCI compliance for collecting card details.
-   Integrate multiple payment methods like card, paypal, direct debit via gocardless, ACH via stripe and plaid. Chargebee provides a way to control these payment methods without even changing a single line of code at your end.
-   You can make use of Chargebee’s smart routing rules to manage payment gateways. For different currencies, different gateways can be configured. You need not worry about changing your code, if you want to switch to a different gateway. Change your smart routing rule, it will get applied in your checkout pages
-   Chargebee takes care of showing a proper order estimate that includes tax calculations, and discounts.
-   Takes full advantage of mobile browser’s autocomplete functionality. For eg. card scanning is supported in iPhone safari browser.
-   Returning users, who have already subscribed for a product, can easily checkout another product in just 2 clicks.

## Customizations & Settings

You can configure how the checkout should look and what fields you need to show, by navigating to  _Settings > Configure Chargebee > Checkout & Self-Serve Portal._  in chargebee app.

You can have a look at the various settings which we have in this  [page](https://www.chargebee.com/checkout-portal-docs/settings.html#checkout-settings).

## Integration Options

There are two ways in which you can integrate Chargebee checkout

### "Drop-in" Script

Drop-in script is the easiest and the quickest way to integrate checkout (and portal) into your website.  **No coding knowledge**  is required. But your requirements should satisfy the below conditions

-   You do not have an user authentication(/management) system at your end and you rely on Chargebee for providing it.
-   Only after completing checkout, end users are allowed to access your product or service.

Jump to  **[this page](https://www.chargebee.com/checkout-portal-docs/drop-in-integration.html)**  for the 'drop-in' script based integration steps.

### API

Integrating using API provides you with better control. But requires coding knowledge. Choose this option if you

-   Have user authentication (/management) system at your end.
-   Or need more control than offered by  **drop-in**  code (like 'price overriding' , changing 'trial end date')

Jump to  [this page](https://www.chargebee.com/checkout-portal-docs/api-checkout.html)  for the 'API' based integration steps.

## When to use API vs "Drop-in" Script

