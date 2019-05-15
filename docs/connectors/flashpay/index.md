<img src="https://static.openfintech.io/payment_providers/flashpay/logo.png?w=400" width="400px" >

# FlashPay Connector

## Introduction

Here You can find  instructions for setting up **FlashPay** account!

## Setup account

#### Step 1: Create provider account

#### Step 2: Generate the key-pair

1. Generate Private key : `openssl genrsa -out priv.key 2048`
2. Get public key: `openssl rsa -in priv.key -out open.key -pubout`

#### Step 3: Contact with Flashpay manager

Ask manager to link public key to your account. 

#### Step 4: Get required credentials

-  Key ID

!!! success
    You are ready to connect!
    
## Connect account

#### Step 1: Copy credentials

-  Key ID
-  Private key

#### Step 2: Enter credentials

-  Key ID
-  Upload your Private key file

!!! tip
    Press **`Connect`** at FlashPay **`Provider Overview page`** in **`New connection`** section to open Connection form!



![Connect](images/flashpay_connect.png)


!!! success
    You have connected **FlashPay**!