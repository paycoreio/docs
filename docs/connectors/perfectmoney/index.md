<img src="https://static.openfintech.io/payment_providers/perfectmoney/logo.png?w=400" width="400px">

# PerfectMoney Connector

## Introduction

Here You can find  instructions for setting up <a href="https://perfectmoney.is/login.html" target="_blank" rel="noopener"> **PerfectMoney** account</a>.

## Setup account




### Step 1: Open Commerce setting

!!! info "Screenshot"
    [![Verify](images/perfmoney-verify1.png)](images/perfmoney-verify1.png)

### Step 2: Verify your business account

!!! info "Screenshots"
    [![Verify](images/perfmoney-verify2.png)](images/perfmoney-verify2.png)

    [![Verify](images/perfmoney-verify3.png)](images/perfmoney-verify3.png)

!!! tip
    You just need to verify **all documents** and **additional info**, which is necessary for successful setting up an account!

### Step 3: Set up API access

- Go to the **`Settings`**
- Find **`Security`**  section
- Enable **`API access`**
- Add all necessary IP adressess to the White list, including  [PayСore.io white-list IP addresses](/ips/#white-list-ip-addresses)
    
    !!! tip
        IP list should contains IP adresses separated with **`;`**.

        **_For example_**: _54.36.117.30; 51.38.147.254; 54.38.139.222_

!!! info "Screenshots"
    [![Verify](images/api_security1.png)](images/api_security1.png)

    [![Verify](images/api_security2.png)](images/api_security2.png)

    [![Verify](images/api_security3.png)](images/api_security3.png)

    [![Verify](images/api_security4.png)](images/api_security4.png)

### Step 3: Get required credentials

- Return to the Settings

- Find and copy next credential:

    -  Alternate Passphrase (Passphrase)

!!! info "Screenshot"
    [![Verify](images/cred3.png)](images/cred3.png)

- Go to the **`Public Account Information`**

- Press **`Change Public Account Information settings`**

- Find and copy next credential:

    -  Member ID (Account ID)

!!! info "Screenshot"
    [![Verify](images/cred1.png)](images/cred1.png)

    [![Verify](images/cred2.png)](images/cred2.png)
 
## Connect account

### Step 1: Copy required credentials

-  Account ID

-  Passphrase

-  Merchant Account Password
    
    !!! info
        **`Merchant Account Password`** - is the password, you use to Sign in to the <a href="https://perfectmoney.is/login.html" target="_blank" rel="noopener">PerfectMoney Dashboard</a>

### Step 2: Enter credentials

!!! tip
    Press **`Connect`** at PerfectMoney **`Provider Overview page`** in **`New connection`** section to open Connection form!




!!! info "Screenshot"
    [![Connect](images/perfectmoney_connect.png)](images/perfectmoney_connect.png)


!!! success
    You have connected **PerfectMoney**!