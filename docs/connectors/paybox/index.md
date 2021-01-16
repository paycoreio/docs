<img src="https://static.openfintech.io/payment_providers/paybox/logo.svg?w=400" width="400px" >

# Paybox Connector

## Introduction

Here You can find  instructions for setting up  [**Paybox** account](https://my.paybox.money/)!

## Setup account

#### Step 1: Connect to PayPox 

-  Submit a questionnaire
-  Verify your documents

#### Step 2: Open Settings

![Step 2](images/paybox-step1.png)

#### Step 3: Go to Merchant section (My markets)

![Step 3](images/paybox-step3.png)



#### Step 4: Configure your merchant

- Set up parameters:
    -  General merchant info
    -  Secret keys
        - For Payout

    ![Step 4](images/paybox-step4.png)

    -  URLs
        - RESULT URL    ```https://psp-ext.paycore.io/paybox/callback```
        - SUCCESS ```https://psp-ext.paycore.io/paybox/return```
        - FAILURE URL ```https://psp-ext.paycore.io/paybox/return```
        
        
    -  REQUEST METHOD ```POST```
    
    ![Step 4](images/paybox-step5.png)

!!! success
    You have configured your account!
    
## Connect account

#### Step 1: Copy required credentials

-  Merchant ID
-  Secret key (_for payout_)

#### Step 2: Enter credentials

-  Merchant ID
-  Secret key (_for payout_)


!!! tip
    Press **`Connect`** at Paybox **`Provider Overview page`** in **`New connection`** section to open Connection form!



![Connect](images/paybox_connect.png)


!!! success
    You have connected **Paybox**!