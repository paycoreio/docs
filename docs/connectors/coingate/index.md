<img src="https://static.openfintech.io/payment_providers/coingate/logo.svg?w=300" width="300px" >

# CoinGate Connector

## Introduction

Here You can find  instructions for setting up [**CoingGate** account](https://coingate.com/account/dashboard)!

## Setup account


#### Step 1: Open Merchant setting

![Step 1](images/coingate-step1.png)

#### Step 2: Create new App
-  GO to the API App section
-  Press "New App" button

![Step 2](images/coingate-step2_1.png)

#### Step 3: Set up parameters

-  Title
-  Add all necessary IP adressess to the White list, including  [PayСore.io white-list IP addresses](/integration/ips/)   
-  Integration URL or Description  as ```{{custom.website_url}}```

![Step 3](images/coingate-step3.png)

!!! info
    **_Invoice Time_**, **_Max % of Order Amount to Cover_**, **_Underpaid Cover %_**, **_Notification_** parameters are set  at your choice!


!!! success
    You have created the API app!
    
## Connect account

#### Step 1: Copy required credentials

-  API key

!!! warning
    Copy the API key straight away after App creation!
    It will be unavailable later!

![Step 1](images/coingate-step4.png)

#### Step 2: Enter credentials

-  API key
-  Currencies to use

!!! tip
    Press **`Connect`** at CoinGate **`Provider Overview page`** in **`New connection`** section to open Connection form!



![Connect](images/coingate_connect.png)


!!! success
    You have connected **CoinGate**!