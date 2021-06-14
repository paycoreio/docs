<img src="https://static.openfintech.io/payment_providers/leogaming/logo.svg?w=400" width="400px">

# LeoGaming

!!! quote ""
    PAYMENT AND REFILLING OF ONLINE GAMES

**Website**: [LeoGaming](https://leogaming.net/en)

**Login**: [LeoGaming](https://leogaming.net/en/user/)

Follow the guidance to set up a connection with LeoGaming as the payment service provider.

## Set Up Account

### Step 1: Contact LeoGaming support manager

Send a request on the [website](WEBSITE) or call the hotline. Submit the required documents for verification and gain access.

Obtain your Agent and Point ID.

!!! tip ""
    ![Point ID](images/point_id.png)

### Step 2: Configure the point

Log in to the LeoGaming dashboard. In the *Points* section, edit the Point settings:

* add all necessary IP addresses to the White list, including the [{{custom.company_name}} IP list](/integration/ips/);
* generate and download Private and Public keys.

!!! tip ""
    ![Configure the Point](images/point_configure.png)

    Don't forget to save your settings by clicking on the *Save* button.

### Step 3: Check the credentials

Credentials that have to be issued:

* Point ID
* Service ID (request it from your LeoGaming support manager)
* Private key
* Public key

## Connect Provider Account

### Step 1. Connect account at the {{custom.company_name}} Dashboard

Press **Connect** at [*LeoGaming Provider Overview*]({{custom.dashboard_base_url}}connect-directory/payment-providers/leogaming/general) page in *'New connection'* and choose **Provider account** option to open Connection form.

![Connect](images/provider-account.png)

Enter credentials:

* Point ID
* Service ID

Upload Private and Public keys. Toggle the 'Verify' option if you want to verify card requisites before payout processing.

Also, select Test or Live mode according to the type of account to connect with LeoGaming.

!!! success
    You have connected **LeoGaming** account!

!!! question "Still looking for help connecting your LeoGaming account?"
    <!--email_off-->[Please contact our support team!](mailto:{{custom.support_email}})<!--/email_off-->
