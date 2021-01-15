# Payout Invoice

## Workflow

![Payout Invoice Flow](images/payout_invoice_flow.png)

## Status list

Below is a list of statuses and it's descriptions:

|Code|Final|Description|
|--- |--- |--- |
|`created`| |Initial status after a Payout Invoice is created, processing has not started.  If {{custom.company_name}} will not return response 201 (Created) HTTP status code on your request, you should consider that the payout invoice was failed to be created|
|`expired`|✔|Means the Payout Invoice hit the lifetime limit (configurable in the 'Invoice lifetime' property) without being successfully processed, but also did not either cancelled or terminated, e.g. your customer has abandoned the payout|
|`terminated`|✔|Means that the payout process was terminated by a payer prior to the payout invoice lifetime limit|
|`processing`| |Signifies that the payout invoice is processing by {{custom.company_name}} but its processing is not finished and there will be further status updates|
|`process_pending`| |Means that the result of the payout process still being unknown and may not be known for an extended period of time|
|`processed`| |Confirms the payout has been processed successfully.  This isn't a final status since the payout can be canceled for different reasons|
|`partially_processed`| |Means that the actual amount is less than the payout invoice amount and that amount is successfully processed|
|`process_error`| ||
|`process_failed`|✔|Signifies that the Payout Invoice processing has failed, may be set when an error occurs and the corresponding payout request has failed.  This status is considered final due to the maximum number of attempts has been reached (default – 5 attempts)|
|`canceling`| |Means the payout invoice is canceling and the result of the payout invoice canceling still being unknown|
|`cancel_pending`| |Means that the result of the payout canceling still being unknown and may not be known for an extended period of time|
|`partially_canceled`|✔|Means that the amount canceled is less than the payout invoice amount and that amount is successfully canceled.|
|`canceled`|✔|Means the payout invoice is successfully canceled in full|
|`cancel_error`| ||
|`cancel_failed`|✔|Means that the payout invoice canceling has been failed or cannot be completed|