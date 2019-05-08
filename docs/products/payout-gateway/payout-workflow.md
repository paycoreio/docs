# Payout Gateway: Payouts

## General

**Payout** — refers to the financial return or monetary disbursement of investment or annuity.

## Workflow

![Payout Workflow](images/payout_state_diagram.png)

## Payout status

!!! info "Definition"
    **Payout status** —  is a property, based on which it can be unambiguously stated at what stage the payout is. 

Payout Statuses are divided into **`TWO`** groups _in the context of their level of completion_.

- **`Final`** : means, that current status is the last (**_in current flow_**)
- **`Intermediate`**: means, that paycout can go into another state after current

| Code                  | Final | Description                                                                                                                                                                      |
|-----------------------|-------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `CREATE_FAILED`       | ✔     | Payout was not created. Using for Pauout Request section                                                                                                                         |
| `CREATED`             |       | Payout was successfuly created                                                                                                                                                   |
| `READY`               |       | Payout is ready to be processed.Depending on the autoprocess field value payout waits command for processing (autoprocess is  TRUE) or manual processing (autoprocess is  FALSE) |
| `TERMINATED`          | ✔     | User refused the entering of additional information and finished the payout                                                                                                      |
| `EXPIRED`             | ✔     | Payout operation is expired                                                                                                                                                      |
| `INVOKING`            |       | Payout is registered by payment provider                                                                                                                                         |
| `INVOKE_FAILED`       | ✔     | Failed to register a payout on the side of payment provider                                                                                                                      |
| `PROCESSING`          |       | Payout is processing by payment provider                                                                                                                                         |
| `PENDING`             |       | Payout was created by payment provider and is waiting for resolution                                                                                                             |
| `PROCESSED`           |       | Payout was successfuly processed                                                                                                                                                 |
| `PARTIALLY_PROCESSED` |       | Payout was successfuly processed with part of amount                                                                                                                             |
| `PROCESS_FAILED`      | ✔     | Payment provider could not process the transaction                                                                                                                               |
| `CANCELLING`          |       | Payout is cancelling                                                                                                                                                             |
| `CANCELLED`           | ✔     | Payout was cancelled                                                                                                                                                             |
| `CANCEL_FAILED`       | ✔     | Payout cancelling faliled                                                                                                                                                        |
| `REVOKING`            |       | Payout is revoking                                                                                                                                                               |
| `REVOKED`             | ✔     | Payout was revoked                                                                                                                                                               |
| `REVOKE_FAILED`       | ✔     | Payout revoke failed                                                                                                                                                             |

## Payout Resolution

**Payout resolution** - the status of the request to the API of the payment provider and, in general, can be **successful** (**`OK`**) or **not successful** (for example, **`INVALID_REQUEST`**, **`FORBIDDEN_IP`**, **`SIGNATURE_ERROR`**), 
    
The resolution explains why the payout is in this status and, in fact, is the code (or group of codes) of the error that occurred when requesting the payment provider API.

| Code                        | Description                                                                                                 |
|-----------------------------|-------------------------------------------------------------------------------------------------------------|
| **OK GROUP**                |                                                                                                             |
| `OK`                        | Request completed successfully                                                                              |
| **ERROR GROUP**             | not final resolution, needed to determining                                                                 |
| `CONNECTION_ERROR(NOT 200)` | Transport level error. Example: Invalid SSL certificate, HTTP 5**, 4**, 3**                                 |
| `PROVIDER_INTERNAL_ERROR`   | Error on Payment provider side. For example: 500 Internal Server Error                                      |
| `CONNECTION_TIMEOUT_ERROR`  | Request time limit exceeded                                                                                 |
| `GENERAL_ERROR`             | General not critical error                                                                                  |
| `UNKNOWN`                   | Any other resolution missing in mapping                                                                     |
| **FATAL ERROR GROUP**       | final resolution                                                                                            |
| `INVALID_DETAILS`           | Invalid payout details                                                                                      |
| `INVALID_REQUEST`           | The protocol may have changed and/or the extension is outdated                                              |
| `REQUEST_ERROR`             | An error occurred while processing the request by the payment provider. Invalid data passed.                |
| `INVALID_AMOUNT`            | Invalid payout amount. Amount format or route limits violation.                                             |
| `INVALID_METHOD`            | Invalid payout method                                                                                       |
| `INVALID_CREDENTIALS`       | Invalid authentication data                                                                                 |
| `FORBIDDEN_IP`              | Forbidden IP. Perhaps you did not register PayCore.io IP addresses in Whitelist.                            |
| `SIGNATURE_ERROR`           | Signature verification error. Perhaps key was changed or it is outdated.                                    |
| `DUPLICATED_ID`             | Operation ID already exists                                                                                 |
| `INSUFFICIENT_FUNDS`        | Insufficient funds for payout                                                                               |
| `ANTIFRAUD_ERROR`           | Payout did not pass the fraud test                                                                          |
| `DECLINED_ERROR`            | Operation rejected by provider. Unknown reason.                                                             |
| `RECIPIENT_NOT_FOUND`       | Payout Recipient not found                                                                                  |
| `INVALID_RECIPIENT`         | Payout Recipient is invalid or inaccessible                                                                 |
| `LIMIT_VIOLATION`           | Payout limits violation                                                                                     |
| `INTERNAL_ERROR`            | System error. Internal PayCore.io error.                                                                    |
| `ACCESS_ERROR`              | There are not enough permissions to perform the operation. Check the configuration in the payment provider. |
| `ACCESS_DENIED`             | User is not authorized to perform these actions                                                             |
| `GENERAL_FATAL_ERROR`       | Critical error. Further processing of the operation is meaningless.                                         |
| `OPERATION_EXPIRED`         | Operation is expired                                                                                        |
| `PROCESSING_ERROR`          | Processing error                                                                                            |

!!! warning
    Any resolution from the **`ERROR GROUP`** transfers the payout to the **`moderation required`** state and it **will not be processed** by the processor.

##  Concept Difference

The difference between these concepts lies in the fact that status is a property of the payout, and resolution relates to all sub-operations and has an explanatory meaning of the cause of the error that occurred during the processing of this request.