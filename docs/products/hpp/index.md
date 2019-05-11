# PayCore.io Hosted Payment Page

![HPP Preview](images/hpp-preview.png)

The  **Hosted Payment Page**  (HPP) is a service that lets you use PayCore.io to accept payments without the need of integrating our products in your web pages, or even without having any consumer fronting website for  _In-store_  or  _Telesales_  use cases.

HPP lets you accept payments on your website with PayCore.io just by redirecting the consumer in the checkout flow.

It supports  _PayCore.io Commerce_  so that you get the solution that matches the best your eCommerce needs. With distribution mechanisms (QR Code, SMS and Email), it lets you build your own customized flow that goes beyond the typical eCommerce solution.

Before deciding to integrate the Hosted Payment Page, make sure that you checked our guidelines regarding integrations depending on your use case. A seemless integration of _PayCore.io Commerce_ in your eCommerce checkout flow will always lead to a better conversion rate than using our HPP.

For more information, visit our product page on [PayCore.io HPP](https://paycore.io/payment-gateway/checkout/).


## Benefits of payments via the PayCore.io HPP

-   PayCore.io’s Hosted Payment Pages are suitable for web, smartphones and tablets.
-   All payment methods you have enabled are – when relevant – shown to your customers. A newly activated payment method is available immediately for all of your visitors.
-   If the customer’s first choice of payment method is not successful, it’s very easy for the customer to select and try another one. If a customer appears to not have sufficient credit on a checking account a retry by credit card could easily be attempted. We handle this for you without asking you to implement any extra APIs.
-   PayCore.io optimizes the order of payment methods. For Dutch customers we know to list iDEAL at the top while for Belgians we start off with the payment method Bancontact. A lot of effort goes into this and we optimize this using A/B-testing. This way we improve your conversion without your effort.

## Use cases

HPP is especially made to help you use  **PayCore.io Commerce**  in workflows that are not typical e-commerce flows. It is a good fit when you are interacting with a consumer and you need to enable a payment in a store or by phone, without having to host a website. You interact with the consumer to define the order and either redirect them to the Hosted Payment Page or send them a link to pay by Email, SMS or even QR Code.

As this hosted solution provides only basic customization features, for other cases PayCore.io encourages you when possible to integrate  _PayCore.io Payments_  directly in your website to get a better user experience and conversion rate.

### In-store

HPP lets you provide PayCore.io as a payment method in your website store, your consumer will be able to finance their purchase in a few questions with PayCore.io.

### Telesales

HPP lets you accept payments in a Telesales flow without the need of any website integration. Send your consumer a _paylink_ by e-mail or sms and let them pay the order.


### How does it work

Technically, HPP is a companion service to  _PayCore.io Commerce_ that uses  _PayCore.io Payment Gateway_, which can both be referred as a  _Payment Provider_. You will have to integrate one of these APIs to create a  _Payment Invoice_, and then use HPP to deliver the Payment experience to merchant customers.

A complete payment process will involve three of PayCore.io services:

1.  **Commerce HPP API**  - Hosted Payment Page to distribute the Payment Invoice to merchant Customer.
2.  **Commerce Public API**  - Public API to integrate to create a Payment Invoice.
3.  **Commerce Private API**  - Private API to capture payment or refund the order that was created.

### Follow our guide

1.  Learn more about  [objects handled using Commerce APIs](/products/hpp/integration-overview): payment invoice, payment request, callbacks…
2.  Read our  [step by step integration guide](/products/hpp/integration-guide)  and create your own flow.
3.  Check that you  [respect specific use cases rules](/products/hpp/use-cases)  for Telesales or In-store cases.
4.  [Customize the Hosted Payment Page](/products/hpp/customization)  to increase conversion.
5.  Read the  [Full HPP API Reference](/integration/api-references/).