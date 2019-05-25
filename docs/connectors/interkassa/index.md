<img src="https://static.openfintech.io/payment_providers/interkassa/logo.svg?w=400" width="400px" >

# Interkassa Connector

## Introduction

Here You can find  instructions for setting up [**Interkassa** account](https://www.interkassa.com)!


## Setup account

#### Step 1: Configure API 
- Open "Personal Data Settings"

![Step 1](images/interkassa-step1.png)

- Go to the API section
- Set up parameters:
    -  Add all necessary IP adressess to the White list, including  [PayСore.io white-list IP addresses](/ips/#white-list-ip-addresses)
    -  "Turn ON" API

![Step 1](images/interkassa-step1_1.png)


 - Get required account parameters:   
   
    -  User ID
    -  API key 

    !!! note
        You may generate **`New API key`**!
    
    !!! warning
        **Be careful!** Before generating **`New API key`** ensure that **`Existing API key`** is **NOT** used somewhere else.

- Save changes
#### Step 2: Create Checkout

-  Ensure You are at **Checkout mode**
    
    ![Step 2](images/interkassa-step2.png)

-  Create new checkout
    
    ![Step 2](images/interkassa-step2_1.png)

-  Set up  Site URL as ```https://paycore.io```
      
    ![Step 2](images/interkassa-step2_2.png)

#### Step 3: Configure Checkout

- Open **_Checkout Settings_**

    ![Step 3](images/interkassa-step3_1.png)

- Go to **_Payment Settings_** and set **Check the uniqueness of payments** to **`Enabled`**
   
    ![Step 3](images/interkassa-step3_2_1.png)

- Go to **_Paysystems_** and activate **at least 1** paysystem

    ![Step 3](images/interkassa-step3_2.png)

- Go to  **_Interface_** and ensure that  **`allow override in request`** under **`Interaction URL`** option is **`ENABLED`**

- Go to **_Security_** and set up parameters:
    -  Sign algorithm only **`SHA256`**
    -  Require sign in payment form  **`Enabled`**

    ![Step 3](images/interkassa-step3_3.png)

- Get required checkout parameters
    
    -  Checkout ID
    -  Sign key
    -  Test key
    
        ![Step 3](images/interkassa-step3_4.png)
        
        ![Step 3](images/interkassa-step3_5.png)

!!! success
    You have configured your account!
    
## Connect account

#### Step 1: Copy required credentials

-  User ID
-  API Key
-  Checkout ID
-  Sign key
-  Test key

#### Step 2: Enter credentials

-  User ID
-  API Key
-  Checkout ID
-  Sign key
-  Test key

!!! tip
    Press **`Connect`** at Interkassa **`Provider Overview page`** in **`New connection`** section to open Connection form!



![Connect](images/interkassa_connect.png)


!!! success
    You have connected **Interkassa**!