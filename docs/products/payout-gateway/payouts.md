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

<table border="1px">

<tr ><th><b>Code</b></th><th><b>Final</b></th><th><b>Sleeping State</b></th><th><b>Description</b></th></tr>

<tr style="background-color:#ff8787"><td>CREATE_FAILED</td><td><b>Yes</b></td><td>No</td><td>Payout was not created. Using for Pauout Request section</td></tr>
<tr><td>CREATED</td><td>No</td><td>No</td><td>Payout was successfuly created</td></tr>
<tr><td>READY</td><td>No</td><td><b>Yes</b></td><td>Payout is ready to be processed.Depending on the <b>autoprocess</b> field value payout waits command for processing (<b>autoprocess</b> is  <b>TRUE</b>) or manual processing (<b>autoprocess</b> is  <b>FALSE</b>)</td></tr>
<tr style="background-color:#ff8787"><td>TERMINATED</td><td><b>Yes</b></td><td>No</td><td>User refused the entering of additional information and finished the payout</td></tr>
<tr style="background-color:#ff8787"><td>EXPIRED</td><td><b>Yes</b></td><td>No</td><td>Payout operation is expired</td></tr>
<tr><td>INVOKING</td><td>No</td><td><b>Yes</b></td><td>Payout is registered by payment provider</td></tr>
<tr style="background-color:#ff8787"><td>INVOKE_FAILED</td><td><b>Yes</b></td><td>No</td><td>Failed to register a payout on the side of payment provider</td></tr>
<tr><td>PROCESSING</td><td>No</td><td><b>Yes</b></td><td>Payout is processing by payment provider</td></tr>
<tr><td>PENDING</td><td>No</td><td><b>Yes</b></td><td>Payout was created by payment provider and is waiting for resolution</td></tr>
<tr style="background-color:#79f99b"><td>PROCESSED</td><td>No</td><td>No</td><td>Payout was successfuly processed</td></tr>
<tr style="background-color:#79f99b"><td>PARTIALLY_PROCESSED</td><td>No</td><td><b>Yes</b></td><td>Payout was successfuly processed with part of amount</td></tr>
<tr style="background-color:#ff8787"><td>PROCESS_FAILED</td><td><b>Yes</b></td><td>No</td><td>Payment provider could not process the transaction</td></tr>
<tr><td>CANCELLING</td><td>No</td><td><b>Yes</b></td><td> Payout is cancelling</td></tr>
<tr><td>CANCELLED</td><td><b>Yes</b></td><td>No</td><td>Payout was cancelled</td></tr>
<tr style="background-color:#ff8787"><td>CANCEL_FAILED</td><td><b>Yes</b></td><td>No</td><td>Payout cancelling faliled</td></tr>
<tr><td>REVOKING</td><td>No</td><td><b>Yes</b></td><td>Payout is revoking</td></tr>
<tr><td>REVOKED</td><td><b>Yes</b></td><td>No</td><td>Payout was revoked</td></tr>
<tr style="background-color:#ff8787"><td>REVOKE_FAILED</td><td><b>Yes</b></td><td>No</td><td>Payout revoke failed</td></tr>


</table>




## Payout Resolution


**Payout resolution** - the status of the request to the API of the payment provider and, in general, can be **successful** (**`OK`**) or **not successful** (for example, **`INVALID_REQUEST`**, **`FORBIDDEN_IP`**, **`SIGNATURE_ERROR`**), 
    

The resolution explains why the payout is in this status and, in fact, is the code (or group of codes) of the error that occurred when requesting the payment provider API.








<table border="1px">

<tr ><th><b>Code</b></th><th><b>Description</b></th><th><b>Comment</b></th></tr>

<tr style="background-color:#79f99b;"><td colspan=3 style="text-align: center;"><b>OK GROUP</b></td></tr>
<tr style="background-color:#79f99b"><td><b>OK</b></td><td>Request completed successfully</td><td></td></tr>


