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

Our Hosted Payment Page (HPP) is a complete, ready-made payment UI that offers a quick and easy way to securely accept payments. The UI includes a card entry form and supports any payment method flow. When a user successfully completes the UI, your client code obtains a payment method nonce for use on your server.

Use our hosted responsive solution for payment processing:

-   Least effort integration
-   Can be used as a standalone page or as an iframe
-   Supports one specific or all available payment methods.
-   Easy do-it-yourself styling options
-   Good for connecting to existing checkout flows
-   Responsive design on mobile

[Learn more -->](/products/hpp/)

#### Payment widget

Payment.widget.js is our simplest integration method and requires little technical know-how. It's a payment lightbox that you can easily add to your website. Just like with Elements, customers enter their payment information, which we then exchange for a token.
  
[Learn more -->](/integration/payment-widget-js/)

#### Client Redirection

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

[Learn more -->](/products/hpp/)

### Self-hosted payment page

Before you can make a payment with our API integration, you need to collect any required payment details from your shopper. Here we describe how to do this by building your own payment form.
Building your own form gives you full control over the look and feel of your checkout. If you'd rather not build your own payment form, you can also collect the shopper's payment details using our pre-built JavaScript Components. These are available for many popular payment methods.

Build and host yourself using SDKs or client API:

-   Full control over design
-   Users stay in your application/domain
-   Easy best-practices based development
-   Available for many platforms

[Learn more -->](/integration/self-hosting-payment-page/)

## Make Payouts

### Payouts API Guide

[Learn more -->](/integration/payouts-guide/)


## Callbacks

Callbacks notify you about events that occur with regards to the payments that you process via PayCore.io, like status changes on payments. This allows you to be easily aware of things that happen, even after the consumer is no longer on your site. 

[Learn more -->](/integration/callbacks/)


## Full API References

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

The Core API allows you to programmatically manage your PayCore.io account. It does everything the Dashboard UI does, but adds some capabilities that may come in handy depending on your business needs. 

Consider, for instance, a business model in which you provide a service that allows other merchants to accept payments (like in a marketplace). Using the Core API you can create a Commerce accounts on behalf of each merchant, under the umbrella of your main account.

[<i class="md-icon">description</i> Full Core API Reference <i class="md-icon">launch</i>](https://apidoc.paycore.io/)

[<i class="md-icon">explore</i> Swagger Core API Specification <i class="md-icon">launch</i>](https://swagger.paycore.io/)

#### Cardgate API


The Cardgate API is Full card details API integration lets you accept payments on your website and mobile application, if you support PCI compliance at Level 1 or 2. This tutorial explains how you can collect raw card data from your shoppers and pass this data in payment requests to the Cardgate API.

When you want to reduce your PCI compliance requirements, we recommend that you integrate with our Client-Side Encryption library instead.

[<i class="md-icon">description</i> Full Cardgate API Reference <i class="md-icon">launch</i>](https://apidoc.paycore.io/cardgate/)

[<i class="md-icon">explore</i> Swagger Cardgate API Specification <i class="md-icon">launch</i>](https://swagger.paycore.io/cardgate/)

#### Cardgate HPP API

Using Cardgate HPP for card payments you can process transactions using PayCore.io, our easy to use hosted responsive payment pages. Your consumers will be able to complete the payment process using Cardgate HPP that is hosted by us. Using these pages to capture card details and process card transactions will greatly reduce not only your integration efforts, but it will also reduce your 'PCI exposure' to the lowest level (SAQ-A).

[<i class="md-icon">description</i> Full Cardgate HPP API Reference <i class="md-icon">launch</i>](https://apidoc.paycore.io/cardgate-hpp/)

[<i class="md-icon">explore</i> Swagger Cardgate HPP API Specification <i class="md-icon">launch</i>](https://swagger.paycore.io/cardgate-hpp/)

### Postman Collections

While being able to build requests using a GUI is nice, Postman really starts to shine when you use collections. Postman Collections are simply a collection of pre-built requests that can be organized into folders, and they can be easily exported and shared with others.

[Learn more -->](/integration/postman-collections/)

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

PayCore.io offers SDKs that wrap the RESTful API and make it even easier to integrate with our platform. The SDK you need depends on your server-side technology stack and on the clients that you want to support.
Whether you're processing payments on desktop or on mobile, our software development kits give you the freedom to build your own custom integration. 

### Client Libraries

We offer various libraries via our PayCore.io API.
Have a good look at our getting started guide and the API reference to get started right away in your IDE.
These libraries are hosted and maintained by PayCore.io. Nevertheless we always appreciate pull requests on GitHub to ensure our libraries are up to date. We greatly appreciate your input.

If you have programmed your own library, simply let us know by writing us at <support@paycore.io>.
  
[Learn more -->](/integration/sdks/)


## FAQ

[Explore FAQ section -->](/getting-started/faq/)

Can't find what you're looking for? [Contact our support team for help](https://support.paycore.io/).