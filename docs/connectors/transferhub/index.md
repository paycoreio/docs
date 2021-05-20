<img src="https://static.openfintech.io/payment_providers/transferhub/logo.svg?w=400" width="400px" >

# TransferHub

Follow the guidance for setting up a connection with TransferHub PSP.

## Set Up Account

### Step 1: Apply for integration

Contact TransferHub support manager, submit the required documents to verify your account, and gain access.

### Step 2: Get credentials

Credentials that have to be issued:

* Your Account ID
* API Key
* Private key &mdash; for Callback X-Signature

!!! important
    Be sure to check with the manager if you require to provide a white list of IPs, and if so, specify IP addresses from the [Corefy list](/integration/ips/).

## Connect Provider Account

### Step 1. Connect account at the {{custom.company_name}} Dashboard

Press **Connect** at [*TransferHub Provider Overview*]({{custom.dashboard_base_url}}connect-directory/payment-providers/transferhub/general) page in *'New connection'* and choose **Provider account** option to open Connection form.

![Connect](images/provider-account.png)

Enter credentials:

* Account ID
* API Key
* Private key

!!! success
    You have connected **TransferHub** account!

## Connect H2H Merchant Account

### Step 1. Connect H2H account at the {{custom.company_name}} Dashboard

Press **Connect** at [*TransferHub Provider Overview*]({{custom.dashboard_base_url}}connect-directory/payment-providers/transferhub/general) page in *'New connection'* and choose **H2H Merchant account** option to open Connection form.

![Connect](images/h2h-merchant-account.png)

Enter credentials:

* Account ID
* API Key
* Private key

Select Test or Live mode according to the type of account to connect with TransferHub.

Choose Currency and Features and check details of the connection with your {{custom.company_name}} account manager.

!!! success
    You have connected **TransferHub** H2H merchant account!

!!! question "Still looking for help connecting your TransferHub account?"
    <!--email_off-->[Please contact our support team!](mailto:{{custom.support_email}})<!--/email_off-->
