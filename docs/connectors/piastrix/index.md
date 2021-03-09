<img src="https://static.openfintech.io/payment_providers/piastrix/logo.svg?w=400" width="400px">

# Piastrix Connector

## Introduction

Here You can find  instructions for setting up **Piastrix**  account.


## Payment Gateway

### Setup account

#### Step 1 Create shop

1. Switch to the API mode
2. Open Shop section
3. Create New shop

![Create](images/shop_create_1.png)




#### Step 3: Set required parameters

- Notification URL ```https://psp-ext.paycore.io/piastrix/callback```
- Success URL ```https://psp-ext.paycore.io/piastrix/return```
- Failed URL ```https://psp-ext.paycore.io/piastrix/return```
- Check uniqueness of payments : TRUE


![Create](images/shop_create_2.png)

!!! success
    You have configured account!

#### Step 4: Get required credentials

- Shop ID

    - Go tu the shop list
    - Find Shop ID in the table

![ShopID](images/shop_id.png)

- Secret Key
    
    - Go to the Security settings
    - Set new or get exists key
    - Add all necessary IP adressess to the White list, including  [{{custom.company_name}} white-list IP addresses](/integration/ips/)

![Secret](images/security_1.png)

![Secret](images/security_2.png)

- Project ID (**Only for Aggregators**): ask Piastrix manager for this ID





### Connect account

#### Step 1: Copy required credentials


#### Step 2: Enter credentials

- Project ID (**Only for Aggregators**)
- Secret Key
- Shop ID

!!! tip
    Press **`Connect`** at Piastrix **`Provider Overview page`** in **`New connection`** section to open Connection form!



![Connect](images/piastrix_connect.png)


!!! success
    You have connected **Piastrix**!