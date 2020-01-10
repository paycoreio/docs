<img src="https://static.openfintech.io/payment_providers/cypix/logo.svg?w=400" width="400px" >

# Cypix Connector

> Modern payment aggregator for your site.

**Website**: [cypix.ru](https://cypix.ru/)

Follow the instructions for setting up a connection with Cypix payment provider.

## Set up account

### Step 1: Contact Cypix support manager

Send a request on the [Cypix website](https://cypix.ru/) or call the hotline. Submit the required documents to verify your account and gain access.

### Step 2: Get credentials

Credentials that have to be issued:

* accountId — your account Identifier on the Payout Platform side
* serviceApiKey — service identifier for Cypix API
* secret — your unique secret key for signing API requests
* host — API platform domain

## Connect provider account

### Step 1. Connect account at dashboard.paycore.io

Press **Connect** at *Cypix Provider Overview* page in *'New connection'* section and choose **Provider account** option to open Connection form.

![Connect](images/provider-account.png)

Enter credentials:

* accountId --> Account ID
* serviceApiKey --> API Key
* secret --> Secret Key
* host --> Host

Also, choose Test mode for test connection with Cypix.

!!! success
    You have connected **Cypix** account!

## Connect H2H merchant account

### Step 1. Connect account at dashboard.paycore.io

Press **Connect** at *Cypix Provider Overview* page in *'New connection'* section and choose **H2H Merchant account** option to open Connection form.

![Connect](images/h2h-merchant-account.png)

Enter credentials:

* serviceApiKey --> API Key
* secret --> Secret Key
* host --> Host

Choose Test mode for test connection with Cypix. Choose Currency — this parameter is set according to available currencies for your Cypix account.

!!! success
    You have connected **Cypix** H2H merchant account!

!!! question "Still looking for help connecting your Cypix account?"
    [Please contact our support team!](mailto:support@paycore.io)
