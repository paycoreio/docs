<img src="https://static.openfintech.io/payment_providers/anymoney/logo.svg?w=400" width="400px" >

# Any.Money

!!! quote ""
    Comfortable payment service provider with integrated analytical system.

**Website**: [Any.Money](https://any.money/en/)

**Login**: [Any.Money](https://any.money/en/authorization)

Follow the guidance for setting up a connection with Any.Money payment service provider.

## Set Up Account

### Step 1: Create your Any.Money account

Authorise on the [website](https://any.money/en/authorization) and create a Merchant. Configure your personal account.

You can choose the appropriate payment systems right away. Then submit the required documents to verify your account and gain full access.

### Step 2: Get credentials

Credentials that have to be issued:

* Merchant ID
* Signature key

Check the fee strategy type you will use with the account: Internal (a merchant pays the payment fee, the fee isn't displayed for a customer) or External (a customer pays the fee on the checkout page).

!!! important ""
    Be sure to check with the Any.Money manager if you require to provide a white list of IPs, and if so, specify IP addresses from the [Corefy list](/integration/ips/).

## Connect Provider Account

### Step 1. Connect account at the {{custom.company_name}} Dashboard

Press **Connect** at [*Any.Money Provider Overview*]({{custom.dashboard_base_url}}connect-directory/payment-providers/anymoney/general) page in *'New connection'* and choose **Provider account** option to open Connection form.

![Connect](images/provider-account.png)

Enter credentials:

* Merchant ID → Merchant
* Signature key

Choose your fee type: Internal or External according to your Mine.Exchange account settings.

!!! success "Just right"
    You have connected **Any.Money** account!

!!! question "Still looking for help connecting your Any.Money account?"
    <!--email_off-->[Please contact our support team!](mailto:{{custom.support_email}})<!--/email_off-->
