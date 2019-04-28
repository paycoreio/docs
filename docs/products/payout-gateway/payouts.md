# Payout Gateway: Payouts

## General

**Payout** — refers to the financial return or monetary disbursement of investment or annuity.


## Workflow

!!! info "Workflow State diagram"
    [![Payout Workflow](images/payout_state_diagram.png)](images/payout_state_diagram.png)

   


## Payout status

!!! info "Definition"
    **Payout status** —  is a property, based on which it can be unambiguously stated at what stage the payout is. 

Payout Statuses are divided into **`TWO`** groups _in the context of their level of completion_.

- **`Final`** : means, that current status is the last (**_in current flow_**)
- **`Intermediate`**: means, that paycout can go into another state after current

|Code|Final|Description|
| --- | --- | --- |
|CREATE_FAILED|Yes|Payout was not created. Using for Pauout Request section|
|CREATED|No|Payout was successfuly created|
|READY|No|Payout is ready to be processed.Depending on the autoprocess field value payout waits command for processing (autoprocess is  TRUE) or manual processing (autoprocess is  FALSE)|
|TERMINATED|Yes|User refused the entering of additional information and finished the payout|
|EXPIRED|Yes|Payout operation is expired|
|INVOKING|No|Payout is registered by payment provider|
|INVOKE_FAILED|Yes|Failed to register a payout on the side of payment provider|
|PROCESSING|No|Payout is processing by payment provider|
|PENDING|No|Payout was created by payment provider and is waiting for resolution|
|PROCESSED|No|Payout was successfuly processed|
|PARTIALLY_PROCESSED|No|Payout was successfuly processed with part of amount|
|PROCESS_FAILED|Yes|Payment provider could not process the transaction|
|CANCELLING|No|Payout is cancelling|
|CANCELLED|Yes|Payout was cancelled|
|CANCEL_FAILED|Yes|Payout cancelling faliled|
|REVOKING|No|Payout is revoking|
|REVOKED|Yes|Payout was revoked|
|REVOKE_FAILED|Yes|Payout revoke failed|





## Payout Resolution


**Payout resolution** - the status of the request to the API of the payment provider and, in general, can be **successful** (**`OK`**) or **not successful** (for example, **`INVALID_REQUEST`**, **`FORBIDDEN_IP`**, **`SIGNATURE_ERROR`**), 
    

The resolution explains why the payout is in this status and, in fact, is the code (or group of codes) of the error that occurred when requesting the payment provider API.








<table border="1px">

<tr><th><b>Code</b></th><th><b>Description</b></th><th><b>Comment</b></th></tr>

<tr ><td style="background-color:#79f99b;text-align: center;" colspan=3 ><b>OK GROUP</b></td></tr>
<tr ><td style="background-color:#79f99b"><b>OK</b></td><td>Request completed successfully</td><td></td></tr>


<tr ><td style="background-color:#edffb3; text-align: center;" colspan=3 ><b>ERROR GROUP</b><br><i> (not final resolution, needed to determining)</i></td></tr>
<tr ><td style="background-color:#edffb3"><b>CONNECTION_ERROR</b></td><td>Transport level error</td><td>Invalid SSL certificate, HTTP 5**, 4**, 3** <br>(<b>NOT 200</b>)</td></tr>
<tr ><td style="background-color:#edffb3"><b>PROVIDER_INTERNAL_ERROR</b></td><td>Error on Payment provider side</td><td>For example: INTERNAL_SERVER_ERROR, 500 Internal Server Error</td></tr>
<tr ><td style="background-color:#edffb3"><b>CONNECTION_TIMEOUT_ERROR</b></td><td>Request time limit exceeded</td><td></td></tr>
<tr ><td style="background-color:#edffb3"><b>GENERAL_ERROR</b></td><td>General not critical error</td><td></td></tr>
<tr ><td style="background-color:#edffb3"><b>UNKNOWN</b></td><td>Any other resolution missing in mapping</td><td></td></tr>

