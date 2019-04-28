# Payment Gateway: Payment Requests


## Workflow

[![Payment Request Workflow](images/payment_request_state_diagram.png)](images/payment_request_state_diagram.png)




## Status list

|Code|Final|Description|
| --- | --- | --- |
|created|No|The Payment Request is created|
|expired|Yes|The Payment Request is expired|
|terminated|Yes|The Payment Request is terminated|
|process_pending|No|The payment process is pending. Waiting for a trigger to continue|
|process_failed|Yes|The Payment Request processing is failed|
|process_error|No|An error occurred during the payment request processing. Waiting for the next attempt|
|processed|No|The Payment Request is processed|
|refund_pending|No|The payment refund process is pending. Waiting for a trigger to continue|
|refund_failed|Yes|The Payment Request  process is failed|
|refund_error|No|An error occurred during the payment request refunding process. Waiting for the next attempt|
|refunded|Yes|The Payment Request is refunded|
|charged_back|Yes|The Payment Request is charged back|



## Guide
