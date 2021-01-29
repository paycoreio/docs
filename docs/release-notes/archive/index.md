# Release Notes Archive

This page contains a historical archive of all release notes for {{custom.company_name}} prior to 2021. To view more recent release notes, see the [main page](/release-notes).

## [v1.27 22/12/2020](v1.27/)

* [Increased Metadata limit](v1.27/#metadata-update) up to 20 attributes
* [Batch Payouts Validation Update](v1.27/#batch-payouts-update): the limit number of Base64 characters must not exceed 100,000 in the whole file
* [Card Gate Update](v1.27/#card-gateway-update): sanitised Cardholder DTO
* [And other minor fixes and performance improvements](v1.27/#fixes-and-improvements)

## [v1.26 08/12/2020](v1.26/)

* [Payment Gateway Update](v1.26/#payment-gateway-update): added fields for peer-to-peer options in the *Payment Routes* section
* [Card Gate Updates](v1.26/#card-gate-updates): additional parameters in the Commerce settings, getting browser_info from HPP
* [Receipt Addon](v1.26/#receipt-addon): added the possibility to specify a provider code
* [Bug Fixes](v1.26/#bug-fixes)

## [v1.25 24/11/2020](v1.25/)

* [Card Gate update](v1.25/#card-gate-update): added the `browser_info` object to the API for H2H connections
* [Update of Receipt Addon](v1.25/#receipt-addon): added new types of extensions for EDS keys
* Several [bug fixes](v1.25/#bug-fixes)

## [v1.24 10/11/2020](v1.24/)

* [Payout Request Editing](v1.24/#payout-gateway-update): added possibility to patch payout request options
* [Routing dynamic attributes](v1.24/#card-gate-update)
* Related [bug fixes](v1.24/#bug-fixes)

## [v1.23 27/10/2020](v1.23/)

* [Card Gateway Betterments](v1.23/#card-gateway-betterments): added the OCT flow, MCC and Merchant URL options for commerce accounts, and `restrict_saved_cards` parameter for an invoice creation request
* [Commerce UI update](v1.23/#commerce-ui-update) of commerce service editing
* [Exports' changes](v1.23/#exports-changes): the time of creation and last update of transactions are displayed related to the user's timezone
* Related [bug fixes](v1.23/#bug-fixes).

## [v1.22 16/10/2020](v1.22/)

* [Batch Payouts' Refactoring and Upgrade](v1.22/#batch-payouts-upgrade): added customer attributes to a single batch item
* [Card Gateway Update](v1.22/#card-gate-update): added the possibility to share tokens for the *Remember me* option between your commerce accounts, and transliteration for the Cardholder DTO
* [Minor API Scheme Update](v1.22/#api-update): added the Response URLs object
* [New Functionality](v1.22/#new-addon): addon for registration of financial transactions in  National Bank of Ukraine
* [Minor bug fixes](v1.22/#bug-fixes)

## [v1.21 30/09/2020](v1.21/)

* [Dashboard UX improvements](v1.21/#dashboard-ux-improvements): added cross-links between transaction and request screens, and Request Payload for Payouts
* [Minor bug fixes](v1.21/#bug-fixes)

## [v1.20 15/09/2020](v1.20/)

* [Merchant App Theme Switcher](v1.20/#merchant-app-theme-switcher): added possibility to change Merchant Portal appearance in the settings
* [Card Gate update](v1.20/#card-gate-update): added routing by the client IPs
* [Reports and Exports upgrades](v1.20/#reports-and-exports-upgrades): added a feature to create a custom report from the Reports section, added the Commerce account ID column to the Export spreadsheets
* [Minor bug fixes](v1.20/#bug-fixes)

## [v1.19 01/09/2020](v1.19/)

* [Commerce Update](v1.19/#commerce-update): allowed controlling the refund fee option from the Dashboard
* [Card Gate Update](v1.19/#card-gate-update): added the error message with a hint for payment retry (in case of "bad" routing)
* [Trivial Bug Fixes](v1.19/#bug-fixes)

## [v1.18 19/08/2020](v1.18/)

* [Dashboard UX Improvements](v1.18/#dashboard-ux-improvements): added bulk editing of commerce payment services, started to display transaction source in the Dashboard and the Merchant Portal, improved multiple sorting
* [Card Gate Update](v1.18/#card-gate-update) increased the Card Gate limit of the possible invoice amount up to 1,000,000,000
* [Bug Fixes](v1.18/#bug-fixes)

## [v1.17 04/08/2020](v1.17/)

* [The Refund Fee option](v1.17/#refund-fee-option): added possibility to return refund fee
* [Payout Gateway Updates](v1.17/#payout-gateway-updates): added a routing condition by Metadata, limited payout splitting to 100 parts
* [Card Gate Improvements](v1.17/#card-gate-improvements): put to the general overview all connected features for the Merchant account, added new attributes for payment and payout routings, failover routing for same cards in case of auto-repeatable resolutions
* [HPP Theme Options](v1.17/#additional-checkout-theme-options): increased limit up to 20
* [Reports Update](v1.17/#reports-update): added Reserved amounts and Reserved balances
* [Bug Fixes](v1.17/#bug-fixes)

## [v1.16 07/07/2020](v1.16/)

* [Payout Gateway Updates](v1.16/#payout-gateway-updates): upgraded batch payouts and the added possibility for direct p2p-payouts
* [UX Improvements](v1.16/#ux-improvements): added archiving for routing schemes and multi-sorting for grids
* [White Label URL Addons](v1.16/#white-label-url-addons)
* [Performance Improvements](v1.16/#performance-improvements)

## [v1.15 23/06/2020](v1.15/)

* [Platform UX Enhancements](v1.15/#platform-ux-enhancements): added payloads for Deposit account balances, extra fields to the Payout Overview, the layout sort parameter 'Created', actions for p2p payments, and new fields to the export grids for Deposits, Withdrawals, and Transfers
* [Merchant Application Update](v1.15/#merchant-application-settings-update): added API Key to the configuration
* [Bug Fixes and Stability Improvements](v1.15/#stability-improvements)

## [v1.14 09/06/2020](v1.14/)

* [Commerce Enhancements](v1.14/#commerce-enhancements): added possibility to withhold part of the funds before releasing to the merchant and to include the minimum required balance for the currency account; restrictions on transfers between commerce accounts, and resolutions related to payout schemes usage
* [Merchant Application update](v1.14/#merchant-application-settings-update): added custom roles to account settings and the session limit to Merchant Portal configuration
* [Card Gate Update](v1.14/#card-gate-update): added metadata modifier, a cap limit increase to 100,000 UAH for payouts; ; bank transfers can be used for manual payouts
* [And other minor performance improvements](v1.14/#performance-improvements)

## [v1.13 14/05/2020](v1.13/)

* [Payout Schemes](v1.13/#payout-schemes): improved payout routing
* [Tokenisation process upgrade](v1.13/#tokenisation-process-upgrade): separated two types of tokens
* [Updates for Commerce account management](v1.13/#updates-for-commerce-account-management): functionalities for archiving accounts and for setting up different Return URLs from the dashboard; also, updated Merchant Portal settings
* [Dashboard UX Betterment](v1.13/#dashboard-ux-betterment): a full-text search launch
* [HPP Update](v1.13/#hpp-update): change localisation key
* [Bug Fixes](v1.13/#bug-fixes)

## [v1.12 10/04/2020](v1.12/)

* [Commerce Improvements](v1.12/#commerce-improvements): added Reference ID for Commerce Accounts, Autoprocess and P2P-firstly strategy to the Payouts options, enabled process pending transactions from the Dashboard, added custom favicons for HPP
* [Bug Fixes](v1.12/#bug-fixes)

## [v1.11 25/03/2020](v1.11/)

* [Addons](v1.11/#addons): implemented addons
* [Card Gateway Routing Updates](#card-gateway-routing-updates): added attributes to routing conditions
* [Commerce Update](v1.11/#commerce-update): changed default attempts limit for payouts
* [Performance improvements](v1.11/#performance-improvements)

## [v1.10 11/03/2020](v1.10/)

* [Card Gate upgrade](v1.10/#verify-flow): added flow for card verification
* [Commerce improvements](v1.10/#commerce-improvements): added possibility to set up Callbacks' options, filtered archived currency accounts
* [Dashboard betterment](v1.10/#expanded-transaction-overview): expanded information about payment
* [Performance improvements](v1.10/#performance-improvements)

## [v1.9 28/02/2020](v1.9/)

* [Card Gate update](v1.9/#card-gate-update): added options for merchant accounts
* [Update routing schemes for payouts](v1.9/#update-payout-routes)
* [Performance improvements](v1.9/#performance-improvements) (and bug fixes)

## [v1.8.5 21/02/2020](v1.8.5/)

* [Commerce betterment](v1.8.5/#commerce-betterment) in service settings
* [Bug fixes](v1.8.5/#bug-fixes)

## [v1.8.0 14/02/2020](v1.8.0/)

* [FXRates Updates](v1.8.0/#fxrates-updates): added `System scheme fallback` option and a list of supported currencies
* [Performance improvements](v1.8.0/#performance-improvements)

## [v1.7.6 07/02/2020](v1.7.6/)

* [Card Gate Updates](v1.7.6/#card-gate-updates): add Masterpass and possibility to customize currency exchange
* [Data Export](v1.7.6/#data-export): exports for Deposits, Withdrawals and Transfers
* [Layout Upgrade](v1.7.6/#layout-upgrade): added quick search for accounts
* [Performance improvements](v1.7.6/#performance-improvements)

## [v1.7.1 31/01/2020](v1.7.1/)

* [Commerce update](v1.7.1/#commerce-update): added possibility to save recurrent tokens as a general payment option
* [Layout upgrade](v1.7.1/#layout-upgrade): added Logs tab in Transactions and new filters for payouts
* [Bug fixes](v1.7.1/#bug-fixes)

## [v1.6.12 24/01/2020](v1.6.12/)

* [Commerce minor improvement](v1.6.12/#commerce-improvement): added optionality to display transaction context in Return URL
* [Card Gate upgrade](v1.6.12/#card-gate-upgrade): added Features tab to the payment schemes
* [API update](v1.6.12/#api-update): added `context` and `return_urls` objects
* [Performance betterment](v1.6.12/#performance-betterment)

## [v1.6.1 17/01/2020](v1.6.1/)

* [Card Gate Update](v1.6.1/#card-gate-update): added HPP themes' options
* [Layout upgrade](v1.6.1/#layout-upgrade): added new filters for Transactions section
* [Performance Improvements](v1.6.1/#performance-improvements)

## [v1.5.21 10/01/2020](v1.5.21/)

* [Payouts' moderation upgrade](v1.5.21/#payouts-moderation-upgrade): added possibility to moderate payouts directly from the dashboard
* [Performance improvements](v1.5.21/#performance-improvements)

## [v1.5.16 27/12/2019](v1.5.16/)

* [Creation of the Merchant Portal](v1.5.16/#merchant-portal-tab): internal logic update
* [Performance improvements](v1.5.16/#performance-improvements)

## [v1.5.6 20/12/2019](v1.5.6/)

* [Performance improvements](v1.5.6/#performance-improvements)

## [v1.5.2 13/12/2019](v1.5.2/)

* [Card Gate](v1.5.2/#card-gate-update): changed data-handling algorithms for transactions in pending status
* [Merchant App](v1.5.2/#merchant-app-update): updated screens in account settings, finalized Russian and Ukrainian localisations
* [Performance improvements](v1.5.2/#performance-improvements)

## [v1.5 06/12/2019](v1.5/)

* [Commerce improvements](v1.5/#commerce-improvements): possibilities to moderate payment invoices through the dashboard, and to generate transaction reports monthly, added the turnover limit
* [Card Gate update](v1.5/#card-gate-update): edited Payload object
* [Bug Fixes](v1.5/#bug-fixes)

## [v1.4.45 29/11/2019](v1.4.45/)

* [Test Cards upgrade](v1.4.45/#test-card-upgrade): added possibility to test reconciliation statuses
* [Bug Fixes](v1.4.45/#bug-fixes)

## [v1.4.8 22/11/2019](v1.4.8/)

* [Commerce enhancements](v1.4.8/#commerce-enhancements): extended the list of resolutions, added bulk callbacks
* [Merchant App update](v1.4.8/#merchant-app-update): added card data to the payments
* [Bug Fixes](v1.4.8/#bug-fixes)

## [v1.4.4 15/11/2019](v1.4.4/)

* [Card Gate](v1.4.4/#card-gate-update): added the payment retry after declining transaction by the bank-acquirer
* [Merchant App](v1.4.4/#merchant-app-update): added the data export for payments and payouts
* [Performance improvements](v1.4.4/#performance-improvements)

## [v1.4.2 08/11/2019](v1.4.2/)

* [Hosted payment page v2.0](v1.4.2/#hpp-v20): improved and reorganized service
* [Dashboard UX betterment](v1.4.2/#dashboard-ux-betterment): reorganized system of filters
* [Card Gate enhancements](v1.4.2/#card-gate-enhancements): added modifiers to routing schemes, pull statements option, payments by tokens
* [Performance improvements](v1.4.2/#performance-improvements)

## [v1.3.21 01/11/2019](v1.3.21/)

* [Commerce updates](v1.3.21/#commerce-updates): added Merchant Portal's configuration tab, changed callbacks' lifetime
* [Card Gate betterment](v1.3.21/#card-gate-betterment): added possibility to make payouts by card tokens
* [Bug fixes](v1.3.21/#bug-fixes)

## [v1.3.17 25/10/2019](v1.3.17/)

* [Card data tokenization](v1.3.17/#card-data-tokenization): added the possibility to replace sensitive customer data with a token
* [Performance Improvements](v1.3.17/#performance-improvements): we have successfully improved our products' performance and resolved revealed issues

## [v1.3.14 18/10/2019](v1.3.14/)

* [UX/UI improvements](v1.3.14/#uxui-improvements): reorganised dashboard menu
* [Commerce upgrades](v1.3.14/#commerce-upgrades): additional options in the commerce account settings
* [Bug Fixes](v1.3.14/#performance-betterment-and-bug-fixes).

## [v1.3.12 11/10/2019](v1.3.12/)

* [Commerce improvements](v1.3.12/#commerce-improvements): updated setting up of payments' expiry date
* [Bug Fixes](v1.3.12/#bug-fixes)

## [v1.3.9 04/10/2019](v1.3.9/)

* [System UX Betterment](v1.3.9/#system-ux-betterment): allocated *P2P payments* and *Payment requests*, added search through the routing schemes by name
* [Card Gate Upgrades](v1.3.9/#card-gate-upgrades): added *Payment invoices* tab, Original provider code is attached for card payment's data
* [Bug Fixes](v1.3.9/#bug-fixes): we pursue our effort on fighting deficiencies

## [v1.3.4 27/09/2019](v1.3.4/)

* [Data Export](v1.3.4/#data-export): added export tools for Payment and Payout Invoices
* [General Improvements and Bug Fixes](v1.3.4/#system-improvements)

## [v1.1.0 20/09/2019](v1.1.0/)

* [Refund Feasibility](v1.1.0/#refund-a-payment): Refund option is available now
* [System Updates](v1.1.0/#system-updates): streamlined routes for sending Description and Descriptor of a payment. Also, added Original Data as expanded data in Callbacks
* [UI/UX Improvements](v1.1.0/#ui-improvements): Setup a theme for Card Gate HPP
* [Bug Fixes](v1.1.0/#bug-fixes)

## [v1.0 13/09/2019](v1.0/)

* [Commerce enhancements](v1.0/#commerce-enhancements): a batch of new events in the *Activity Log* and settings for Payment Retry and Cascading in the Dashboard
* [Card Gate Test environment](v1.0/#test-environment-upgrade): try Test card numbers for payments setup
* [Performance betterment and bug fixes](v1.0/#performance-improvements)

## [v0.61.5 (06/09/2019)](v0.61.5/)

* [Commerce upgrade](v0.61.5/#commerce-upgrade): advanced search and new filters for payment and payout screens. Also, additional options of batch payouts were moved to the account settings
* [Bug fixes](v0.61.5/#performance-improvements).

## [v0.60.41 (30/08/2019)](v0.60.41/)

* [Payment Retry feature is added](v0.60.41/#payment-retry-feature): to retry incomplete or refused payments without leaving the payment page
* [Commerce improvements](v0.60.41/#dynamic-descriptor): added a dynamic descriptor to the payment
* [Bug fixes](v0.60.41/#performance-improvements)

## [v0.60.37 (23/08/2019)](v0.60.37/)

* [Cascading launch](v0.60.37/#cascading-launch): the key technology to support executing transactions through the alternative gateway now available for testing
* [Ledger betterment](v0.60.37/#ledger-betterment): boosted up and optimised processes
* [Bug fixes](v0.60.37/#bug-fixes). A batch of irritating bugs was found and cleared!

## [v0.60.30 (16/08/2019)](v0.60.30/)

* [Analytics boost](v0.60.30/#analytics-boost)
* [Commerce upgrade](v0.60.30/#commerce-upgrade)
* [Card Gate improvements](v0.60.30/#card-gate-improvements)
* [Layout upgrade](v0.60.30/#layout-upgrade)
* [Merchant Portal upgrade](v0.60.30/#merchant-portal-upgrade)
* [Performance improvements and bug fixes](v0.60.30/#performance-improvements)

## [v0.60.25 (09/08/2019)](v0.60.25/)

* [Global search re-launch](v0.60.25/#global-search-re-launch)
* [Card Gate improvements](v0.60.25/#card-gate-improvements)
* [Commerce upgrade](v0.60.25/#commerce-upgrade)
* [Layout upgrade](v0.60.25/#layout-upgrade)
* [Performance improvements](v0.60.25/#performance-developments)

## [v0.60 (01/07/2019)](v0.60/)

* Platform-wide search upgrade
* Commerce HPP Released
* CardGate is added to the Dashboard
* New features released
* Layout upgrade
* Merchant Portal application update
* Bug fixes

## [v0.59 (15/04/2019)](v0.59/)

* Platform-wide search released
* UI/UX updates
* Analytics upgrade
* Merchant Portal application update
* Telegram Bot upgrade
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

<!--
* New Integrations

  * [cardpay.com](/connectors/cardpay)
  * [dlocal.com](/connectors/dlocal)
  * [payment.center](/connectors/paymentcenter)
  * [paysec.com](/connectors/paysec)
  * [perfectmoney.is](/connectors/perfectmoney)
  * [xpay.com.ua](/connectors/xpayua)
-->
* API updates
* Performance improvements

!!! info
    Read more about [Software Versioning :material-launch:](https://semver.org).