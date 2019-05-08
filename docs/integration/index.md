# Integrate with PayCore.io

![PayCore.io APIs](/images/paycore-apis.png)

With PayCore.io, you can build a payments flow that gives you and your customers the power of choice. Collect payment information quickly and securely, create charges server-side in over 150 currencies, or accept payments from a host of additional payment methods, including 3-D Secure, Apple Pay, and SEPA.

Read about our integration methods below, then choose the one that best suits your needs.

## API

### Organization API 

API implements HTTP Basic Authentication  method. API key can be created in [organisation settings](/platform/organisation/security/). Username and password are equals to api-key value. Provide them both. 

[](https://apidoc.paycore.io/)

[ Public API (Swagger) <i class="md-icon">launch</i>](https://swagger.paycore.io/)

### Commerce Public API

[ Public API (ReDoc) <i class="md-icon">launch</i>](https://apidoc.paycore.io/commerce-public/)

### Commerce Private API

[ Private API (ReDoc) <i class="md-icon">launch</i>](https://apidoc.paycore.io/commerce/)

## Hosted Payment Page (HPP)

### Page

Frame is a highly customizable payment page, which allows customers to enter their payment details directly on your checkout page. We process these and exchange them for a secure, single-use token. You can then use this token to request a payment, without having to process or store any sensitive information yourself.

[Learn more](/integration/elements)


### Payment.widget.js

Checkout.js is our simplest integration method and requires little technical know-how. It's a payment lightbox that you can easily add to your website. Just like with Elements, customers enter their payment information, which we then exchange for a token.
  
[Learn more](/integration/payment-widget-js)


## SDKs

Whether you're processing payments on desktop or on mobile, our software development kits give you the freedom to build your own custom integration. We'll still take care of the processing side of things, and return tokenized payment information to you.
  
[Learn more](/integration/sdks)


## Full card details API

Unlike our other integration methods, the full card details API does not use card tokens. Instead, you process your customers' card details directly. If you are looking to have total control over the checkout experience, then the full card details API may be the option for you.
  
[Learn more](/integration/full-card-details-api)

!!! warning
    **This integration method requires SAQ D PCI compliance.** For more information, see [PCI compliance](/integration/pci-compliance).