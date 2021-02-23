# Released In 2020

This page contains a historical archive of all release notes for the {{custom.company_name}} updates in 2020.

To view more recent release notes, see the [main page](/release-notes).

You also can follow us for the latest news and updates on [:fontawesome-brands-twitter: @insidecorefy](https://twitter.com/insidecorefy).

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

!!! info ""
    Read more about [Software Versioning :material-launch:](https://semver.org).
