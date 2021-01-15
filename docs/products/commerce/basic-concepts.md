# Basic Concepts

## Currency Accounts

With  **Currency Accounts**, it is possible to create and manage currency holding accounts that give your merchants flexibility to make and receive foreign currency payments in selected currencies without converting the funds into base currency. For online businesses, multiple currency accounts enable to support billing in multiple currencies and consolidate transaction data made in the same currency for accounting and financial management purposes.

## Contract Schemes

**Contract Schemes** create a set of rules comprising routing and FX-rate schemes for both incoming and outgoing transactions in supported currencies. Before you'll be able to create a Commerce Account, firstly, you need to create a contract scheme. This is due to requiring that every commerce account has linked to a certain Contract Scheme. Online businesses can create multiple Contract Schemes to be assigned to numerous Commerce Accounts to support different types of offerings or multiple storefronts. The ability to assign one Contract Scheme to any number of Commerce Accounts allows FinTechs and marketplaces to apply the same conditions to a certain group of merchants (i.g. toy retailers or ticketing) such as available payment methods, commissions, reserves, etc.

## Payment and Payout Invoice

Three types of transactions occur in [{{custom.company_name}}](http://{{custom.company_name}}/): invoice, request and payment or payout. A Payment or Payout is a low-level operation that initiates a financial transaction in the defined payment provider system using the specified payment method, it simply provides a connection with an external provider and the mapping of statuses. A Payment or Payout Request is an operation with rich functionality that initiates one or multiple payments or payouts depending on the conditions set in the routing and exchange rate schemes. A [Payment Invoice]({{custom.dashboard_base_url}}operations/payment-invoices)  or  [Payout Invoice]({{custom.dashboard_base_url}}operations/payout-invoices)  is a high-level operation that initiates not only payment or payout request, correspondingly, but also Ledger account transactions. An invoice includes information about a currency, commission and exchange rate.

This new functionality allows online businesses to apply payment fee for all incoming and outgoing transactions separately for every Commerce Account. For example, Uber and Fiverr take a 20% fee rate, while Freelancer charges 10% per transaction. Transaction fees are usually the main revenue stream of payment processors.

### Payments hierarchy

Three types of **incoming** transactions occur in {{custom.company_name}}:

Payment Invoice --> Payment Request --> Payment

- **Payment** is a low-level operation that initiates a financial transaction via the defined payment provider using the specified method. It simply provides communication with an external provider and the mapping of statuses.
- **Payment Request** is an operation with rich functionality that initiates one or multiple transactions depending on the conditions set in the routing and exchange rate schemes.
- **Payment Invoice** is a high-level operation that initiates following Payment Request and Ledger account transactions.

### Payouts hierarchy

Three types of **outgoing** transactions occur in {{custom.company_name}}:

Payout Invoice --> Payout Request --> Payout

- **Payout**  is a low-level operation that initiates a financial transaction via the defined payment provider using the specified payout method. It simply provides a connection with an external provider and the mapping of statuses. Payout refers to the financial return, or monetary disbursement of investment, or annuity.
- **Payout Request** is an operation with rich functionality that initiates one or multiple payouts depending on the conditions set in the routing and exchange rate schemes.
- **Payout Invoice** is a high-level operation that initiates following Payout Request and Ledger account transactions.

In contrast to Payment Invoice — Payout Invoice has **Autoprocessing** property. This type of commerce transactions can be processed both *automatically* and *manually*.
<!--
## Ledger

For  [{{custom.company_name}}](http://{{custom.company_name}}/) users with a limited accounting background, the Ledger feature can appear to be the most foreign part of the platform. The Ledger screen actually includes all aspects of the accounting record and based in double-entry bookkeeping: in order for an amount to be presented in one account, it must also be present in another account, hence the use of debits and credits. It is an extremely valuable tool in accounting and financial management when it comes to payment processing for third parties.

[{{custom.company_name}}](http://{{custom.company_name}}/) allows for quick processing of accounting information ‘behind the scenes’. The Ledger activities of a business are all captured in  [{{custom.company_name}}](http://{{custom.company_name}}/), through the summation of all  [Transactions]({{custom.dashboard_base_url}}ledger/accounts) by particular [Account]({{custom.dashboard_base_url}}ledger/categories) the cash flowed to and from. Each account has an account  [Category]({{custom.dashboard_base_url}}ledger/categories) which determines where the account appears in your financial statements. We enable you adding or editing Categories those are divided into active and passive. Ledger feature is available for customers on [{{custom.company_name}}](http://{{custom.company_name}}/) Commerce plan, you can upgrade at any time to use this functionality. It worth to mention that Ledger feature can be enabled for any Commerce Account when required to take into account the cash flows through the commerce account.

[Deposit]({{custom.dashboard_base_url}}operations/deposits), [Withdrawals]({{custom.dashboard_base_url}}operations/withdrawals) and [Transfers]({{custom.dashboard_base_url}}operations/transfers) are new types of transactions and can be initiated manually at the moment. Those new transaction types are required to take into account the financial transactions made outside  [{{custom.company_name}}](http://{{custom.company_name}}/).

-->
