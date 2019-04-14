# Commerce Operations

## General

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

## Operation Workflow Status
An Operation Status represents it's current state. This property is displayed in the Operation Overview section within the Dashboard. 

Workflow statuses has two  properties: 

- Final
    - Final: means that the operation processing is finished and requires no further processing.
    - Non-final: intermediate states of the workflow and there may be further status updates

- Slepping state

Payment process may also be in the **```sleeping```** state.

!!! info
    **```Sleeping```** means that PayCore.io is waiting for data, interaction with other processes, a user response or any other action.

These status properties are displayed in the Status Table for each operation type.