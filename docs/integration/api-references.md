# Full API References

We offer several RESTful APIs: A server API which is used by the merchants in a server-to-server setup and a client API which is used by clients like desktops, laptops, mobile phones and other internet connected devices. For both APIs we offer a detailed API reference that lists all the functionalities and how to use them.

## Commerce

### Commerce HPP API

Start accepting online payments in just a few minutes with HPP. It's quick and easy to integrate, accepts online payments from all major methods and credit cards, and is customizable to your brand.

[<img src="/integration/images/code-docs.svg" alt="Docs" style="width: 26px; margin-right: 5px; float: left;"> Full HPP API Reference :material-launch:]({{custom.redoc_base_url}}commerce-hpp/)

[<img src="/integration/images/swagger.svg" alt="Swagger" style="width: 26px; margin-right: 5px; float: left;"> Swagger HPP API Specification :material-launch:]({{custom.swagger_base_url}}commerce-hpp/)

### Commerce Public API

The Public API enables mobile phones, browsers, and apps to access the hosted data such as detailed information about the available payment methods, services metadata, and public keys used for encrypting sensitive data. These calls require a Public Key that the merchant can create using the Private API.

[<img src="/integration/images/code-docs.svg" alt="Docs" style="width: 26px; margin-right: 5px; float: left;"> Full Public API Reference :material-launch:]({{custom.redoc_base_url}}commerce-public/)

[<img src="/integration/images/swagger.svg" alt="Swagger" style="width: 26px; margin-right: 5px; float: left;"> Swagger Public API Specification :material-launch:]({{custom.swagger_base_url}}commerce-public/)

### Commerce Private API

The Private API enables merchants to access functionality such as payments, initiating hosted payments, creating profiles, and much more. All these calls require the caller to have a secret API key that merchants can look up in their Commerce Account.

[<img src="/integration/images/code-docs.svg" alt="Docs" style="width: 26px; margin-right: 5px; float: left;"> Full Private API Reference :material-launch:]({{custom.redoc_base_url}}commerce/)

[<img src="/integration/images/swagger.svg" alt="Swagger" style="width: 26px; margin-right: 5px; float: left;"> Swagger Private API Specification :material-launch:]({{custom.swagger_base_url}}commerce/)

### Commerce Callbacks

Callbacks notify you about events that occur with regards to the payments that you process via {{custom.company_name}} Commerce, like the state on payments or payouts changes changes. This allows you to be easily aware of things that happen, even after the consumer is no longer on your site. 

[<img src="/integration/images/code-docs.svg" alt="Docs" style="width: 26px; margin-right: 5px; float: left;"> Commerce Callbacks Guide](/integration/commerce-callbacks/)

## Platform

### Core API

The Core API allows you to programmatically manage your {{custom.company_name}} account. It does everything the Dashboard UI does, but adds some capabilities that may come in handy depending on your business needs. 

Consider, for instance, a business model in which you provide a service that allows other merchants to accept payments (like in a marketplace). Using the Core API you can create a Commerce accounts on behalf of each merchant, under the umbrella of your main account.

[<img src="/integration/images/code-docs.svg" alt="Docs" style="width: 26px; margin-right: 5px; float: left;"> Full Core API Reference :material-launch:]({{custom.redoc_base_url}})

[<img src="/integration/images/swagger.svg" alt="Swagger" style="width: 26px; margin-right: 5px; float: left;"> Swagger Core API Specification :material-launch:]({{custom.swagger_base_url}})

<!--
### Webhooks

When an event occurs, we send you a webhook notification to tell you what's happened so you can take action and keep your business running smoothly.

Webhooks provide a definitive confirmation of a status update and are used for a variety of purposes, such as fulfilling orders, sending automated status updates to customers, or even integrating with third-party application services.

>   Soon...

## Cardgate

### Cardgate API

The Cardgate API is Full card details API integration lets you accept payments on your website and mobile application, if you support PCI compliance at Level 1 or 2. It allows you to collect raw card data from your shoppers and pass this data in payment requests to the Cardgate API.

When you want to reduce your PCI compliance requirements, we recommend that you integrate with our Client-Side Encryption library instead.

>   Soon...

### Cardgate HPP API

Using Cardgate HPP for card payments you can process transactions using {{custom.company_name}}, our easy to use hosted responsive payment pages. Your consumers will be able to complete the payment process using Cardgate HPP that is hosted by us. Using these pages to capture card details and process card transactions will greatly reduce not only your integration efforts, but it will also reduce your 'PCI exposure' to the lowest level (SAQ-A).

>   Soon...
-->

## Codes

Codes are everywhere in the world of payments. But what do they all mean? If you struggle to tell your HTTP status codes from your ISO 4217s, we've got your back.

{{custom.company_name}} uses its own developed standard for classification and identification of FinTech industry entities named OpenFinTech.io.

OpenFinTech.io directory includes data like:

-   Currencies: National, Digital, Virtual, Cryptocurrencies, etc.
-   Payment Service Providers (PSP): Distributors, Aggregators, Collectors, Acquirers, etc.
-   Payment & Payout Methods: E-wallets, Bank Cards, Prepaid Cards, SSK, Alternative Methods, etc.
-   Payment & Payout Services.
-   Digital Exchangers: Online, Offline, Stock, etc.
-   Banks and Branches.
-   Vendors: Organizations and companies.

It also includes Country codes, Merchant category codes (MCC) and much other useful stuff.

All objects have own  **Unique Identification Code** that used for unification all payment data from disparate sources.

Feel free to explore and contribute at @github:paycoreio/openfintech

## Postman Collections

While being able to build requests using a GUI is nice, Postman really starts to shine when you use collections. Postman Collections are simply a collection of pre-built requests that can be organized into folders, and they can be easily exported and shared with others.

[Learn more -->](/integration/postman-collections/)

!!! question
    Can't find what you're looking for? [Contact our support team for help]({{custom.support_url}}).