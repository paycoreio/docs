# Basic Concepts

## Currency Accounts

With  **Currency Accounts**  now is possible to create and manage currency holding accounts that give your merchants the flexibility to make and receive foreign currency payments in selected currencies without converting the funds into a base currency. For online businesses, multiple currency accounts enable to support billing in multiple currencies and consolidate transaction data made in the same currency for accounting and financial management purposes.

## Contract Schemes

**Contract Schemes**  are to create a set of rules comprises routing and FX-rate schemes for both ingoing and outgoing transactions in supported currencies. You need to create first a contract scheme before you'll be able to create a Commerce Account. This is due to requiring that every commerce account has linked to a certain Contract Scheme. Online businesses can create multiple Contract Schemes to be assigned to numerous Commerce Accounts to support different types of offerings or multiple storefronts. The ability to assign one Contract Scheme to any number of Commerce Accounts allows FinTechs and marketplaces to apply the same conditions mirror agreement conditions to a certain group of merchants (i.g. toy retailers or ticketing) such as available payment methods, commissions, reserves, and etc.

## Payment and Payout Invoice

There are three types of transactions that occur in  [PayCore.io](http://paycore.io/): invoice, request and payment or payout. A Payment or Payout is a low-level operation that initiates a financial transaction in the defined payment provider using the specified payment method, it simply provides communication with an external provider and the mapping of statuses. A Payment or Payout Request is an operation with rich functionality that initiates one or many payments or payouts depending on the conditions set in the routing and exchange rate schemes. A  [Payment Invoice](https://dashboard.paycore.io/operations/payment-invoices)  or  [Payout Invoice](https://dashboard.paycore.io/operations/payout-invoices)  is a high-level operation that initiates not only payment or payout request correspondingly but also Ledger account transactions. An invoice includes information on a currency, commission and exchange rate.

This new functionality allows online businesses to apply commission fee for all incoming and outgoing transactions separately for every Commerce Account. For example, Uber and Fiverr take a 20% commission rate, while Freelancer charges 10% per transaction. Transaction fees are usually the main revenue stream of any payment processor.

### Payments hierarchy

There are three types of **incoming** transactions that occur in PayCore.io:

Payment Invoice --> Payment Request --> Payment

- **Payment** is a low-level operation that initiates a financial transaction in the defined payment provider using the specified payment method, it simply provides communication with an external provider and the mapping of statuses.
- **Payment Request** is an operation with rich functionality that initiates one or many payments depending on the conditions set in the routing and exchange rate schemes.
- **Payment Invoice** is a high-level operation that initiates accompanying Payment Request and Ledger account transactions.

### Payouts hierarchy

There are three types of **outgoing** transactions that occur in PayCore.io:

Payout Invoice --> Payout Request --> Payout

- **Payout** is a low-level operation that initiates a financial transaction in the defined payment provider using the specified payout method, it simply provides communication with an external provider and the mapping of statuses. Payout refers to the financial return or monetary disbursement of investment or annuity.
- **Payout Request** is an operation with rich functionality that initiates one or many payouts depending on the conditions set in the routing and exchange rate schemes.
- **Payout Invoice** is a high-level operation that initiates accompanying Payout Request and Ledger account transactions.

In contradistinction to Payment Invoice — Payout Invoice has **`AUTOPROCESS`** property.
It means that this type of commerce operations can be processed as **automaticaly** as **manualy**.

## Ledger

For  [PayCore.io](http://paycore.io/) users with a limited accounting background, the Ledger feature can appear to be the most foreign part of the platform. The Ledger screen actually includes all aspects of the accounting record and based in double-entry bookkeeping: in order for an amount to be presented in one account, it must also be present in another account, hence the use of debits and credits. It is an extremely valuable tool in accounting and financial management when it comes to payment processing for third parties.

[PayCore.io](http://paycore.io/) allows for quick processing of accounting information ‘behind the scenes’. The Ledger activities of a business are all captured in  [PayCore.io](http://paycore.io/), through the summation of all  [Transactions](https://dashboard.paycore.io/ledger/accounts) by particular [Account](https://dashboard.paycore.io/ledger/categories) the cash flowed to and from. Each account has an account  [Category](https://dashboard.paycore.io/ledger/categories) which determines where the account appears in your financial statements. We enable you adding or editing Categories those are divided into active and passive. Ledger feature is available for customers on [PayCore.io](http://paycore.io/) Commerce plan, you can upgrade at any time to use this functionality. It worth to mention that Ledger feature can be enabled for any Commerce Account when required to take into account the cash flows through the commerce account.

[Deposit](https://dashboard.paycore.io/operations/deposits), [Withdrawals](https://dashboard.paycore.io/operations/withdrawals) and [Transfers](https://dashboard.paycore.io/operations/transfers) are new types of transactions and can be initiated manually at the moment. Those new transaction types are required to take into account the financial transactions made outside  [PayCore.io](http://paycore.io/).


