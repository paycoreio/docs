# PayCore.io Release notes 

**PayCore.io** regularly updates the platform and its APIs with **new features**, **bug fixes**, and **performance improvements**. 

This changelog lists releases by date and version number, along with associated changes. 

## [v0.58 (23/03/2019)](v0.58)

* Commerce update

    * Commerce features

        * Fee strategy change
        * **Fee shift IN/OUT** --> **Include fee**
        * Contract services: add ability of **Amount limits** manualy setting
        * Expose internal callback data

    * Commerce Public API

        * Public fee details *(Allows get fee details through Public API)*
        * Public Zero-Fee badge *(Set Zero-fee flag in Pre-request through Public API)*
        * Payment Invoice: Public access *(Allows creation through Public API)*

    * Payment Invoice **Autoprocess** property removed
    * **(IMPORTANT) Operation statuses updated ** (Payment invoice, Payout invoice, Payment)

* UI upgrade

    * Organisation: added "Archived members" filter
    * Payout batches UI
    * Connected accounts

        * Accounts **Reconnect** and **Update** ability
        * Related entities navigation upgraded
        * Provider account: Related accounts counters added at list page. Deposit and Merchant accounts section added at overview page.

* New integration

    * [Skrill (Payment gateway)](/connectors/skrill)
    * [Paymega.eu (Payment gateway)](/connectors/paymega)

## [v0.57 (11/03/2019)](v0.57)

* Batch Payouts API Update
* Merchant SDK.js
* New integration

    * [payeer.com (Payout gateway)](/connectors/payeer)

* Improvements and Bug fixes

## [v0.56 (05/03/2019)](v0.56)

* New Commerce feature released

    * Commerce Account
    * Contract Scheme
    * Currency Account
    * Ledger
    * Payment and Payout Invoice
    * Deposit, Widthrawal, Transfer

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

!!! note
    Read more about [Software Versioning <i class="md-icon">launch</i>](https://semver.org).

!!! info
    We are always here to hear your thoughts, questions, and feedback! 
    
    Send us your thoughts and questions at [support@paycore.io](mailto:support@paycore.io)