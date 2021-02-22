# Payment Gateway: Basics

<img src="/products/payment-gateway/images/facilitatorvsaggregator.jpg" alt="FXRates" style="width: 300px; float: left; padding-right: 15px;">

## Payment Flow

A payment transaction flow is the journey of payment from start to approval and credit of funds.  When a customer buys something using a credit card, funds follow a transaction flow passing through several players to finish the payment.

The main participants of the payment transaction flow are:

1. Payer (cardholder) that decides to pay for the service
2. Merchant (business owner or service provider) to whose account the funds are transmitted
3. Acquirer that processes payments on behalf of the merchant and routes them through the card networks (such as Visa or Mastercard) to the issuing bank.
4. Seldom acquirers may attract third party providers to help process payments.
5. Issuer bank that extends cards to consumers on behalf of the card networks.



## Payment Gateway

A payment gateway is a tool for accepting payments through connected payment providers interacting with them in a unified form. It takes care of authorising the payment and ensuring that the data entered is enough to finalise the transaction and distributing funds into the currency account.

The gateway protects customer data by encrypting all sensitive information it holds. And this process ensures that personal private details are passed securely between the customer, the payment provider, the banks, and the merchant.

!!! tip
    The gateway's correct work strongly depends on the payment provider accounts' proper settings. When you begin configuring it, you need to choose and set up several [connections](/connectors/) (start with Test and Cardgate).

    And it is also advisable to check and configure the [organisation's account](/products/account/) before setting up the gateway.