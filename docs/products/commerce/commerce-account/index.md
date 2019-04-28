# Commerce Account

## Status

Commerce account status determines its current state. Accordingly, a set of available actions is determined!

### Account status list

Below is a list of statuses and it's descriptions:

|Code|Description|
|--- |--- |
|new|Account was recently created. Business functionality (operations creating) is unavailable|
|active|All functionality is available. No additional moderation is required|
|inactive|Account was deactivated by administrator. All functionality (including the access to the merchant dashboard) is unavailable|
|moderation_requested|Merchant requested moderation of account. Business functionality (operations creating) is unavailable|
|moderation_pending|Account moderation is in progress. Business functionality (operations creating) is unavailable|
|archived|Account was deleted (archived) by administrator. All functionality (including the access to the merchant dashboard) is unavailable|



## General

This entity includes the next sections:

- Accounts list
- Account settings
- Account creating 


## List

Commerce accounts list includes information on merchant  name and logo, contract scheme, creation date and time etc.

There is the functionality to filter list and [create a new](#creating) account.

!!! info "Screenshot"
    [![Commerce Accounts list](images/guide__list1.png)](images/guide__list1.png)


## Settings

Commerce account settings is intended to configure payment and payout gateways for Organisation's  merchants.

All settings are devided into few groups:

- General: 
    - Profile:
    - Currency accounts
    - Contract scheme
    - Integration
- Payments
    - Options
    - Services
- Payouts
    - Options
    - Services
- Testing

### General:

#### Profile

This section is intended for setting (changing) account name, description, logo, status, website etc.

!!! info "Screenshots"
    [![Profile](images/guide__overview1.png)](images/guide__overview1.png)

    [![Profile Edit](images/guide__overview2.png)](images/guide__overview2.png)

#### Currency accounts
    

This page includes the list [currency accounts](/products/commerce/currency-account/overview/) related to certain Commerce Account.
There is an ability to add new or remove unnecessary currencies.

A set of available currencies is limited by a [contract scheme](/products/commerce/contract-scheme/overview/) properties


!!! info "Screenshots"
    [![Currency accounts](images/guide__overview__curracc1.png)](images/guide__overview__curracc1.png)

    [![Currency accounts](images/guide__overview__curracc2.png)](images/guide__overview__curracc2.png)


- If certain currency was added previously ­— it would be disabled in **`Add currency`** selector list.
- If **All** currencies within assigned contract scheme are added, **`Add currency`** button is **`DISABLED`**!

#### Contract scheme

This page displays the contract scheme assigned to certain account. 

It also includes links on the related  Payment and Payout Rate and Routing schemes

There is an ability to **`change`** current contract scheme.

!!! danger
    Changing of the contract scheme is dangerous.
    
    This will affect the further functionality of the account!

!!! info "Screenshot"
    [![Contract scheme](images/guide__overview__contrscheme.png)](images/guide__overview__contrscheme.png)

    
#### Integration

This section contains settings, which determine the external interaction with commerce account.



**KEYS:**

Keys subsection relates to [Commerce Public API](https://swagger-dev.paycore.io/commerce-public/#/). 

 
**`Public`** Keys are used to: 

- initiate pre-requests,

    !!! info
        Pre-request is intended for getting a set of available services (both Payment and Payout) for Invoice initiating 

- to initiate Payment invoice,

    !!! note
        Payout Invoice can be initiated only via **`API key`**

- **`get`** Payment Invoices and Payout Invoice by ID

**`Private`** Keys are used to check the callback's signature.

!!! info "Screenshot"
    [![Keys](images/guide__overview_integration_keys.png)](images/guide__overview_integration_keys.png)


**INTERACTION:**

This subsection contains:

- Callback URL: this property is used as default for Payment and Payout invoices. 

    !!! note
        Although, it is possible to resend callback of certain operation to another URL.

        This is available only via Dashboard (not available via API) in **`Callbacks`** section of Operation Overview page

- Hosted page domain: this property determines at what domain certain commerce account keys can be used.
- HPP Return URL

!!! info "Screenshots"
    [![Interaction](images/guide__overview_integration_interaction_1.png)](images/guide__overview_integration_interaction_1.png)

    [![Interaction](images/guide__overview_integration_interaction_2.png)](images/guide__overview_integration_interaction_2.png)


**API:**

API key relates to [Commerce Private API](https://swagger-dev.paycore.io/commerce/#/).

!!! info
    To authorize the connection **`basic auth`** is used.
    It is generated in the next way: `basic_auth = id + key`

This key is used to authorize:

- access to the Commerce Private API endpoints
- initiating of Payout Invoice 

!!! info "Screenshots"
    [![API access](images/guide__overview_integration_api_access.png)](images/guide__overview_integration_api_access.png)







### Payments


#### Services

This page contains a list of available Payment services (within assigned contract scheme) with information on amount limits, set fee (min-max, rate, fix)

!!! info "Screenshot"
    [![Payment Services](images/guide__overview__payment_services.png)](images/guide__overview__payment_services.png)

#### Options

##### Public Access

- Public Zero-Fee badge
- Public fee details
- Allow public creation (Public Creation)

##### Fee

- Fee strategy
- Include fee

##### Processing

- Lifetime
- Attempts
- Expose internal callback data
- Descriptor

### Payouts


#### Services

This page contains a list of available Payout services (within assigned contract scheme) with information on amount limits, set fee (min-max, rate, fix)

!!! info "Screenshot"
    [![Payout Services](images/guide__overview__payout_services.png)](images/guide__overview__payout_services.png)

#### Options

##### Public Access

- Public Zero-Fee badge
- Public fee details

##### Fee

- Fee strategy
- Include fee

##### Processing
- Parallel mode
- Split mode
- Allow partially
- Moderation required
- Lifetime
- Attempts
- Expose internal callback data
- Descriptor


### Testing




## Creating


## Currency account operations

Comerce operations are devided into 2 groups : Low- and High-level.

Low-level:

!!! info 
    Commerce Low-level operations relates to the **`ledger`** and  are direct operations with balances!

- Deposit — direct replenishment of the currency account
- Withdrawal
- Transfer — operation between two **`currency accounts`**of the same currency and different **`commerce accounts`** (within certain organisation)

!!! note
    To use these operations **`Ledger scheme`** of the certain commerce account must be **`simple`**. 
    
    If it is **`none`** — currency account balances and ledger will be **unavailable**.

    This property is set on the commerce account creation step. 

High-level:

- Payment invoice
- Payout invoice

### Operation Workflow Status
An Operation Status represents it's current state. This property is displayed in the Operation Overview section within the Dashboard. 

Workflow statuses has two  properties: 

- Final
    - Final: means that the operation processing is finished and requires no further processing.
    - Non-final: intermediate states of the workflow and there may be further status updates

- Slepping state

Payment process may also be in the **`sleeping`** state.

These status properties are displayed in the Status Table for each operation type.