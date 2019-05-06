# Payments

## Payment Workflow

[![Workflow](images/payment_state_diagram.png)](images/payment_state_diagram.png)

## Status list

|Code           |Final|Description                                                                         |
|---------------|-----|------------------------------------------------------------------------------------|
|created        |No   |The Payment is created                                                              |
|expired        |Yes  |The Payment is expired                                                              |
|terminated     |Yes  |The Payment is terminated                                                           |
|invoke_pending |No   |Payment invoke process is pending. Waiting for a trigger to continue                |
|invoke_failed  |Yes  |Payment invoking process is failed                                                  |
|invoke_error   |No   |An error occurred during the payment invoking. Waiting for the next attempt         |
|invoked        |No   |The Payment is invoked                                                              |
|revoke_pending |No   |Payment revoke process is pending. Waiting for a trigger to continue                |
|revoke_failed  |Yes  |Payment revoke process is failed                                                    |
|revoke_error   |No   |An error occurred during the payment revoking. Waiting for the next attempt         |
|revoked        |Yes  |The Payment is revoked                                                              |
|process_pending|No   |The payment process is pending. Waiting for a trigger to continue                   |
|process_failed |Yes  |The Payment processing is failed                                                    |
|process_error  |No   |An error occurred during the payment processing. Waiting for the next attempt       |
|processed      |No   |The Payment is processed                                                            |
|refund_pending |No   |The payment refund process is pending. Waiting for a trigger to continue            |
|refund_failed  |Yes  |The Payment  process is failed                                                      |
|refund_error   |No   |An error occurred during the payment refunding process. Waiting for the next attempt|
|refunded       |Yes  |The Payment is refunded                                                             |
|charged_back   |Yes  |The Payment is charged back                                                         |