<img src="https://static.openfintech.io/payment_providers/test/logo.svg?w=200" width="200px">

# Test Connector

For setting up a connection with the **Test** payment provider, follow the step-by-step instructions below.

## Setup account

You don't need to create an account for Test connector, we have already set up everything for you.

## Connect account

!!! tip
    To open Connection form, go to *New connection* &rarr; *Payment providers*, choose **Test** and press **+ Connect** button at the top right corner of the block.

### Provider account

#### Step 1: Enter credentials

- Account ID

Use any combination of printable characters (letters, digits, punctuation) up to 32 in total.

![Connect](images/test-connect-provider1.png)

#### Step 2. Press **Save**.

!!! success
    That's all! You have connected the **Test** provider account.

### Host-to-host merchant account

#### Step 1. Enter credentials

- External Code

Use any combination of letters and digits (and also hyphen) from 8 to 32 in total.

- Test Currency

Choose one from the dropdown list.

- Features

Optional. Choose one or more features that you need to test.

![Connect](images/test-connect-merchant1.png)

#### Step 2. Press **Save**.

!!! success
    That's all! You have connected the **Test** H2H merchant account.

#### Test Card Numbers

!!! attention
    Remember to use **Test Mode** to process any test transactions.
    ![Retry](images/test-mode.png)

You can use the **Test** H2H merchant account to test Card Gate connection. We prepare a list of credit card numbers that you can submit and check payment status codes. 

| Card number | CVV2 | Expiry date | 3DS |Status code |
|-------------|:---:|:------:|:---:|------|
| 5123817234060000 | any | any | yes | success (`processed`) |
| 5519283812030000 | any | any | no | success (`processed`) |
| 4412397212080000 | any | defined * |  yes | fail (`process_failed`) |
| 4302912837020000 | any | defined * | no |  fail (`process_failed`) |

<!--
\* We have the expiry date code `0777` that 
-->
\* Test different type of responses and Payment Retry function with 'failed' cards and relevant expiry date values:

| Expiry date | Resolution |
|:-------------:|------------|
| `0856` | `access_denied` |
| `0755` | `error` |
| `0654` | `provider_error` |
| `0553` | `unknown` |
| `0452` | `duplicated_transaction` |
| `0351` | `auth_fatal_error` |
| `0250` | `unable_to_determine_3ds_enrolment` |
| `0149` | `card_is_3ds_enrolled` |
| `1248` | `card_is_not_3ds_enrolled` |
| `1147` | `issuer_decline` |
| `1046` |  `client_auth_failed` |
| `0945` | `provider_fatal_error` |
| `0844` | `invalid_details` |
| `0743` |  `invalid_pin` |
| `0642` | `antifraud_error` |
| `0541` | `invalid_card` |
| `0440` | `fatal_error` |
| `0339` | `unable_to_reconcile` |
| `0238` | `invalid_amount` |
| `0137` | `limit_violation` |
| `1236` | `functionality_is_not_permitted` |
| `1135` | `invalid_request` |
| `1034` | `lost_or_stolen_card` |
| `0933` | `declined` |
| `0832` | `invalid_otp` |
| `0731` | `invalid_3ds_code` |
| `0630` | `invalid_card_status` |
| `0529` | `insufficient_funds` |
| `0428` | `card_expired` |
| `0327` | `invalid_cvv` |
| `0226` | `invalid_pan` |
| `0125` | `invalid_credentials` |

![Retry](images/retry.png)