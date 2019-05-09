# Integrate with PayCore.io

![PayCore.io APIs](/images/paycore-apis.png)


## Basic principles

We offer a great deal of payment products and services, each with its own options and possibilities.
Before you get started there are a few things you really need to know in order to get the integration in place that fits best with your needs.

Get the answers straight:

???+ question "Which payment products do you want to offer your customers?"
    The PayCore.io platforms offer the widest range of payment methods of any payment service provider, from global card processing to specialized local payment products your world wide audience likes best. Have a look at the options we provide.
    [View all our payment methods -->](https://paycore.io/portfolio-category/payment-methods/)

???+ question "Do you want to handle sensitive credit card information yourself?"
    Our platform offers SDKs and the Hosted Payment Pages that make sure you won’t have to bother with sensitive information.

???+ question "Do you want to host your payment services yourself or let us take care of hosting?"
    You can either build your payment pages yourself using our javaScript or Native mobile SDKs on our Public API, or let us completely handle this for you through our Hosted Payment Pages. Which of these options is best in your case depends on your specific needs, and we're happy to advise.


## Accept Payments

With PayCore.io, you can build a payments flow that gives you and your customers the power of choice. Collect payment information quickly and securely, create charges server-side in over 150 currencies, or accept payments from a host of additional payment methods, including 3-D Secure, Apple Pay, and SEPA.

Read about our integration methods below, then choose the one that best suits your needs.

### Hosted Payment Page (HPP)

Frame is a highly customizable payment page, which allows customers to enter their payment details directly on your checkout page. We process these and exchange them for a secure, single-use token. You can then use this token to request a payment, without having to process or store any sensitive information yourself.

Use our hosted responsive solution for payment processing:

-   Least effort integration
-   Easy do-it-yourself styling options
-   Top performing templates
-   Responsive design on mobile

[Learn more -->](/integration/hpp/)

#### payment-widget.js

Payment.widget.js is our simplest integration method and requires little technical know-how. It's a payment lightbox that you can easily add to your website. Just like with Elements, customers enter their payment information, which we then exchange for a token.
  
[Learn more -->](/integration/payment-widget-js/)


### Self-hosting payment page 

Before you can make a payment with our API integration, you need to collect any required payment details from your shopper. Here we describe how to do this by building your own payment form.
Building your own form gives you full control over the look and feel of your checkout. If you'd rather not build your own payment form, you can also collect the shopper's payment details using our pre-built JavaScript Components. These are available for many popular payment methods.

Build and host yourself using SDKs or client API:

-   Full control over design
-   Users stay in your application/domain
-   Easy best-practices based development
-   Available for many platforms

[Learn more -->](/integration/self-hosting-payment-page/)

## Send Payouts

### Payouts API Guide


## API References

We offer several RESTful APIs: A server API which is used by the merchants in a server-to-server setup and a client API which is used by clients like desktops, laptops, mobile phones and other internet connected devices. For both APIs we offer a detailed API reference that lists all the functionalities and how to use them.

### Commerce

#### HPP API

[<i class="md-icon">description</i> Full HPP API Reference <i class="md-icon">launch</i>](https://apidoc.paycore.io/commerce-hpp/)

[<i class="md-icon">explore</i> Swagger HPP API Specification <i class="md-icon">launch</i>](https://swagger.paycore.io/commerce-hpp/)

#### Public API

The Public API enables mobile phones, browsers, and apps to access the hosted data such as detailed information about the available payment methods, services metadata, and public keys used for encrypting sensitive data. These calls require a Public Key that the merchant can create using the Private API.

[<i class="md-icon">description</i> Full Public API Reference <i class="md-icon">launch</i>](https://apidoc.paycore.io/commerce-public/)

[<i class="md-icon">explore</i> Swagger Public API Specification <i class="md-icon">launch</i>](https://swagger.paycore.io/commerce-public/)

#### Private API

The Private API enables merchants to access functionality such as payments, initiating hosted payments, creating profiles, and much more. All these calls require the caller to have a secret API key that merchants can look up in their Commerce Account.

[<i class="md-icon">description</i> Full Private API Reference <i class="md-icon">launch</i>](https://apidoc.paycore.io/commerce/)

[<i class="md-icon">explore</i> Swagger Private API Specification <i class="md-icon">launch</i>](https://swagger.paycore.io/commerce/)

### Platform

#### Core API

[<i class="md-icon">description</i> Full Core API Reference <i class="md-icon">launch</i>](https://apidoc.paycore.io/)

[<i class="md-icon">explore</i> Swagger Core API Specification <i class="md-icon">launch</i>](https://swagger.paycore.io/)

#### Cardgate API

The Cardgate API integration lets you accept payments on your website and mobile application, if you support PCI compliance at Level 1 or 2. This tutorial explains how you can collect raw card data from your shoppers and pass this data in payment requests to the Cardgate API.

When you want to reduce your PCI compliance requirements, we recommend that you integrate with our Client-Side Encryption library instead.

[<i class="md-icon">description</i> Full Cardgate API Reference <i class="md-icon">launch</i>](https://apidoc.paycore.io/cardgate/)

[<i class="md-icon">explore</i> Swagger Cardgate API Specification <i class="md-icon">launch</i>](https://swagger.paycore.io/cardgate/)

#### Cardgate HPP API

Using Cardgate HPP for card payments you can process transactions using PayCore.io, our easy to use hosted responsive payment pages. Your consumers will be able to complete the payment process using Cardgate HPP that is hosted by us. Using these pages to capture card details and process card transactions will greatly reduce not only your integration efforts, but it will also reduce your 'PCI exposure' to the lowest level (SAQ-A).

[<i class="md-icon">description</i> Full Cardgate HPP API Reference <i class="md-icon">launch</i>](https://apidoc.paycore.io/cardgate-hpp/)

[<i class="md-icon">explore</i> Swagger Cardgate HPP API Specification <i class="md-icon">launch</i>](https://swagger.paycore.io/cardgate-hpp/)

## Callbacks

Callbacks notify you about events that occur with regards to the payments that you process via PayCore.io, like status changes on payments. This allows you to be easily aware of things that happen, even after the consumer is no longer on your site. 

[Learn more -->](/integration/callbacks/)

## References

### Codes

PayCore.io uses its own developed standard for classification and identification of FinTech industry entities named OpenFinTech.io.

OpenFinTech.io directory includes data like:

-   Currencies: National, Digital, Virtual, Cryptocurrencies, etc.
-   Payment Service Providers (PSP): Distributors, Aggregators, Collectors, Acquirers, etc.
-   Payment & Payout Methods: E-wallets, Bank Cards, Prepaid Cards, SSK, Alternative Methods, etc.
-   Payment & Payout Services.
-   Digital Exchangers: Online, Offline, Stock, etc.
-   Banks and Branches.
-   Vendors: Organizations and companies.

All objects have own  **Unique Identification Code** that used for unification all payment data from disparate sources.

Feel free to explore and contribute at @github:paycoreio/openfintech

## SDKs

PayCore.io offers SDKs that wrap the RESTful API and make it even easier to integrate with our platform. The SDK you need depends on your server-side technology stack and on the clients that you want to support. The list below includes our current SDK offering.

### API Clients

Whether you're processing payments on desktop or on mobile, our software development kits give you the freedom to build your own custom integration. We'll still take care of the processing side of things, and return tokenized payment information to you.
  
[Learn more -->](/integration/sdks)

### Postman Collections