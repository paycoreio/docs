<img src="https://static.openfintech.io/payment_providers/paypal/logo.svg?w=400" width="400px">

# PalPal: Connecting account

## Introduction

Here You can find  instructions for setting up <a href="https://developer.paypal.com/" target="_blank" rel="noopener"> **PayPal** account</a>  account.

## Setup account

#### Step 1: Create App

!!! info
     Skip this step if You have already configured it.

- Go to the **```REST API apps```** section
- Press **```Create App```**
- Set **```App Name```** 
- Choose **```Sandbox developer account```**

!!! tip
    Don't forget to confirm creation!


#### Step 2: Get App credentials

- [x] Client ID
- [x] Client Secret

!!! warning
    Ensure that **```Mode Switcher```** has **```Live```** state 

!!! tip
    You can find **```Mode Switcher```** on the upper right.

#### Step 3: Set Up App settings
- Open  **```SANDBOX APP SETTINGS```**
- Set the necessary parameters

!!! tip
    Don't forget to confirm action!

#### Step 4: Create an Account

!!! info
    Skip this step if You have already configured it.


 - Go to the <a href="https://developer.paypal.com/developer/accounts/" target="_blank" rel="noopener">  **Accounts Section**</a> 
 - Press **```Create Account```**
 - Fill creation form

!!! tip
    Don't forget to confirm action!


#### Step 5: Get Account credentials

- Open necessary account
- Go to **```Profile preferences```**
- Choose **```API Credentials```** section 
- Copy credentials:
    
    - [x] SOAP Username
    - [x] SOAP Password
    - [x] Signature

!!! success
    You have configured account!

## Connect account

#### Step 1: Copy required credentials

- [x] Client ID
- [x] Client Secret
- [x] SOAP Username
- [x] SOAP Password
- [x] Signature

#### Step 2: Enter credentials

!!! tip
    Press **```Connect```** at PayPal **```Provider Overview page```** in **```New connection```** section to open Connection form!

#### Step 3: Set additional parameters

- [x] Test mode

!!! info
    **```Test mode```** is set **_according to your PayPal account settings_**!

!!! tip
    **Don't forget to Save changes to confirm connection!**

??? info "Screenshot"
    [![Step 3](images/paypal-step_connect.png)](images/paypal-step_connect.png)


!!! success
    You have connected **PayPal**!