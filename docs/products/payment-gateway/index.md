# Basics of payments

## Payment flow

<img src="/products/payment-gateway/images/facilitatorvsaggregator.jpg" alt="FXRates" style="width: 300px; float: left; padding-right: 15px;">

A payment transaction flow is the journey of payment from start to approval and credit funds. When a customer buys something using a credit card, funds follow a transaction flow passing through several players to finish the payment.

The main participants there are:

* **Payer** (cardholder) that decides to pay for the service
* **Merchant** (business owner or service provider) to whose account the funds are transmitted
* **Acquirer** processes payments on behalf of the merchant and routes them through the payment systems and card networks (such as Visa or Mastercard) to the issuing bank.
* Seldom acquirers may attract third party **providers** to help process payments. **Payment providers (PSP)** can offer the organisation of payment reception, Internet acquiring, agency cooperation scheme, act as international or local companies, have different conditions for opening accounts.
* **Issuer** bank that extends cards to consumers on behalf of the card networks.

To succeed in a payment process, you should accurately interact with each of the participants.

### In a nutshell

![Payment Flow overview](images/payment-process.png)

What happens when a customer decides to pay for merchandise or service? In general, we can describe the interaction as follows:

1. The customer places an order, fills in all necessary card (account) data for payment, and press a 'Pay' button.
2. The encrypted data is sent to the payment gateway that collects payment details and sends them to the payment system.
3. The payment system verifies the transaction data and passes them to the issuer bank.
4. The issuer also checks the authorisation request and sends a response back to the payment processor with the transaction status or error details.
5. Through the payment gateway, the transaction status is returned to the merchant.
6. The merchant displays a status page with the transaction status (accepted or denied). And the issuer bank also sends an appropriate message to the customer.
7. Within a day or a couple of days, the issuing bank transfers funds to the merchant's account.

The **payment gateway** plays an essential role by connecting the main participants. Depending on the flow chosen, it can:

* **process** all the data on its side,
* **redirect** the payer to the provider's  payment page,
* or make the payer's **authorisation** without writing off funds.

## {{custom.company_name}} payment gateway

A payment gateway is a tool for accepting payments through connected payment providers interacting with them in a unified form. It takes care of authorising the payment and ensuring that the data entered is enough to finalise the transaction and distributing funds into the currency account.

The payment gateway performs its tasks depending on supported integration methods, chosen payment flow, and transaction processing procedure defined by the provider interface.

Payment gateways can execute the following processing types:

* **Authorisation** type of transaction is used to identify whether the payment card is valid, and a customer has enough funds. It doesn't include the actual money transfer. Instead, the issuer bank holds money and ensures a merchant the customer can pay for an order, usually for the one that takes time to ship or manufacture.

* **Void** is the result of a cancelled order used if the provider authorised but didn't yet capture funds.

* **Capture** is the actual processing of a previously authorised payment resulting in funds sending to the merchant's account.

* **Sale** is a combination of authorisation and capture transactions. It's a regular payment for quick and possibly regular purchases like a subscription or e-tickets.

* **Refund** is the result of a cancelled order for which a merchant has to apply a refund payment processing to return the money to a customer.

### The benefits of the payment gateway using

1. Security isn't your problem: the payment gateway takes over the purchase data safety and ensures that your customers can pay with confidence. The gateway protects customer data by encrypting all sensitive information it holds. And this process ensures that personal private details are passed securely between the customer, the payment provider, the banks, and the merchant.
2. More straightforward integration: such payment gateways as {{custom.company_name}} integrate more than 100 payment service providers, and you can choose all that suit you.
3. Multiple payment options are available: you can offer your users multiple ways to pay, not only debit and credit cards but vouchers, e-wallet and cryptocurrency payments.
4. If you have plans to sell to customers abroad, it's worthwhile to grant a gateway accepting payments in foreign currencies.
5. The payment gateways are independent of the bank working hours and run around the clock to process a customer's payment no matter the purchase time.
6. Finally, using a single gateway, you collect all payments received in one spot and get reports and analysis to increase your income.

In the following pages, we're going closer to setting up the {{custom.company_name}} payment gateways and choosing [payment methods and options in their variety](methods-n-options).

!!! note
    The gateway's correct work strongly depends on the payment provider accounts' proper settings. When you begin configuring {{custom.company_name}} payment gateway, you need to choose and set up several [connections](/connectors/) (we recommend to start with Test and Card Gate).

    And it is also advisable to check and configure the [organisation's account](/products/account/) firstly.
