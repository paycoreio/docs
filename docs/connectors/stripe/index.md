<img src="https://static.openfintech.io/payment_providers/stripe/logo.svg?w=400" width="400px" >

# Stripe 

> Payments infrastructure for the internet

**Website**: [stripe.com](https://stripe.com/en-gb-us)

**Login**: [dashboard.stripe.com](https://dashboard.stripe.com/login)

Follow the guidance for setting up a connection with the Stripe payment service provider.

## Set Up Account

### Step 1: Register your Stripe account

Start with registration on the [dashboard](https://dashboard.stripe.com/login) or contact the support team. Submit the required documents to verify your account and gain access.

### Step 2: Get credentials

Go to the [API keys](https://dashboard.stripe.com/apikeys) section and copy a publishable and secret key pair for test mode and live mode.

!!! warning ""

    Use only your test API keys for testing and development. This ensures that you don’t accidentally modify your live customers or charges.

!!! important
    Be sure to check with the manager if you require a white list of IPs, and if so, specify IP addresses from the [Corefy list](/integration/ips/).

#### Optional: Get ApplePay registration

If you need to connect ApplePay with Stripe, [complete the requirements](https://developer.apple.com/documentation/pasapple-developer-merchantid-domain-association) and get your Apple Merchant ID. Fill in related Description and Identifier.

!!! tip ""

    ![Completing the requirements](images/applepay.png)

Then verify your {{custom.company_name}} HPP URL to go live using [the Apple Pay settings in the Dashboard](https://dashboard.stripe.com/account/payments/apple_pay), obtain a domain association file, and share it with your {{custom.company_name}} account manager.

!!! note

   You should preliminarily determine the verification details with your {{custom.company_name}} account manager if you plan to use a white-label domain.

## Connect H2H Merchant Account

### Step 1. Connect H2H account at the {{custom.company_name}} Dashboard

Press **Connect** at [*Stripe Provider Overview*]({{custom.dashboard_base_url}}connect-directory/payment-providers/stripe/general) page in *'New connection'* and choose the **H2H Merchant account** option to open Connection form.

![Connect](images/h2h-merchant-account.png)

Enter credentials:

* Publishable key --> Public key
* Secret key --> Private key

Select Test or Live mode according to the type of account to connect with Stripe and in that case, use the Stripe test keys pair.

If you plan Apple Pay using, specify your Apple ID and registered domain and don't forget to set `apple_pay` as a feature.

Toggle the 'Save Instant token' option to use instant payments.

Choose Currencies and Features. You can set these parameters according to available currencies and features for your Stripe account, but it's necessary to verify the details of the connection with your {{custom.company_name}} account manager.

!!! success
    You have connected **Stripe** H2H merchant account!

!!! question "Still looking for help connecting your Stripe account?"
    <!--email_off-->[Please contact our support team!](mailto:{{custom.support_email}})<!--/email_off-->
