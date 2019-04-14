<img src="https://static.openfintech.io/payment_providers/paymega/logo.svg?w=400" width="400px">

# PayMega Connector

## Introduction

Here You can find  instructions for setting up **Paymega** accounts.

!!! info
     This provider supports **```Merchant```** and **```Provider```** account connection!

## Provider account

### Setup account

#### Step 1: Contact with PayMega Support Manager

!!! info
    This Payment Provoider gives acoount credentials personaly to their merchants!
    
#### Step 2: Get required credentials

- [x]  Account ID
- [x]  Account Password
- [x]  Signature key

!!! success
    You have configured account!
    
### Connect account

#### Step 1: Copy required credentials

#### Step 2: Enter credentials

- [x]  Account ID
- [x]  Account Password
- [x]  Signature key

!!! tip
    Press **```Connect```** at PayMega **```Provider Overview page```** in **```New connection```** section to open Connection form!
    Choose **```Provider```** account type.

!!! tip
    **Don't forget to Save changes to confirm connection!**

!!! info "Screenshot"
    [![Connect](images/paymega_provider-step_connect1.png)](images/paymega_provider-step_connect1.png)
    [![Connect](images/paymega_provider-step_connect2.png)](images/paymega_provider-step_connect2.png)

!!! success
    You have connected **PayMega** **Provider** Account!


## Merchant account


### Setup account

#### Step 1: Log in to <a href="https://my.paymega.eu/" target="_blank" rel="noopener">**PayMega** Merchant Portal</a>

#### Step 2: Create Payment Page

- Go to the **Payment Pages** section
- Press create button

!!! info "Screenshots"
    [![Create](images/merch_acc__payment_page_create1.png)](images/merch_acc__payment_page_create1.png)


#### Step 3: Upgrade  your page to LIVE

!!! tip
    Contact PayMega support manager to upgrade your payment page!

#### Step 4: Get required credentials

- Go to created Page —> General
- Find and copy:
    - [x] **Test** public key
    - [x] **Test** secret key
    - [x] **Live** public key
    - [x] **Live** secret key

#### Step 5: Set up parameters

- Callback URL: ```https://psp-ext.paycore.io/paymega/callback```

!!! info "Screenshots"
    [![SetUp](images/merch_acc__setup.png)](images/merch_acc__setup.png)

!!! success
    You have configured account!
    
### Connect account

#### Step 1: Copy required credentials


#### Step 2: Enter credentials

- [x] **Test** public key
- [x] **Test** secret key
- [x] **Live** public key
- [x] **Live** secret key

!!! tip
    Press **```Connect```** at PayMega **```Provider Overview page```** in **```New connection```** section to open Connection form!
    Choose **```Merchant```** account type.

!!! tip
    **Don't forget to Save changes to confirm connection!**

!!! info "Screenshot"
    [![Connect](images/paymega_merchant-step_connect1.png)](images/paymega_merchant-step_connect1.png)
    [![Connect](images/paymega_merchant-step_connect2.png)](images/paymega_merchant-step_connect2.png)


!!! success
    You have connected **PayMega** **Merchant** Account!