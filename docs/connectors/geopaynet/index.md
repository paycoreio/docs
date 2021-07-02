<img src="https://static.openfintech.io/payment_providers/geopaynet/logo.svg?w=400" width="400px" >

# GeoPay

!!! quote ""
    Manage your online assets with GEO Pay

**Website**: [geo-pay.net](https://geo-pay.net/)

**Login**: [partners.geo-pay.net](https://partners.geo-pay.net/)

Follow the guidance for setting up a connection with GeoPay payment service provider.

## Set Up Account

### Step 1: Create an account

Create an account on the [website](https://geo-pay.net/login/#!/sign-up/) or message the GeoPay support team.

### Step 2: Get credentials

Go to the *Profile* section and copy User ID (Hash ID). Then, contact the GeoPay support team to request:

* API key
* Card API token (if you plan on using payouts to cards)

![Step 1](images/geopay-step1.png)
![Step 2](images/geopay-step2.png)

!!! important
    Be sure to check with the manager if you require to provide a white list of IPs, and if so, specify IP addresses from the [Corefy list](/integration/ips/).

## Connect Provider Account

### Step 1. Connect account at the {{custom.company_name}} Dashboard

Press **Connect** at [*GeoPay Provider Overview*]({{custom.dashboard_base_url}}connect-directory/payment-providers/geopaynet/general) page in *'New connection'* and choose **Provider account** option to open Connection form.

![Connect](images/provider-account.png)

Enter credentials:

* API key
* Hash ID
* Card API token (optionally)

!!! success
    You have connected **GeoPay** account!

!!! question "Still looking for help connecting your GeoPay account?"
    <!--email_off-->[Please contact our support team!](mailto:{{custom.support_email}})<!--/email_off-->
