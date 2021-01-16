<img src="https://static.openfintech.io/payment_providers/paysage/logo.png?w=400" width="400px" >

# PaySage.io

!!! quote ""
    Discover solutions that’ll help you keep up with the evolving payments world.

**Website**: [PaySage.io](https://paysage.io/)

**Login**: [backoffice](https://backoffice.paysage.io/)

Follow the guidance for setting up a connection with *PaySage.io* payment service provider.

## Set Up Account

### Step 1: Contact *PaySage.io* support

Send a request on the [website](https://paysage.io/get-started/). Submit the required documents to verify your account and gain access to the *Backoffice*.

### Step 2: Get credentials

Find them in your backoffice: *Shops* --> *Shop list* --> *Details*

Credentials that have to be issued:

* Shop ID
* Secret key
* Public key

![Shop list](images/shop-list.png)
![Details](images/shop-details.png)
![Secret key](images/secret-key.png)

!!! note "Please note"
    Be aware if you generate new keys in the *PaySage.io* backoffice, you will also should re-connect your account with new credentials in the {{custom.company_name}} dashboard.

## Connect Provider Account

### Step 1. Connect account at the {{custom.company_name}} Dashboard

Press **Connect** at [*PaySage.io Provider Overview*]({{custom.dashboard_base_url}}connect-directory/payment-providers/paysage/general) page in *'New connection'* and choose **Provider account** option to open Connection form.

![Connect](images/provider-account.png)

Enter your credentials and choose Provider URL (*PaySage*).

Also, choose Test Mode for test connection with *PaySage.io*.

!!! success
    Just right: you have connected **PaySage.io** account!

## Connect H2H Merchant Account

### Step 1. Connect H2H account at the {{custom.company_name}} Dashboard

Press **Connect** at [*PaySage.io Provider Overview*]({{custom.dashboard_base_url}}connect-directory/payment-providers/PaySage.io/general) page in *'New connection'* and choose **H2H Merchant account** option to open Connection form.

![Connect](images/h2h-merchant-account.png)

Switch to the Test Mode if you want to test connection with *PaySage.io*.

Enter your credentials and choose Provider URL (*PaySage*).

Choose 3DS mode:

* **simple** if your Merchant's application simply sends customers to Redirect URL for 3DS verification
* **advanced** if your Merchant's application builds a form for customer verification and operates, collects, and stores values of ACS URL, PaReq, Merchant Data (MD), and PaRes URL on your side.

!!! info "Before implementation of the **advanced** 3DS Mode"
    You need to check with your *PaySage.io* account manager if it is available for you.

Finally, choose Currency and Features. You can set these parameters according to available currencies and features for your PaySage.io account, but it is necessary to check details of the connection with your {{custom.company_name}} account manager.

!!! success
    You have connected **PaySage.io** H2H merchant account!

!!! question "Still looking for help connecting your PaySage.io account?"
    [Please contact our support team!](mailto:{{custom.support_email}})
