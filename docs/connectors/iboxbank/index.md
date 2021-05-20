<img src="https://static.openfintech.io/payment_providers/iboxbank/logo.png?w=400" width="400px" >

# Ibox Bank

**Website**: [iboxbank.online](https://iboxbank.online/ua/)

**Login**: [clb.iboxbank.online](https://clb.iboxbank.online:7002/ifobsClient/LoginShow.action?localeName=en)

Follow the guidance for setting up a connection with Ibox Bank as a payment service provider.

## Set Up Account

### Step 1: Contact Ibox Bank support manager

Send a request on the [website](https://iboxbank.online/ua/open-account) or call the [hotline](tel:0800500178). Submit the required documents to verify your account and gain access to the system processing centre.

### Step 2: Get credentials

Credentials that have to be issued from your Ibox Bank account manager:

* Merchant ID
* Point ID
* Service ID
* Public IboxBank Key

Upon registration with the system you will be able to create the necessary quantity of payment points and generate Private keys for each points.

???+ hint
    ![Create a new Point](images/point-creation.png)
    ![Private Key](images/private-key-generation.png)

After key generation, you can download it in the point's settings:
![Download](images/download-private-key.png)

#### Optional: Google Pay registration

To connect Google Pay, you should share to the Google Pay service a list of fully qualified domains, including subdomains, from which you intend to call the Google Pay API. Check this list with your account manager and add the {{custom.company_name}} domain URLs if necessary.

#### Optional: Apple Pay registration

To connect ApplePay, you may use your own Apple Merchant identifier or request the Ibox Bank support team to provide:

* ApplePay Merchant ID
* ApplePay certificate (`server.pem`)
* ApplePay certificate key (`server.key`)

You should also share a domain URL and a domain association file for the merchant ID verification with your {{custom.company_name}} account manager.

## Connect Provider Account

### Step 1. Connect account at the {{custom.company_name}} Dashboard

Press **Connect** at [*Ibox Bank Provider Overview*]({{custom.dashboard_base_url}}connect-directory/payment-providers/iboxbank/general) page in *'New connection'* and choose **Provider account** option to open Connection form.

![Connect](images/provider-account.png)

Enter credentials:

* Point ID
* Service ID

!!! attention "Please be aware"
    You should connect each point and each available service separately.

Upload files with related Public IboxBank key and Private payment point key.

Toggle the 'Card verification' option if you want to verify card requisites before payout processing.

Also, select Test or Live mode according to the type of account to connect with Ibox Bank.

!!! success
    You have connected **Ibox Bank** account!

## Connect H2H Merchant Account

### Step 1. Connect H2H account at the {{custom.company_name}} Dashboard

Press **Connect** at [*Ibox Bank Provider Overview*]({{custom.dashboard_base_url}}connect-directory/payment-providers/iboxbank/general) page in *'New connection'* and choose **H2H Merchant account** option to open Connection form.

![Connect](images/h2h-merchant-account.png)

Enter your Merchant ID and upload files with the Public IboxBank key and Private payment point key. 

!!! tip "Plan to use Google Pay?"

    Specify your Google Pay Merchant ID, and be sure you define `google_pay` as a feature in the relevant field.

!!! tip "Plan to use Apple Pay?"

    Specify the Apple Pay Merchant ID and upload files with the certificate (`server.pem`) and the certificate key (`server.key`). And be sure you define `apple_pay` as a feature in the relevant field.

Select Test or Live mode according to the type of account to connect with Ibox Bank.

Choose Currency and Features. You can set these parameters according to available currencies and features for your Ibox Bank account, but it's necessary to check details of the connection with your {{custom.company_name}} account manager.

!!! success
    You have connected **Ibox Bank** H2H merchant account!

!!! question "Still looking for help connecting your Ibox Bank account?"
    [Please contact our support team!](mailto:{{custom.support_email}})
