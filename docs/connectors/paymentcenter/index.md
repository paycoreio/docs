<img src="https://static.openfintech.io/payment_providers/paymentcenter/logo.png?w=400" width="400px">

# PaymentCenter Connector

## Introduction

Here You can find  instructions for setting up <a href="https://cabinet.payment.center/login/" target="_blank" rel="noopener">**PaymentCenter**  account</a>.

## Setup account

#### Step 1: Contact with PaymentCenter Support Manager
Get **```Login```** and **```Password```** for <a href="https://cabinet.payment.center/login/" target="_blank" rel="noopener">Your personal account</a>

#### Step 2: Get required credentials

1. Go to the Services
    
    ??? note
        Services are created by PaymentCenter manager!
    
    !!! info "Screenshot"
        [![Services](images/paymentcenter__services1.png)](images/paymentcenter__services1.png)    

2. Find and Copy:
    - [x] **Service ID**


3. Go to the **```Actions list```**

    !!! info "Screenshot"
        [![Actions](images/paymentcenter__actions.png)](images/paymentcenter__actions.png) 

4. Find and Copy:
    - [x] **Secret Key**

    !!! info "Screenshot"
        [![Secret key](images/paymentcenter__secret_key.png)](images/paymentcenter__secret_key.png) 

    ??? Note
        You can set a new one, but ensure that copied key is actual.


#### Step 3: Set up parameters

- Return URL: ```https://psp-ext.paycore.io/paymentcenter/return```
- Callback URL: ```https://psp-ext.paycore.io/paymentcenter/callback```
- Notifications: **```ENABLED```**
- Callback data format : **```JSON```**

    !!! info "Screenshot"
        [![Parameters](images/paymentcenter__paramenters.png)](images/paymentcenter__paramenters.png) 

!!! success
    You have configured account!




## Connect account

#### Step 1: Copy required credentials

 - [x] **Service ID**
 - [x] **Secret Key**

#### Step 2: Enter credentials


!!! tip
    Press **```Connect```** at PaymentCenter **```Provider Overview page```** in **```New connection```** section to open Connection form!


!!! tip
    **Don't forget to Save changes to confirm connection!**

!!! info "Screenshot"
    [![Connect](images/paymentcenter-step_connect.png)](images/paymentcenter-step_connect.png)


!!! success
    You have connected **PaymentCenter**!