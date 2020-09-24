# PayCore.io Release notes

[PayCore.io](http://paycore.io/) follows [Semantic Versioning](https://semver.org/) and regularly updates the platform and its APIs with **new features**, **bug fixes**, and **performance improvements**.

This changelog lists releases by date and version number, along with associated changes.

## [v1.20 15/09/2020](v1.20/)

* [Merchant App Theme Switcher](v1.20/#merchant-app-theme-switcher): added possibility to change Merchant Portal appearance in the settings
* [Card Gate update](v1.20/#card-gate-update): added routing by the client IPs
* [Reports and Exports upgrades](v1.20/#reports-and-exports-upgrades): added a feature to create a custom report from the Reports section, added the Commerce account ID column to the Export spreadsheets
* [Integration updates](v1.20/#integration-updates): AdGroup, Stripe, Wirecapital; INR and MXN currencies
* [Minor bug fixes](v1.20/#bug-fixes)

## [v1.19 01/09/2020](v1.19/)

* [Commerce Update](v1.19/#commerce-update): allowed controlling the refund fee option from the Dashboard
* [Card Gate Update](v1.19/#card-gate-update): added the error message with a hint for payment retry (in case of "bad" routing)
* [New and Updated Integrations](v1.19/#new-integrations): IPayTotal, Pivdenny Bank, Royal Pay, WinPay
* [Trivial Bug Fixes](v1.19/#bug-fixes)

## [v1.18 19/08/2020](v1.18/)

* [Dashboard UX Improvements](v1.18/#dashboard-ux-improvements): added bulk editing of commerce payment services, started to display transaction source in the Dashboard and the Merchant Portal, improved multiple sorting
* [New Integrations](v1.18/#new-integrations) for Stripe and Royal Pay; increased the Card Gate limit of the possible invoice amount up to 1,000,000,000
* [Bug Fixes](v1.18/#bug-fixes)

## [v1.17 04/08/2020](v1.17/)

* [The Refund Fee option](v1.17/#refund-fee-option): added possibility to return refund fee
* [Payout Gateway Updates](v1.17/#payout-gateway-updates): added a routing condition by Metadata, limited payout splitting to 100 parts
* [Card Gate Improvements](v1.17/#card-gate-improvements): put to the general overview all connected features for the Merchant account, added new attributes for payment and payout routings, failover routing for same cards in case of auto-repeatable resolutions
* [HPP Theme Options](v1.17/#additional-checkout-theme-options): increased limit up to 20
* [Reports Update](v1.17/#reports-update): added Reserved amounts and Reserved balances
* [New Integrations](v1.17/#new-integrations): Cauri, Global Money, Neteller, Raiffeisen Bank, SafeCharge; AMD currency
* [Bug Fixes](v1.17/#bug-fixes)

## [v1.16 07/07/2020](v1.16/)

* [Payout Gateway Updates](v1.16/#payout-gateway-updates): upgraded batch payouts and the added possibility for direct p2p-payouts
* [UX Improvements](v1.16/#ux-improvements): added archiving for routing schemes and multi-sorting for grids
* [White Label URL Addons](v1.16/#white-label-url-addons)
* [Performance Improvements](v1.16/#performance-improvements)

## [v1.15 23/06/2020](v1.15/)

* [Platform UX Enhancements](v1.15/#platform-ux-enhancements): added payloads for Deposit account balances, extra fields to the Payout Overview, the layout sort parameter 'Created', actions for p2p payments, and new fields to the export grids for Deposits, Withdrawals, and Transfers
* [Merchant Application Update](v1.15/#merchant-application-settings-update): added API Key to the configuration
* [Integration Updates](v1.15/#integration-updates): CardPay and Platio instant payments
* [Bug Fixes and Stability Improvements](v1.15/#stability-improvements)

## [v1.14 09/06/2020](v1.14/)

* [Commerce Enhancements](v1.14/#commerce-enhancements): added possibility to withhold part of the funds before releasing to the merchant and to include the minimum required balance for the currency account; restrictions on transfers between commerce accounts, and resolutions related to payout schemes usage
* [Merchant Application update](v1.14/#merchant-application-settings-update): added custom roles to account settings and the session limit to Merchant Portal configuration
* [Card Gate Update](v1.14/#card-gate-update): added metadata modifier, a cap limit increase to 100,000 UAH for payouts
* [New Integrations](v1.14/#new-integrations): LiqPay non-CVV payments, VCreditos wallet payments and payouts, bank transfers as manual payouts
* [And other minor performance improvements](v1.14/#performance-improvements)

## [v1.13 14/05/2020](v1.13/)

* [Payout Schemes](v1.13/#payout-schemes): improved payout routing
* [Tokenisation process upgrade](v1.13/#tokenisation-process-upgrade): separated two types of tokens
* [Updates for Commerce account management](v1.13/#updates-for-commerce-account-management): functionalities for archiving accounts and for setting up different Return URLs from the dashboard; also, updated Merchant Portal settings
* [Dashboard UX Betterment](v1.13/#dashboard-ux-betterment): a full-text search launch
* [HPP Update](v1.13/#hpp-update): change localisation key
* [New Integrations](v1.13/#new-integrations): Klarna Payments, Paysafe Payments and Payouts, Genome Payouts, Concord Bank 3DS Flow, Portmone.com non-3DS Flow, UAPay Balances, new supported currencies, Google Pay UI update
* [Bug Fixes](v1.13/#bug-fixes)

## [v1.12 10/04/2020](v1.12/)

* [Commerce Improvements](v1.12/#commerce-improvements): added Reference ID for Commerce Accounts, Autoprocess and P2P-firstly strategy to the Payouts options, enabled process pending transactions from the Dashboard, added custom favicons for HPP
* [Integration Updates](v1.12/#integration-updates): Concord Bank Google Pay UI Flow, Xpate Payouts, XPAY 1-stage Payouts
* [Bug Fixes](v1.12/#bug-fixes)

## [v1.11 25/03/2020](v1.11/)

* [Addons](v1.11/#addons): implemented addons
* [Card Gateway Routing Updates](#card-gateway-routing-updates): added attributes to routing conditions
* [Commerce Update](v1.11/#commerce-update): changed default attempts limit for payouts
* [New integrations](v1.11/#new-integrations): Masterpass UI Flow for Concord Bank, Google Pay UI Flow for Portmone.com, ApplePay and Google Pay UI Flow for WinPay, updated Forwardbank connection
* [Performance improvements](v1.11/#performance-improvements)

## [v1.10 11/03/2020](v1.10/)

* [Card Gate upgrade](v1.10/#verify-flow): added flow for card verification
* [Commerce improvements](v1.10/#commerce-improvements): added possibility to set up Callbacks' options, filtered archived currency accounts
* [Dashboard betterment](v1.10/#expanded-transaction-overview): expanded information about payment
* [New integrations](v1.10/#new-integrations): Cashfree, updated LiqPay and Twelve.live
* [Performance improvements](v1.10/#performance-improvements)

## [v1.9 28/02/2020](v1.9/)

* [Card Gate update](v1.9/#card-gate-update): added options for merchant accounts
* [Update routing schemes for payouts](v1.9/#update-payout-routes)
* [New integration](v1.9/#new-integration): WinPay
* [Performance improvements](v1.9/#performance-improvements) (and bug fixes)

## [v1.8.5 21/02/2020](v1.8.5/)

* [Commerce betterment](v1.8.5/#commerce-betterment) in service settings
* [Support of UAX](v1.8.5/#support-of-a-new-cryptocurrency)
* [Bug fixes](v1.8.5/#bug-fixes)

## [v1.8.0 14/02/2020](v1.8.0/)

* [FXRates Updates](v1.8.0/#fxrates-updates): added `System scheme fallback` option and a list of supported currencies
* [New integrations](v1.8.0/#new-integrations): Billine, ECommPay, Kuna, Rapyd.net, Selcom
* [Performance improvements](v1.8.0/#performance-improvements)

## [v1.7.6 07/02/2020](v1.7.6/)

* [Card Gate Updates](v1.7.6/#card-gate-updates): add Masterpass and possibility to customize currency exchange
* [Data Export](v1.7.6/#data-export): exports for Deposits, Withdrawals and Transfers
* [Layout Upgrade](v1.7.6/#layout-upgrade): added quick search for accounts
* [New integrations](v1.7.6/#new-integrations): Wirecard payouts, ecoPayz voucher
* [Performance improvements](v1.7.6/#performance-improvements)

## [v1.7.1 31/01/2020](v1.7.1/)

* [Commerce update](v1.7.1/#commerce-update): added possibility to save recurrent tokens as a general payment option
* [Layout upgrade](v1.7.1/#layout-upgrade): added Logs tab in Transactions and new filters for payouts
* [New integrations](v1.7.1/#new-integrations): Ecobanq, Hashconnect
* [Bug fixes](v1.7.1/#bug-fixes)

## [v1.6.12 24/01/2020](v1.6.12/)

* [Commerce minor improvement](v1.6.12/#commerce-improvement): added optionality to display transaction context in Return URL
* [Card Gate upgrade](v1.6.12/#card-gate-upgrade): added Features tab to the payment schemes
* [API update](v1.6.12/#api-update): added `context` and `return_urls` objects
* [New integrations](v1.6.12/#new-integrations): Payment Center, paysafecard
* [Performance betterment](v1.6.12/#performance-betterment)

## [v1.6.1 17/01/2020](v1.6.1/)

* [Card Gate Update](v1.6.1/#card-gate-update): added HPP themes' options
* [Layout upgrade](v1.6.1/#layout-upgrade): added new filters for Transactions section
* [New Integrations](v1.6.1/#new-integrations): Cypix, Hashconnect, MuchBetter
* [Performance Improvements](v1.6.1/#performance-improvements)

## [v1.5.21 10/01/2020](v1.5.21/)

* [Payouts' moderation upgrade](v1.5.21/#payouts-moderation-upgrade): added possibility to moderate payouts directly from the dashboard
* [New integrations](v1.5.21/#new-integrations): Paysoft, Cypix
* [Performance improvements](v1.5.21/#performance-improvements)

## [v1.5.16 27/12/2019](v1.5.16/)

* [Creation of the Merchant Portal](v1.5.16/#merchant-portal-tab): internal logic update
* [New integrations](v1.5.16/#new-integrations): Wirecard, Forwardbank, a bunch of refunds' update
* [Performance improvements](v1.5.16/#performance-improvements)

## [v1.5.6 20/12/2019](v1.5.6/)

* [Integration improvements](v1.5.6/#integration-improvements): Epay, Decta, Alfabank
* [Performance improvements](v1.5.6/#performance-improvements)

## [v1.5.2 13/12/2019](v1.5.2/)

* [Card Gate](v1.5.2/#card-gate-update): changed data-handling algorithms for transactions in pending status
* [Merchant App](v1.5.2/#merchant-app-update): updated screens in account settings, finalized Russian and Ukrainian localisations
* [New integration](v1.5.2/#new-integrations): Cypix
* [Performance improvements](v1.5.2/#performance-improvements)

## [v1.5 06/12/2019](v1.5/)

* [Commerce improvements](v1.5/#commerce-improvements): possibilities to moderate payment invoices through the dashboard, and to generate transaction reports monthly, added the turnover limit
* [Card Gate update](v1.5/#card-gate-update): edited Payload object
* [New Integration](v1.5/#new-integration): Dotpay
* [Bug Fixes](v1.5/#bug-fixes)

## [v1.4.45 29/11/2019](v1.4.45/)

* [Test Cards upgrade](v1.4.45/#test-card-upgrade): added possibility to test reconciliation statuses
* [New Integration](v1.4.45/#new-integration): xpate H2H connection
* [Bug Fixes](v1.4.45/#bug-fixes)

## [v1.4.8 22/11/2019](v1.4.8/)

* [Commerce enhancements](v1.4.8/#commerce-enhancements): extended the list of resolutions, added bulk callbacks
* [Merchant App update](v1.4.8/#merchant-app-update): added card data to the payments
* [Integration upgrade](v1.4.8/#integration-upgrade): Twelve.live H2H-connection
* [Bug Fixes](v1.4.8/#bug-fixes)

## [v1.4.4 15/11/2019](v1.4.4/)

* [Card Gate](v1.4.4/#card-gate-update): added the payment retry after declining transaction by the bank-acquirer
* [Merchant App](v1.4.4/#merchant-app-update): added the data export for payments and payouts
* [New integrations](v1.4.4/#new-integrations): Exactly, Twelve.live
* [Performance improvements](v1.4.4/#performance-improvements)

## [v1.4.2 08/11/2019](v1.4.2/)

* [Hosted payment page v2.0](v1.4.2/#hpp-v20): improved and reorganized service
* [Dashboard UX betterment](v1.4.2/#dashboard-ux-betterment): reorganized system of filters
* [Card Gate enhancements](v1.4.2/#card-gate-enhancements): added modifiers to routing schemes, pull statements option, payments by tokens
* [New integrations](v1.4.2/#new-integrations): Ecopays, paysafecard
* [Performance improvements](v1.4.2/#performance-improvements)

## [v1.3.21 01/11/2019](v1.3.21/)

* [Commerce updates](v1.3.21/#commerce-updates): added Merchant Portal's configuration tab, changed callbacks' lifetime
* [Card Gate betterment](v1.3.21/#card-gate-betterment): added possibility to make payouts by card tokens
* [Bug fixes](v1.3.21/#bug-fixes)

## [v1.3.17 25/10/2019](v1.3.17/)

* [Card data tokenization](v1.3.17/#card-data-tokenization): added the possibility to replace sensitive customer data with a token
* [New Integrations](v1.3.17/#integration-upgrade): Wonderlandpay H2H connection, Paymentwall Refunds
* [Performance Improvements](v1.3.17/#performance-improvements): we have successfully improved our products' performance and resolved revealed issues

## [v1.3.14 18/10/2019](v1.3.14/)

* [UX/UI improvements](v1.3.14/#uxui-improvements): reorganised dashboard menu
* [Commerce upgrades](v1.3.14/#commerce-upgrades): additional options in the commerce account settings
* [Integration update](v1.3.14/#integration-upgrade): ePay advanced protocol
* [Bug Fixes](v1.3.14/#performance-betterment-and-bug-fixes).

## [v1.3.12 11/10/2019](v1.3.12/)

* [Commerce improvements](v1.3.12/#commerce-improvements): updated setting up of payments' expiry date
* [New integrations](v1.3.12/#new-integrations): Alfa-Bank Payout gateway, Paymentwall Host-to-host connection
* [Bug Fixes](v1.3.12/#bug-fixes)

## [v1.3.9 04/10/2019](v1.3.9/)

* [System UX Betterment](v1.3.9/#system-ux-betterment): allocated *P2P payments* and *Payment requests*, added search through the routing schemes by name
* [Card Gate Upgrades](v1.3.9/#card-gate-upgrades): added *Payment invoices* tab, Original provider code is attached for card payment's data
* [Integration Improvements](v1.3.9/#integration-improvements): refunds for Tranzzo, Concord Bank and Procard
* [Bug Fixes](v1.3.9/#bug-fixes): we pursue our effort on fighting deficiencies

## [v1.3.4 27/09/2019](v1.3.4/)

* [Data Export](v1.3.4/#data-export): added export tools for Payment and Payout Invoices
* [Integrations' Updates](v1.3.4/#new-integrations): EcoPayz, Alfa-Bank
* [General Improvements and Bug Fixes](v1.3.4/#system-improvements)

## [v1.1.0 20/09/2019](v1.1.0/)

* [Refund Feasibility](v1.1.0/#refund-a-payment): Refund option is available now
* [System Updates](v1.1.0/#system-updates): streamlined routes for sending Description and Descriptor of a payment. Also, added Original Data as expanded data in Callbacks
* [UI/UX Improvements](v1.1.0/#ui-improvements): Setup a theme for Card Gate HPP
* [New Integration](v1.1.0/#new-integration): Mercuryo
* [Bug Fixes](v1.1.0/#bug-fixes)

## [v1.0 13/09/2019](v1.0/)

* [Commerce enhancements](v1.0/#commerce-enhancements): a batch of new events in the *Activity Log* and settings for Payment Retry and Cascading in the Dashboard
* [Card Gate Test environment](v1.0/#test-environment-upgrade): try Test card numbers for payments setup
* [Integrations update](v1.0/#integrations-update): Piastrix improvements
* [Performance betterment and bug fixes](v1.0/#performance-improvements)

## [v0.61.5 (06/09/2019)](v0.61.5/)

* [Commerce upgrade](v0.61.5/#commerce-upgrade): advanced search and new filters for payment and payout screens. Also, additional options of batch payouts were moved to the account settings
* [New integrations and methods](v0.61.5/#new-integrations): UAPay, Piastrix
* [Bug fixes](v0.61.5/#performance-improvements).

## [v0.60.41 (30/08/2019)](v0.60.41/)

* [Payment Retry feature is added](v0.60.41/#payment-retry-feature): to retry incomplete or refused payments without leaving the payment page
* [Commerce improvements](v0.60.41/#dynamic-descriptor): added a dynamic descriptor to the payment
* [Integrations Update](v0.60.41/#integrations-update): supporting new features
* [Bug fixes](v0.60.41/#performance-improvements)

## [v0.60.37 (23/08/2019)](v0.60.37/)

* [Cascading launch](v0.60.37/#cascading-launch): the key technology to support executing transactions through the alternative gateway now available for testing
* [Ledger betterment](v0.60.37/#ledger-betterment): boosted up and optimised processes
* [New integrations](v0.60.37/#new-integrations) with Decta and SafeCharge
* [Bug fixes](v0.60.37/#bug-fixes). A batch of irritating bugs was found and cleared!

## [v0.60.30 (16/08/2019)](v0.60.30/)

* [Analytics boost](v0.60.30/#analytics-boost)
* [Commerce upgrade](v0.60.30/#commerce-upgrade)
* [Card Gate improvements](v0.60.30/#card-gate-improvements)
* [Layout upgrade](v0.60.30/#layout-upgrade)
* [Merchant Portal upgrade](v0.60.30/#merchant-portal-upgrade)
* [New integrations](v0.60.30/#new-integrations)
* [Performance improvements and bug fixes](v0.60.30/#performance-improvements)

## [v0.60.25 (09/08/2019)](v0.60.25/)

* [Global search re-launch](v0.60.25/#global-search-re-launch)
* [Card Gate improvements](v0.60.25/#card-gate-improvements)
* [Commerce upgrade](v0.60.25/#commerce-upgrade)
* [Layout upgrade](v0.60.25/#layout-upgrade)
* [New integrations](v0.60.25/#new-integrations)
* [Performance improvements](v0.60.25/#performance-developments)

## [v0.60 (01/07/2019)](v0.60/)

* Platform-wide search upgrade
* Commerce HPP Released
* CardGate is added to the Dashboard
* New features released
* Layout upgrade
* Merchant Portal application update
* New Integrations
* Bug fixes

## [v0.59 (15/04/2019)](v0.59/)

* Platform-wide search released
* UI/UX updates
* Analytics upgrade
* Merchant Portal application update
* Telegram Bot upgrade
* New Integrations
* Bug fixes

## [v0.58 (23/03/2019)](v0.58/)

* Commerce features changed
* Commerce Public API upgraded
* Operations statuses updated (Payment invoice, Payout invoice, Payment)
* UI upgraded
* Payout batches added
* Accounting upgraded
* New connectors implemented

## [v0.57 (11/03/2019)](v0.57/)

* Batch Payouts API Update
* Merchant SDK.js
* New integration

  * [payeer.com (Payout gateway)](/connectors/payeer)

* Improvements and Bug fixes

## [v0.56 (05/03/2019)](v0.56/)

* New Commerce feature released

  * Commerce Account
  * Contract Scheme
  * Currency Account
  * Ledger
  * Payment and Payout Invoice
  * Deposit, Withdrawal, Transfer

* New UI/UX

  * Navigation reorganised
  * Organisation update
  * User profile update

* New Integrations

  * [cardpay.com](/connectors/cardpay)
  * [dlocal.com](/connectors/dlocal)
  * [payment.center](/connectors/paymentcenter)
  * [paysec.com](/connectors/paysec)
  * [perfectmoney.is](/connectors/perfectmoney)
  * [xpay.com.ua](/connectors/xpayua)

* API updates
* Performance improvements

!!! info
    Read more about [Software Versioning <i class="md-icon">launch</i>](https://semver.org).

!!! question
    We are always here to hear your thoughts, questions, and feedback!

    Send us your thoughts and questions at [support@paycore.io](mailto:support@paycore.io)
