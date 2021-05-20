<img src="https://static.openfintech.io/payment_providers/axcessmerchantservices/logo.png?w=400" width="400px" >

# Axcess Merchant Services

!!! quote ""
    Merchant account solutions to fit your business model. Greater choice, flexibility and bespoke merchant account arrangements.

**Website**: [axcesssms.com](https://www.axcessms.com/)

**Login**: [test.oppwa.com](https://test.oppwa.com/authentication/v1/login)

Follow the guidance for setting up a connection with Axcess Merchant Services payment provider.

## Set Up Account

### Step 1: Contact Axcess Merchant Services support manager

Send a request on the [website](https://www.axcessms.com/) or call the hotline. Submit the required documents to verify your account and gain access.

### Step 2: Get credentials

Credentials that have to be issued:

* entityId
* Authorization Bearer `<access-token>`

You can gain them from your account administrator (or take from the backend UI if you have specific administration rights).

!!! important
    Be sure to check with the manager if you require to provide a white list of IPs, and if so, specify IP addresses from the [Corefy list](/integration/ips/).

<!--
## Connect Provider Account

### Step 1. Connect account at the {{custom.company_name}} Dashboard

Press **Connect** at [*Axcess Merchant Services Provider Overview*]({{custom.dashboard_base_url}}connect-directory/payment-providers/axcessmerchantservices/general) page in *'New connection'* and choose **Provider account** option to open Connection form.

![Connect](images/provider-account.png)

Enter credentials:

[//]: # (Also, select Test or Live mode according to the type of account to connect with Axcess Merchant Services, and P2P mode for connection in  peer-to-peer payment network.)

!!! success
    You have connected **Axcess Merchant Services** account!
-->

## Connect H2H Merchant Account

### Step 1. Connect H2H account at the {{custom.company_name}} Dashboard

Press **Connect** at [*Axcess Merchant Services Provider Overview*]({{custom.dashboard_base_url}}connect-directory/payment-providers/axcessmerchantservices/general) page in *'New connection'* and choose **H2H Merchant account** option to open Connection form.

![Connect](images/h2h-merchant-account.png)

Enter credentials:

* entityId --> Entity ID
* Authorization Bearer `<access-token>` --> Access Token

Choose Save Instant Token option if you plan to use the Axcess account for instant payments.

Select Test or Live mode according to the type of account to connect with Axcess Merchant Services.

Choose Currency and Features. You can set these parameters according to available currencies and features for your Axcess Merchant Services account, but it is necessary to check details of the connection with your {{custom.company_name}} account manager.

!!! success
    You have connected **Axcess Merchant Services** H2H merchant account!

!!! question "Still looking for help connecting your Axcess Merchant Services account?"
    <!--email_off-->[Please contact our support team!](mailto:{{custom.support_email}})<!--/email_off-->
