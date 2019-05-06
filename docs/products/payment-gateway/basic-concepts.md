# Basic Concepts

## Introduction

Since the payment gateway directly depends on the integration with providers, before reading this section, we suggest that you familiarize yourself with the Provider Hub.

In it, you can find such concepts as:

-   What is the Currency?
-   What is a Merchant Account?
-   What is a Payment Service Provider?

Let's look at the basic concepts with which the payment gateway operates.

## What is a Payment Gateway?

The main job of a payment gateway is to validate your customer’s payment details securely, make sure the funds are available for the payment and get you paid.

A payment gateway is a service responsible for processing and routing payments for online and offline businesses. It is the equivalent of a physical point of sale terminal in a shop or restaurant. It lets your customer submit their payment details and then securely passes this sensitive financial information from the customer to the merchant and then between the merchant and the Payment Provider. The payment gateway then tells you whether the charge has been approved by the Payment Provider Processing and submits your charges for settlement. A settlement is where the payment amount is deducted from your customer’s payment account and deposited into your merchant account.

To make a payment, the payment gateway always requires a particular merchant account. Therefore, all payments are always made in the context of some merchant account.

If you have not connected any merchant account yet, we advise you to read about it in the [Provider Hub section](#).

## Payment methods

### What is the payment method?

Different payment gateways may support different payment methods.

The most common payment methods are debit cards,  [charge cards](https://en.wikipedia.org/wiki/Charge_card "Charge card"),  [prepaid cards](https://en.wikipedia.org/wiki/Prepaid_cards "Prepaid cards"),  [direct debit](https://en.wikipedia.org/wiki/Direct_debit "Direct debit"), bank transfers,  [phone](https://en.wikipedia.org/wiki/Phone "Phone")  and  [mobile payments](https://en.wikipedia.org/wiki/Mobile_payments "Mobile payments"),  [checks](https://en.wikipedia.org/wiki/Cheque "Cheque"),  [money orders](https://en.wikipedia.org/wiki/Money_orders "Money orders")  and  [cash](https://en.wikipedia.org/wiki/Cash "Cash")  payments.

More details can be found in the article on [Wikipedia](https://en.wikipedia.org/wiki/Alternative_payments).

Or take a look at [a guide to payment methods](https://stripe.com/payments/payment-methods-guide).

### What methods does [PayCore.io](http://PayCore.io) support?

Supported by widespread access to high-speed internet and the insatiable appetite of customers for convenience, online commerce is progressing rapidly around the world and estimated to reach $4T (source: eMarketer) in 2020. But when it comes to payments online, businesses expanding internationally and taking advantage of the increased reach that online commerce provides them with are met with widely varying customer preferences. Not only can delivery terms be quite different (pay after delivery, for example, common in Europe and Asia, requires businesses to only expect payment once they’ve shipped goods) but the payment methods used for online transactions themselves vary too. Credit and debit cards, not always the most trusted option, only account for half of the online transactions globally. Bank payments, digital wallets, and cash are in strong customer demand, and can even offer additional benefits to businesses such as lower risks and transaction costs.

That's why, [PayCore.io](http://PayCore.io) supports all the payment and payout methods implemented by payment providers that connected to our platform.

A list of all supported methods can be found in our [payment methods directory](#).

## Payment services

### What are payment services?

This term is specifically introduced to identify methods in conjunction with currency. Often, payment providers use exactly the combination of method and currency. This allows you to accurately operate with one term for routing on the provider side, interacting with a single code, instead of two.  
Services include the properties and parameters required to initiate a payment.  
This is like a contract for the gateway protocol.  
The gateway can always expect the parameters listed in the service properties.

**Example:**

If you need to make a payment, then obviously, for this you need to send some details based on service fields. For payout service to PayPal account by email, they look like this:

    {
        "code": "paypal_usd_hpp",
        "method": "paypal",
        "currency": "USD",
        "flow": "hpp",
        "amount_min": 0.01,
        "amount_max": 10000,
        "fields": [
          {
            "key": "email",
            "type": "string",
            "label": {
              "en": "Email",
              "uk": "Електронна пошта"
            },
            "hint": {
              "en": "Enter email",
              "uk": "Введіть адресу електронної пошти"
            },
            "regexp": "/^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$",
            "required": true,
            "position": 1
          }
        ]
    }

### What is the payment flows?

**Flow** code determines the scenario of the payment processing.

There are 4 basic payment processing flows:

-   `hpp` — Hosted payment page. It is when a customer needs to be redirected to external **HPP** provided by **Payment Service Provider**.
-   `invoice` — when a customer needs to pay by payment details. At the same time, the payment process outside the processing and asynchronous. This can be a manual transfer to a digital wallet, or bank Wire-transfer, or payment in a self-service kiosk by cash., etc.
-   `card` — used for host-to-host card payment processing. Requires PCI DSS.
-   `test` — used only for testing.

The only difference between the payment and payout services is that the payment service has **flow** property.

### What payment services does [PayCore.io](http://PayCore.io) support?

First of all, the payment hub unifies the protocols and interaction with external payment providers.

Therefore, it is necessary to have a single payment and payout service codes directory.

The full directory is available [here](#).

### Payment service currency VS merchant account currency

The currency of the merchant account is actually the currency in which the payment provider is processing the payment and keep settlement funds.

The currency of the payment service determines only the payment asset by which the user is calculated.

Only the provider itself determines at what exchange rate the amount of the payment service is calculated against the merchant account currency.

## What is Payment Routes?

Payment routes are all possible payment options for all connected merchant accounts. In fact, these are combinations of all connected merchant accounts of payment providers, their currencies, active payment services and methods.

One payment route always indicates the merchant account of the payment provider in concrete settlement currency and payment service.

You can manage payment routes in the settings of each merchant account in the [Provider Hub](#) and in the list of [all payment routes in general](#).

You can read more about routing in the [Smart Routing section](#).

## What is a payment?

Payment in [PayCore.io](http://PayCore.io) is an operation that is responsible for the state of the process of transferring money from the client to the account merchant in the payment provider.

It is important to understand that this payment process is not linear and depends on many factors.

In [PayCore.io](http://PayCore.io), the minimum required unit for making and making payments is the active payment route.

It has a strict bond: a merchant account, its currency and payment service.

Payment service sets the list of minimum required parameters for making a payment. This may be the client’s wallet number in the payment system, or his personal data, etc.

When creating a payment, the payment route is always indicated, therefore there is no participation of the routing rules in this process. Routing deals with a higher layer of business logic - Payment Request Gateway.

## What is a payment request?

Unlike payment, a payment request performs 2 very important roles - routing and cascading.

It also, like the payment, requires to create basic parameters and service fields, but unlike a payment, it is created without specifying a specific payment route.

Payment Request Processor uses Routing Schemes.

What is the difference between a payment and a payment request?  
Payment is always processed through the payment gateway of a particular payment provider using a specific merchant account.

The payment request is created only by the general parameters of the payment and, at the time of processing, dynamically determines the payment route and creates a payment for it.

## What is a routing scheme?

A routing scheme is a set of rules defining for each unique payment service, a strategy for choosing a payment route.

In essence, if we group all active payment routes by payment service, then these will be possible payment route options.

The routing strategy determines the algorithm for selecting a payment route from this list.

## Next

Let's take a look at how you could connect different payment providers in the [next article](#).