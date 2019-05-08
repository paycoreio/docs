# PayCore.io FAQ

![FAQ](/images/faq.svg)

Here You can find the answers for the most popular questions about interaction and working with PayCore.io!


## Navigation


### Page access: Error 403 Access denied

Ask the organisation administrator to check your permissions. Routing asccess depends on member's access scope


## Operations management


### Operation has incorrect status

Go to the operation Overview page and use "manual statement" functionality

Set parameters according to the valid information from Provider and submit the form (Note: Status, Resolution are REQUIRED fields)


### Operation initiating: Error 403 Access denied

- Commerce operations (Invoices)
    Turn on **`Allow Public creation`** property in the Commerce account settings (Payment or Payout options)


### How to understand that the operation with a certain ID(ref_id) exists or not in PayCore ?

- **201**: Successfuly created
- **4xx**: Creation failed. Check Server responce for details
- **5xx**: Server error, Status is **UNKNOWN**. Need to clarify operation state via API request

Additionaly, Analytics service can be used to get operations by stauses, resolutions or another property 


### Payment Invoice «processed_amount» equivalent to the  «amount»? 

Initiated invoice parameters values:

**`amount`** — initiated amount of invoice (passed in the request)

**`payment_amount`** — value to be paid by customer

**`fee`** — it's a comission from  `payment_amount`

**`deposit`** — amount that should be credited to the account, always less than `payment_amount` by `fee` 

According to the Commerce account fee-settings:

- `payment_amount`=`amount`:
    - [x] fee_strategy:external, reverse_fee:true
    - [ ] fee_strategy:external, reverse_fee:false
    - [ ] fee_strategy:internal, reverse_fee:true
    - [x] fee_strategy:internal, reverse_fee:false
 

- `payment_amount`=`amount`+`fee`:
    - [ ] fee_strategy:external, reverse_fee:true
    - [x] fee_strategy:external, reverse_fee:false
    - [x] fee_strategy:internal, reverse_fee:true
    - [ ] fee_strategy:internal, reverse_fee:false

Values with  `processed` prefix are actual amounts after the payment process:

**`processed_amount`** - amount paid by customer, (can be less than initiated `payment_amount`, that's why we recalculate `fee`)

**`processed_fee`** - `fee` taken from `processed_amount`

**`processed_deposit`** - amount **actually** credited to the account

Primary rules to check amounts are **valid**:

1. `payment_amount` = `deposit` + `fee`
2. `processed_amount` = `processed_fee` + `processed_deposit`
3. `processed_deposit` = `deposit` 
4. `processed_amount` = `payment_amount` 


## Concepts

### Difference between Operation Status and Resolutions

**Status** — describes current state of the operation.

**Resolution** — describes and extends the reason why the operation is in certain status. 


### Resolution: «Ok» and status relates to the ERROR or FAIL group

Status and Resolutions are independent. Each status can be with such resolution. 
 
Resolution «Ok» means that the process occurred in the planned scenario.