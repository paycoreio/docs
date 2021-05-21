# {{custom.company_name}} Changelog

## Release Notes

[{{custom.company_name}}]({{custom.website_url}}) follows [Semantic Versioning](https://semver.org/) and regularly updates the platform and its APIs. You can periodically check this page to keep abreast of new or updated features, bug fixes, known issues, and deprecated functionality.

This changelog lists releases by date and version number along with associated changes.

### [May 13, 2021 (versions 1.65, 1.64, 1.63, 1.62, 1.61, 1.60, 1.59, 1.58, 1.57, 1.56, 1.55, & 1.54)](v1.54-1.65/)

* [Commerce updates](v1.54-1.65/#commerce-updates): expanded access settings for commerce accounts and operations, added `merchant_profile` object to the Commerce settings and request creation and options to control Saved cards access scope
* [Connectors Hub update](v1.54-1.65/#connectors-hub-update): updated the Callback handler, added `payouts` array to Callback for payouts processing, added the Deposit account option for preventing finalising payout transactions with failure resolutions
* [Card Gateway update](v1.54-1.65/#card-gate-update): added modifier by card status to Payment schemes
* [Reports optimising](v1.54-1.65/#reports-optimising)
* [Receipt Addon update](v1.54-1.65/#addons-update): receipts generating for Payout invoices

### [April 2, 2021 (versions 1.53, 1.52, 1.51, 1.50, 1.49, 1.48, 1.47, 1.46, 1.45, & 1.44)](v1.44-1.53/)

* [Processing supplements](v1.44-1.53/#processing-supplements): added partial statuses for payments' refunds and chargebacks, and an option to skip the verify stage on payouts
* [Card Gate](v1.44-1.53/#card-gate-update): added possibility to update features for connected merchant accounts in the Dashboard
* [Merchant Portal](v1.44-1.53/#merchant-portal-updates): configuration and exports updates
* [Performance improvements](v1.44-1.53/#performance-improvements)

### [March 3, 2021 (versions 1.44, 1.43, 1.42, 1.41, 1.40, 1.39, 1.38, & 1.37)](v1.37-1.44/)

* [Payout Gateway update](v1.37-1.44/#payout-gateway-update): added possibility to resolve statement conflict from the Dashboard
* [Extend Export Data Files](v1.37-1.44/#extended-export-data-files) and add new fields
* Update [Addons](v1.37-1.44/#addons-editing): add editing option
* [Performance Improvements](v1.37-1.44/#performance-improvements)

### [February 6, 2021 (versions 1.36, 1.35, 1.34, 1.33, 1.32, 1.31, 1.30, & 1.29)](v1.36-1.29/)

* [Payment Gateway updates](v1.36-1.29/#payment-gateway-updates): added fee set for chargebacks to Commerce payment services' options and Provider Reference ID parameter to payment flow
* [Card Gateway update](v1.36-1.29/#card-gateway-updates): security updates, increased HPP theme options limit, updated `browser_ip` regular expression to support IPv4 and IPv6 addresses
* And other platform performance improvements

### [January 5, 2021 (v1.28)](v1.28/)

* [Payout Schemes optimisation](v1.28/#payout-schemes-update): at payout splitting, the system examines routes' limits and remaining amounts for each following parts
* [Manual card transaction handling](v1.28/#card-gate-update)
* [Other fixes and improvements](v1.28/#fixes-and-improvements)

## Other resources

To view release notes for versions prior to 2021, see the [2020](archive/2020) and [2019](archive/2019) archive pages.

You also can follow us for the latest news and updates on [:fontawesome-brands-twitter: @insidecorefy](https://twitter.com/insidecorefy).

<!--

## Documentation Changelog

We are improving our documentation day by day, so add to the list only significant changes, news, articles, and sections (starting with version 1.30).

-->

!!! question
    We are always here to hear your thoughts, questions, and feedback!

    Send us your questions and suggestions at <!--email_off-->[{{custom.support_email}}](mailto:{{custom.support_email}})<!--/email_off-->.
