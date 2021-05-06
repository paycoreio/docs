<img src="https://static.openfintech.io/payment_providers/pay2kassa/logo.svg?w=400" width="400px" >

# pay2kassa

**Login**: [pay2kassa.net](https://pay2kassa.net/Account/Login?ReturnUrl=%2f)

Follow the guidance for setting up a connection with pay2kassa payment service provider.

## Set up account

### Step 1: Contact pay2kassa support manager

Send a request, submit the required documents to verify your account and gain access.

### Step 2: Set up an outlet (for payments)

Create a new outlet in your pay2kassa merchant account, go to the *Outlet* settings, and specify the Return URI and a secret key (password) for authorization in Pay API.

### Step 3: Set up a partner account (for payouts)

In your pay2kassa account, find the *Payouts* section and create a new *Partner* account. In the Partner settings, create a new *Settlement organisation* and set its credentials (username and password).

Add several *Individuals* to the same-named module by importing the registry or manually using the form. Perform identification for added Individuals, thus get several successfully identified Individuals in the list.

!!! important
    Be sure to check with the manager if you require to provide a white list of IPs, and if so, specify IP addresses from the [Corefy list](/integration/ips/).

## Connect Merchant Account

### Step 1. Connect account at the {{custom.company_name}} Dashboard

Press **Connect** at [*pay2kassa Provider Overview*]({{custom.dashboard_base_url}}connect-directory/payment-providers/pay2kassa/general) page in *'New connection'* and choose **Merchant account** option to open Connection form.

![Connect](images/merchant-account.png)

Enter credentials:

* Merchant ID
* Outlet ID
* Secret key --> Key

!!! success
    You have connected **pay2kassa** merchant account!

## Connect Provider Account

### Step 1. Connect account at the {{custom.company_name}} Dashboard

Press **Connect** at [*pay2kassa Provider Overview*]({{custom.dashboard_base_url}}connect-directory/payment-providers/pay2kassa/general) page in *'New connection'* and choose **Provider account** option to open Connection form.

![Connect](images/provider-account.png)

Enter credentials:

* Settlement organisation username
* Password

!!! success
    You have connected **pay2kassa** provider account!

!!! question "Still looking for help connecting your pay2kassa account?"
    <!--email_off-->[Please contact our support team!](mailto:{{custom.support_email}})<!--/email_off-->