<tr style="background-color:#edffb3;"><td colspan=3 style="text-align: center;"><b>ERROR GROUP</b><br><i> (not final resolution, needed to determining)</i></td></tr>
<tr style="background-color:#edffb3"><td><b>CONNECTION_ERROR</b></td><td>Transport level error</td><td>Invalid SSL certificate, HTTP 5**, 4**, 3** <br>(<b>NOT 200</b>)</td></tr>
<tr style="background-color:#edffb3"><td><b>PROVIDER_INTERNAL_ERROR</b></td><td>Error on Payment provider side</td><td>For example: INTERNAL_SERVER_ERROR, 500 Internal Server Error</td></tr>
<tr style="background-color:#edffb3"><td><b>CONNECTION_TIMEOUT_ERROR</b></td><td>Request time limit exceeded</td><td></td></tr>
<tr style="background-color:#edffb3"><td><b>GENERAL_ERROR</b></td><td>General not critical error</td><td></td></tr>
<tr style="background-color:#edffb3"><td><b>UNKNOWN</b></td><td>Any other resolution missing in mapping</td><td></td></tr>

<tr style="background-color:#ff8787;"><td colspan=3 style="text-align: center;"><b>FATAL ERROR GROUP</b><br><i> (final resolution)</i></td></tr>
<tr style="background-color:#ff8787"><td><b>INVALID_DETAILS</b></td><td>Invalid payout details</td><td></td></tr>
<tr style="background-color:#ff8787"><td><b>INVALID_REQUEST</b></td><td>The protocol may have changed and/or the extension is outdated</td><td></td></tr>
<tr style="background-color:#ff8787"><td><b>REQUEST_ERROR</b></td><td>An error occurred while processing the request by the payment provider</td><td> Invalid data passed</td></tr>
<tr style="background-color:#ff8787"><td><b>INVALID_AMOUNT</b></td><td>Invalid payout amount</td><td>Amount format or route limits violation</td></tr>
<tr style="background-color:#ff8787"><td><b>INVALID_METHOD</b></td><td>Invalid payout method</td><td></td></tr>
<tr style="background-color:#ff8787"><td><b>INVALID_CREDENTIALS</b></td><td>Invalid authentication data</td><td></td></tr>
<tr style="background-color:#ff8787"><td><b>FORBIDDEN_IP</b></td><td>Forbidden IP</td><td> Perhaps you did not register PayCore.io IP addresses in Whitelist</td></tr>
<tr style="background-color:#ff8787"><td><b>SIGNATURE_ERROR</b></td><td>Signature verification error</td><td>Perhaps key was changed or it is outdated </td></tr>
<tr style="background-color:#ff8787"><td><b>DUPLICATED_ID</b></td><td>Operation ID already exists</td><td></td></tr>
<tr style="background-color:#ff8787"><td><b>INSUFFICIENT_FUNDS</b></td><td>Insufficient funds for payout</td><td></td></tr>
<tr style="background-color:#ff8787"><td><b>ANTIFRAUD_ERROR</b></td><td>Payout did not pass the fraud test</td><td></td></tr>
<tr style="background-color:#ff8787"><td><b>DECLINED_ERROR</b></td><td>Operation rejected by provider</td><td>Unknown reason</td></tr>
<tr style="background-color:#ff8787"><td><b>RECIPIENT_NOT_FOUND</b></td><td>Payout Recipient not found</td><td></td></tr>
<tr style="background-color:#ff8787"><td><b>INVALID_RECIPIENT</b></td><td>Payout Recipient is  invalid or inaccessible</td><td></td></tr>
<tr style="background-color:#ff8787"><td><b>LIMIT_VIOLATION</b></td><td>Payout limits violation</td><td></td></tr>
<tr style="background-color:#ff8787"><td><b>INTERNAL_ERROR</b></td><td>System error</td><td>Internal PayCore.io error</td></tr>
<tr style="background-color:#ff8787"><td><b>ACCESS_ERROR</b></td><td>There are not enough permissions to perform the operation</td><td>Check the configuration in the payment provider</td></tr>
<tr style="background-color:#ff8787"><td><b>ACCESS_DENIED</b></td><td>User is not authorized to perform these actions</td><td></td></tr>
<tr style="background-color:#ff8787"><td><b>GENERAL_FATAL_ERROR</b></td><td>Critical error</td><td>Further processing of the operation is meaningless</td></tr>
<tr style="background-color:#ff8787"><td><b>OPERATION_EXPIRED</b></td><td>Operation is expired</td><td></td></tr>
<tr style="background-color:#ff8787"><td><b>PROCESSING_ERROR</b></td><td>Processing error</td><td></td></tr>


</table>


!!! warning
    Any resolution from the **`ERROR GROUP`** transfers the payout to the **`moderation required`** state and it **will not be processed** by the processor.

##  Concept Difference

The difference between these concepts lies in the fact that status is a property of the payout, and resolution relates to all sub-operations and has an explanatory meaning of the cause of the error that occurred during the processing of this request.


## Guide
