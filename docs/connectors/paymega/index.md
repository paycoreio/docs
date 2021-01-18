<img src="https://static.openfintech.io/payment_providers/paymega/logo.svg?w=400" width="400px">

# PayMega Connector

## Introduction

Here You can find  instructions for setting up **Paymega** accounts.

!!! info
     This provider supports **`Merchant`** and **`Provider`** account connection!

## Provider account

### Setup account

#### Step 1: Contact with PayMega Support Manager

This Payment Provoider gives acoount credentials personaly to their merchants!
    
#### Step 2: Get required credentials

-   Account ID
-   Account Password
-   Signature key

!!! success
    You have configured account!
    
### Connect account

#### Step 1: Copy required credentials

#### Step 2: Enter credentials

-   Account ID
-   Account Password
-   Signature key

!!! tip
    Press **`Connect`** at PayMega **`Provider Overview page`** in **`New connection`** section to open Connection form!
    Choose **`Provider`** account type.



![Connect](images/paymega_provider_connect1.png)
    ![Connect](images/paymega_provider_connect2.png)

!!! success
    You have connected **PayMega** **Provider** Account!


## Merchant account


### Setup account

#### Step 1: Log in to [**PayMega** Merchant Portal](https://my.paymega.eu/)

#### Step 2: Create Payment Page

- Go to the **Payment Pages** section
- Press create button

    ![Create](images/merch_acc__payment_page_create1.png)


#### Step 3: Upgrade  your page to LIVE

!!! tip
    Contact PayMega support manager to upgrade your payment page!

#### Step 4: Get required credentials

- Go to created Page —> General
- Find and copy:
    -  **Test** public key
    -  **Test** secret key
    -  **Live** public key
    -  **Live** secret key

#### Step 5: Set up parameters

- Callback URL: ```https://psp-ext.paycore.io/paymega/callback```

    ![SetUp](images/merch_acc__setup.png)

!!! success
    You have configured account!
    
### Connect account

#### Step 1: Copy required credentials


#### Step 2: Enter credentials

-  **Test** public key
-  **Test** secret key
-  **Live** public key
-  **Live** secret key

!!! tip
    Press **`Connect`** at PayMega **`Provider Overview page`** in **`New connection`** section to open Connection form!
    Choose **`Merchant`** account type.



![Connect](images/paymega_merchant_connect1.png)

![Connect](images/paymega_merchant_connect2.png)


!!! success
    You have connected **PayMega** **Merchant** Account!