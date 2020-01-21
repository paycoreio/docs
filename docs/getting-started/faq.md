# PayCore.io FAQ

![FAQ](/images/faq.svg)

Here You can find the answers for the most popular questions about interaction and working with PayCore.io!

## Navigation

### Page access: Error 403 Access denied

Ask the organisation administrator to check your permissions. Routing access depends on member's access scope

## Operations management

### Operation has incorrect status

Go to the operation Overview page and use "manual statement" functionality.

Set parameters according to the valid information from Provider and submit the form.

!!! note
    Status and Resolution are REQUIRED fields in this case.

### Operation initiating: Error 403 Access denied

* Commerce operations (Invoices)
    Turn on **`Allow Public creation`** property in the Commerce account settings (Payment or Payout options)

### How to understand that the operation with a certain ID(ref_id) exists or not in PayCore

* **201**: Successfully created
* **4xx**: Creation failed. Check Server response for details
* **5xx**: Server error, Status is **UNKNOWN**. Need to clarify operation state via API request

Additionally, Analytics service can be used to get operations by statuses, resolutions or another property.

### How to Choose Fee Strategy

Used value of the fee is the sum of the *rate fee* (in percentage with two decimal places) and the *fixed fee* (in base currency). Also, it always lies within the *minimum* and *maximum* setpoints (in base currency).

Depending on the commerce account's payment options, PayCore.io platform enables to use of 4 types of fee strategy:

1. Internal strategy and Direct calculation
    - `fee_strategy:internal`, `reverse_fee:false`
2. Internal strategy and Reverse calculation
    - `fee_strategy:internal`, `reverse_fee:true`
3. External Strategy and Direct calculation
    - `fee_strategy:external`, `reverse_fee:false`
4. External strategy and Reverse calculation
    - `fee_strategy:external`, `reverse_fee:true`

Any set of options can be chosen as the preferred, at your discretion.

[Check the different types of fee calculation at Google Spreadsheets -->](https://docs.google.com/spreadsheets/d/1yvQ3kdyuB7S0DbDgqBgdXq_F_YYHDt-qeAtOo7B9kk8/edit#gid=1939885920)

??? info "Into the Details"
    ![Fee parameters](images/fee-routes.png)
    ![Payment](images/payment-options.png)

    And thereby:

    * *Internal* strategy and *Direct* calculation:
        - Paid Amount = Input Amount;
        - Fee = Rate Fee × Input Amount + Fixed Fee;
        - Deposit Amount = Input Amount - Fee;
        - thus:
            <img align="center" src="https://tex.s2cms.ru/svg/%20Deposit%20Amount%20%3D%7BInput%20Amount%5Ctimes(%7B%7B100%5C%25%20-%20Rate%20Fee%7D%20%5Cover%20100%5C%25%7D%7D)%20-%20Fixed%20Fee%7D." alt="Deposit Amount Calculation" height="35px" />
    * *Internal* strategy and *Reverse* calculation:
        - Deposit Amount = Input Amount;
        - Fee = Rate Fee × Paid Amount + Fixed Fee;
        - Paid Amount = Input Amount + Fee;
        - thus:
            <img align="center" src="https://tex.s2cms.ru/svg/Paid%20Amount%20%3D%20%7B%7B(Input%20Amount%20%2B%20Fixed%20Fee)%5Ctimes100%5C%25%7D%20%5Cover%20100%5C%25%20%2B%20Rate%20Fee%7D." alt="Paid Amount Calculation" height="35px" />

    * *External* Strategy and *Direct* calculation:
        - Deposit Amount = Input Amount;
        - Fee = Rate Fee × Input Amount + Fixed Fee;
        - Paid Amount = Input Amount + Fee;
        - thus:
            <img align="center" src="https://tex.s2cms.ru/svg/%20Paid%20Amount%20%3D%7BInput%20Amount%5Ctimes(%7B%7B100%5C%25%20%2B%20Rate%20Fee%7D%20%5Cover%20100%5C%25%7D%7D)%20%2B%20Fixed%20Fee%7D." alt="Paid Amount Calculation" height="35px" />

    * *External* strategy and *Reverse* calculation:
        - Paid Amount = Input Amount;
        - Fee =  Rate Fee × Deposit Amount + Fixed Fee;
        - Deposit Amount = Input Amount - Fee;
        - thus: 
            <img align="center" src="https://tex.s2cms.ru/svg/Deposit%20Amount%20%3D%20%7B%7B(Input%20Amount%20-%20Fixed%20Fee)%5Ctimes100%5C%25%7D%20%5Cover%20100%5C%25%20%2B%20Rate%20Fee%7D." alt="Deposit Amount Calculation" height="35px" />

    where *Input Amount* — `amount` — initiated amount of the invoice;

    *Paid Amount* — `payment_amount` — value to be paid by the customer;

    *Deposit Amount* — `deposit` — amount to be charged to the account, always less than `payment_amount` by `fee`;

    *Fee* — `fee` — current fee amount (don't forget that its value lies within the minimum and maximum setpoints). 

### Difference between Payment Invoice `processed_amount` and `amount`

Values with "processed" prefix are actual amounts upon completion of the payment process:

* `processed_amount` — amount that was paid by the customer (can be less than initiated `payment_amount`, in that case, we recalculate the `fee`)

* `processed_fee` — `fee` that was taken from `processed_amount`

* `processed_deposit` — amount that was charged to the account

Primary rules to validate amounts:

1. `payment_amount` = `deposit` + `fee`
2. `processed_amount` = `processed_fee` + `processed_deposit`
3. `processed_deposit` = `deposit`
4. `processed_amount` = `payment_amount`

    where `payment_amount` — value to be paid by the customer;

    `deposit` — amount to be charged to the account, always less than `payment_amount` by the `fee`;

    `fee` — current fee amount.

## Concepts

### Difference between Operation Status and Resolutions

**Status** — describes current state of the operation.

**Resolution** — describes and extends the reason why the operation is in certain status.

### Resolution: «Ok» and status relates to the ERROR or FAIL group

Status and Resolutions are independent. Each status can be combined with `OK` resolution. It means that the process occurred as the planned scenario.
