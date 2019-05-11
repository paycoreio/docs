# Full API References

![PayCore.io APIs](/images/paycore-apis.png)

We offer several RESTful APIs: A server API which is used by the merchants in a server-to-server setup and a client API which is used by clients like desktops, laptops, mobile phones and other internet connected devices. For both APIs we offer a detailed API reference that lists all the functionalities and how to use them.

## Commerce

### HPP API

[<i class="md-icon">description</i> Full HPP API Reference <i class="md-icon">launch</i>](https://apidoc.paycore.io/commerce-hpp/)

[<i class="md-icon">explore</i> Swagger HPP API Specification <i class="md-icon">launch</i>](https://swagger.paycore.io/commerce-hpp/)

### Public API

The Public API enables mobile phones, browsers, and apps to access the hosted data such as detailed information about the available payment methods, services metadata, and public keys used for encrypting sensitive data. These calls require a Public Key that the merchant can create using the Private API.

[<i class="md-icon">description</i> Full Public API Reference <i class="md-icon">launch</i>](https://apidoc.paycore.io/commerce-public/)

[<i class="md-icon">explore</i> Swagger Public API Specification <i class="md-icon">launch</i>](https://swagger.paycore.io/commerce-public/)

### Private API

The Private API enables merchants to access functionality such as payments, initiating hosted payments, creating profiles, and much more. All these calls require the caller to have a secret API key that merchants can look up in their Commerce Account.

[<i class="md-icon">description</i> Full Private API Reference <i class="md-icon">launch</i>](https://apidoc.paycore.io/commerce/)

[<i class="md-icon">explore</i> Swagger Private API Specification <i class="md-icon">launch</i>](https://swagger.paycore.io/commerce/)

## Platform

### Core API

The Core API allows you to programmatically manage your PayCore.io account. It does everything the Dashboard UI does, but adds some capabilities that may come in handy depending on your business needs. 

Consider, for instance, a business model in which you provide a service that allows other merchants to accept payments (like in a marketplace). Using the Core API you can create a Commerce accounts on behalf of each merchant, under the umbrella of your main account.

[<i class="md-icon">description</i> Full Core API Reference <i class="md-icon">launch</i>](https://apidoc.paycore.io/)

[<i class="md-icon">explore</i> Swagger Core API Specification <i class="md-icon">launch</i>](https://swagger.paycore.io/)

### Cardgate API

The Cardgate API integration lets you accept payments on your website and mobile application, if you support PCI compliance at Level 1 or 2. This tutorial explains how you can collect raw card data from your shoppers and pass this data in payment requests to the Cardgate API.

When you want to reduce your PCI compliance requirements, we recommend that you integrate with our Client-Side Encryption library instead.

[<i class="md-icon">description</i> Full Cardgate API Reference <i class="md-icon">launch</i>](https://apidoc.paycore.io/cardgate/)

[<i class="md-icon">explore</i> Swagger Cardgate API Specification <i class="md-icon">launch</i>](https://swagger.paycore.io/cardgate/)

### Cardgate HPP API

Using Cardgate HPP for card payments you can process transactions using PayCore.io, our easy to use hosted responsive payment pages. Your consumers will be able to complete the payment process using Cardgate HPP that is hosted by us. Using these pages to capture card details and process card transactions will greatly reduce not only your integration efforts, but it will also reduce your 'PCI exposure' to the lowest level (SAQ-A).

[<i class="md-icon">description</i> Full Cardgate HPP API Reference <i class="md-icon">launch</i>](https://apidoc.paycore.io/cardgate-hpp/)

[<i class="md-icon">explore</i> Swagger Cardgate HPP API Specification <i class="md-icon">launch</i>](https://swagger.paycore.io/cardgate-hpp/)
