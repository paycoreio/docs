<img src="https://static.openfintech.io/payment_providers/paylogic/logo.png?w=400" width="300px">

# Pay-Logic Connector

## Introduction

Here You can find  instructions for setting up **Pay-Logic**  account.

## Setup account

#### Step 1 Create Agent and Point

Contact with Pay-Logic Support Manager to get help with creating. 


#### Step 2: Configure Point

1. Open "Points" section.

2. Go to the Point settings

3. (Optional)  Add all necessary IP adressess to the White list, including  [{{custom.company_name}} white-list IP addresses](/integration/ips/)

4. Generate keys

5. Download Keys

6. Save the configuration.


![Point Config](images/point_configure.png)


#### Step 3: Get required credentials

- **Point ID**
    - Go to the "Points" list and find ID column

    ![Point ID](images/point_id.png)

- **Service ID**
    - Ask Pay-Logic Support Manager for this ID

- **Private Key**
    - Get Private key from Keys archive from **Step 2**

- **Public Key**
    - Get Private key from Keys archive from **Step 2**
    - Encode in **base64**  (_You can use any online service to encode_, for example: [base64encode.org](https://www.base64encode.org/))


!!! success
    You have configured account!




## Connect account

#### Step 1: Copy required credentials


#### Step 2: Enter credentials

- Point ID
- Service ID
- Private Key
- Public Key (base64)

!!! tip
    Press **`Connect`** at Pay-Logic **`Provider Overview page`** in **`New connection`** section to open Connection form!


#### Step 3: Set up additional parameters 

- Test mode

!!! note
    This parameters are set according to your Merchant account type!



![Connect](images/paylogic_connect.png)


!!! success
    You have connected **Pay-Logic**!