<img src="https://static.openfintech.io/payment_providers/ingbankpl/logo.svg?w=400" width="400px">

# ING Bank Poland Connector

## Introduction

Here You can find  instructions for setting up <a href="https://login.ingbank.pl/mojeing/app/#login" target="_blank" rel="noopener">**ING Bank Poland** account</a>!

## Setup account

#### Step 1: Create Shop
-  Go to the "Shops" (Sklepy) section
-  Add new shop (Sklep)

!!! info "Screenshots"
    [![Step 1](images/ingbank-step1_1.png)](images/ingbank-step1_1.png)

    [![Step 1](images/ingbank-step1_2.png)](images/ingbank-step1_2.png)

#### Step 2: Congigure Your shop

- Return to the "Shops" (Sklepy) section
- Open Shop Details (Szczegóły)

!!! info "Screenshot"
    [![Step 2](images/ingbank-step2_1.png)](images/ingbank-step2_1.png)

- Go to the Integration Data (Dane do integracji) Section
- Set "Notification address"(Adres notyfikacji)
    -  ```https://psp-ext.paycore.io/ingbank/callback```

!!! info "Screenshots"
    [![Step 2](images/ingbank-step2_2.png)](images/ingbank-step2_2.png)

    [![Step 2](images/ingbank-step2_3.png)](images/ingbank-step2_3.png)

#### Step 3: Get required parameters:
-  Merchant ID (Identyfikator klienta)
-  Service ID (Identyfikator sklepu)
-  Store key (Klucz sklepu) 

!!! info "Screenshot"
    [![Step 2](images/ingbank-step3.png)](images/ingbank-step3.png)

!!! success
    You are ready to connect!
    
## Connect account

#### Step 1: Copy credentials

-  Merchant ID (Identyfikator klienta)
-  Store ID (Identyfikator sklepu)
-  Store key (Klucz sklepu)

#### Step 2: Enter credentials

-  Merchant ID (Identyfikator klienta)
-  Store ID (Identyfikator sklepu)
-  Store key (Klucz sklepu)

!!! tip
    Press **`Connect`** at ING Bank Poland **`Provider Overview page`** in **`New connection`** section to open Connection form!



!!! info "Screenshot"
    [![Connect](images/ingbank_connect.png)](images/ingbank_connect.png)


!!! success
    You have connected **ING Bank Poland**!