<tr ><td style="background-color:#ff8787; text-align: center;" colspan=3><b>FATAL ERROR GROUP</b><br><i> (final resolution)</i></td></tr>
<tr ><td style="background-color:#ff8787"><b>INVALID_DETAILS</b></td><td>Invalid payout details</td><td></td></tr>
<tr ><td style="background-color:#ff8787"><b>INVALID_REQUEST</b></td><td>The protocol may have changed and/or the extension is outdated</td><td></td></tr>
<tr ><td style="background-color:#ff8787"><b>REQUEST_ERROR</b></td><td>An error occurred while processing the request by the payment provider</td><td> Invalid data passed</td></tr>
<tr ><td style="background-color:#ff8787"><b>INVALID_AMOUNT</b></td><td>Invalid payout amount</td><td>Amount format or route limits violation</td></tr>
<tr ><td style="background-color:#ff8787"><b>INVALID_METHOD</b></td><td>Invalid payout method</td><td></td></tr>
<tr ><td style="background-color:#ff8787"><b>INVALID_CREDENTIALS</b></td><td>Invalid authentication data</td><td></td></tr>
<tr ><td style="background-color:#ff8787"><b>FORBIDDEN_IP</b></td><td>Forbidden IP</td><td> Perhaps you did not register PayCore.io IP addresses in Whitelist</td></tr>
<tr ><td style="background-color:#ff8787"><b>SIGNATURE_ERROR</b></td><td>Signature verification error</td><td>Perhaps key was changed or it is outdated </td></tr>
<tr ><td style="background-color:#ff8787"><b>DUPLICATED_ID</b></td><td>Operation ID already exists</td><td></td></tr>
<tr ><td style="background-color:#ff8787"><b>INSUFFICIENT_FUNDS</b></td><td>Insufficient funds for payout</td><td></td></tr>
<tr ><td style="background-color:#ff8787"><b>ANTIFRAUD_ERROR</b></td><td>Payout did not pass the fraud test</td><td></td></tr>
<tr ><td style="background-color:#ff8787"><b>DECLINED_ERROR</b></td><td>Operation rejected by provider</td><td>Unknown reason</td></tr>
<tr ><td style="background-color:#ff8787"><b>RECIPIENT_NOT_FOUND</b></td><td>Payout Recipient not found</td><td></td></tr>
<tr ><td style="background-color:#ff8787"><b>INVALID_RECIPIENT</b></td><td>Payout Recipient is  invalid or inaccessible</td><td></td></tr>
<tr ><td style="background-color:#ff8787"><b>LIMIT_VIOLATION</b></td><td>Payout limits violation</td><td></td></tr>
<tr ><td style="background-color:#ff8787"><b>INTERNAL_ERROR</b></td><td>System error</td><td>Internal PayCore.io error</td></tr>
<tr ><td style="background-color:#ff8787"><b>ACCESS_ERROR</b></td><td>There are not enough permissions to perform the operation</td><td>Check the configuration in the payment provider</td></tr>
<tr ><td style="background-color:#ff8787"><b>ACCESS_DENIED</b></td><td>User is not authorized to perform these actions</td><td></td></tr>
<tr ><td style="background-color:#ff8787"><b>GENERAL_FATAL_ERROR</b></td><td>Critical error</td><td>Further processing of the operation is meaningless</td></tr>
<tr ><td style="background-color:#ff8787"><b>OPERATION_EXPIRED</b></td><td>Operation is expired</td><td></td></tr>
<tr ><td style="background-color:#ff8787"><b>PROCESSING_ERROR</b></td><td>Processing error</td><td></td></tr>


</table>


!!! warning
    Any resolution from the **`ERROR GROUP`** transfers the payout to the **`moderation required`** state and it **will not be processed** by the processor.

##  Concept Difference

The difference between these concepts lies in the fact that status is a property of the payout, and resolution relates to all sub-operations and has an explanatory meaning of the cause of the error that occurred during the processing of this request.


## Guide
