<img src="https://static.openfintech.io/payment_providers/trustpay/logo.svg?w=400" width="400px" >

# TrustPay

!!! quote ""
    Accept payments worldwide

**Website**: [TrustPay](https://www.trustpay.eu/)

**Login**: [TrustPay](https://ib.trustpay.eu/)

Follow the guidance for setting up a connection with TrustPay payment service provider.

## Set Up Account

### Step 1: Contact TrustPay support manager

Send a request on the [website](https://www.trustpay.eu/) or call the hotline. Submit the required documents to verify your account and gain access.

### Step 2: Get credentials

After verifying your account, TrustPay provides you all required credentials for the merchant authentication:

* Merchant Number (`merNo`)
* Gateway Number (`gatewayNo`)
* Sign Key (`signkey`)

!!! important
    Be sure to check with the manager if you require to provide a white list of IPs, and if so, specify IP addresses from the [Corefy list](/integration/ips/).

## Connect H2H Merchant Account

### Step 1. Connect H2H account at the {{custom.company_name}} Dashboard

Press **Connect** at [*TrustPay Provider Overview*]({{custom.dashboard_base_url}}connect-directory/payment-providers/trustpay/general) page in *'New connection'* and choose **H2H Merchant account** option to open Connection form.

![Connect](images/h2h-merchant-account.png)

Enter credentials:

* Merchant Number
* Gateway Number
* Sign Key

Select Test or Live mode according to the type of account to connect with TrustPay.

Choose Currencies and Features. You can set these parameters according to available currencies and features for your TrustPay account, but it is necessary to check details of the connection with your {{custom.company_name}} account manager.

!!! success
    You have connected **TrustPay** H2H merchant account!

!!! question "Still looking for help connecting your TrustPay account?"
    <!--email_off-->[Please contact our support team!](mailto:{{custom.support_email}})<!--/email_off-->
