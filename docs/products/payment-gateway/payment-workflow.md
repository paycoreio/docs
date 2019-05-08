# Payments

## Payment Workflow

[![Workflow](images/payment_state_diagram.png)](images/payment_state_diagram.png)

## Status list

| Code              | Final | Description                                                                          |
|-------------------|-------|--------------------------------------------------------------------------------------|
| `created`         |       | The Payment is created                                                               |
| `expired`         | ✔     | The Payment is expired                                                               |
| `terminated`      | ✔     | The Payment is terminated                                                            |
| `invoke_pending`  |       | Payment invoke process is pending. Waiting for a trigger to continue                 |
| `invoke_failed`   | ✔     | Payment invoking process is failed                                                   |
| `invoke_error`    |       | An error occurred during the payment invoking. Waiting for the next attempt          |
| `invoked`         |       | The Payment is invoked                                                               |
| `revoke_pending`  |       | Payment revoke process is pending. Waiting for a trigger to continue                 |
| `revoke_failed`   | ✔     | Payment revoke process is failed                                                     |
| `revoke_error`    |       | An error occurred during the payment revoking. Waiting for the next attempt          |
| `revoked`         | ✔     | The Payment is revoked                                                               |
| `process_pending` |       | The payment process is pending. Waiting for a trigger to continue                    |
| `process_failed`  | ✔     | The Payment processing is failed                                                     |
| `process_error`   |       | An error occurred during the payment processing. Waiting for the next attempt        |
| `processed`       |       | The Payment is processed                                                             |
| `refund_pending`  |       | The payment refund process is pending. Waiting for a trigger to continue             |
| `refund_failed`   | ✔     | The Payment  process is failed                                                       |
| `refund_error`    |       | An error occurred during the payment refunding process. Waiting for the next attempt |
| `refunded`        | ✔     | The Payment is refunded                                                              |
| `charged_back`    | ✔     | The Payment is charged back                                                          |