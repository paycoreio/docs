<img src="https://static.openfintech.io/payment_providers/test/logo.svg?w=200" width="200px">

# Test Connector

For setting up connection with Test payment provider, follow the step-by-step instructions below.

## Setup account

You don't need to set up account for Test connector, we have already set up everything for you. 

## Connect account

!!! tip
    To open Connection form, go to *New connection* &rarr; *Payment providers*, choose **Test** and press **+ Connect** button at top right corner of the block.

### Provider account

#### Step 1: Enter credentials

- Account ID

Use any combination of printable characters (letters, digits, punctuation) up to 32 in total.

![Connect](images/test-connect-provider1.png)

#### Step 2. Press **Save**.

!!! success
    That's all! You have connected **Test** provider account.

### Host-to-host merchant account

### Step 1. Enter credentials

- External Code

Use any combination of letters and digits (and hyphen if you want) from 8 to 32 in total.

- Test Currency

Choose one from the dropdown list.

- Features

Optional. Choose one or more features that you need to test.

![Connect](images/test-connect-merchant1.png)

#### Step 2. Press **Save**.

!!! success
    That's all! You have connected **Test** H2H merchant account.

#### Test Card Numbers

You can use **Test** H2H merchant account to test Card Gate connection. We prepare list of credit card numbers that you can submit and check payment status codes. 

| Card Number | CVV | Expiry date | 3DS |Status |
|-------------|:---:|:------:|:---:|------|
| 5123817234060000 | any | any | yes| success (`processed`) |
| 5519283812030000 | any | any | no | success (`processed`) |
| 4412397212080000 | any | defined * | 

For `process_failed` status use the card number `` with any CVV code. 
