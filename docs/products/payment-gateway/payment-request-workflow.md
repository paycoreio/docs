# Payment Requests

## Workflow

[![Payment Request Workflow](images/payment_request_state_diagram.png)](images/payment_request_state_diagram.png)

## Status list

| Code            | Final | Description                                                                                  |
|-----------------|-------|----------------------------------------------------------------------------------------------|
| created         |       | The Payment Request is created                                                               |
| expired         | ✔     | The Payment Request is expired                                                               |
| terminated      | ✔     | The Payment Request is terminated                                                            |
| process_pending |       | The payment process is pending. Waiting for a trigger to continue                            |
| process_failed  | ✔     | The Payment Request processing is failed                                                     |
| process_error   |       | An error occurred during the payment request processing. Waiting for the next attempt        |
| processed       |       | The Payment Request is processed                                                             |
| refund_pending  |       | The payment refund process is pending. Waiting for a trigger to continue                     |
| refund_failed   | ✔     | The Payment Request  process is failed                                                       |
| refund_error    |       | An error occurred during the payment request refunding process. Waiting for the next attempt |
| refunded        | ✔     | The Payment Request is refunded                                                              |
| charged_back    | ✔     | The Payment Request is charged back                                                          |