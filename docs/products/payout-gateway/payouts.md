# Payout Gateway: Payouts


!!! info "Definition"
    **Payout status** —  is a property, based on which it can be unambiguously stated at what stage the payout is. 


Payout Statuses are divided into **```TWO```** groups _in the context of their level of completion_.

- **```Final```** : means, that current status is the last (**_in current flow_**)
- **```Intermediate```**: means, that paycout can go into another state after current

## Payout statuses

!!! info
    **```Sleep```** - means that operation can wait in this status for some moderation.

<table border="1px">

<tr ><th><b>Code</b></th><th><b>Final</b></th><th><b>Sleep</b></th><th><b>Description</b></th></tr>

<tr style="background-color:#ff8787"><td>CREATE_FAILED</td><td><b>Yes</b></td><td>No</td><td>Payout was not created. Using for Pauout Request section</td></tr>

<tr><td>CREATED</td><td>No</td><td>No</td><td>Payout was successfuly created</td></tr>

<tr><td>READY</td><td>No</td><td><b>Yes</b></td><td>Payout is ready to be processed.Depending on the <b>autoprocess</b> field value payout waits command for processing (<b>autoprocess</b> is  <b>TRUE</b>) or manual processing (<b>autoprocess</b> is  <b>FALSE</b>)</td></tr>

<tr style="background-color:#ff8787"><td>TERMINATED</td><td><b>Yes</b></td><td>No</td><td>User refused the entering of additional information and finished the payout</td></tr>
<tr style="background-color:#ff8787"><td>EXPIRED</td><td><b>Yes</b></td><td>No</td><td>Payout operation is expired</td></tr>
<tr><td>INVOKING</td><td>No</td><td><b>Yes</b></td><td>Payout is registered by payment provider</td></tr>
<tr style="background-color:#ff8787"><td>INVOKE_FAILED</td><td><b>Yes</b></td><td>No</td><td>Failed to register a payout on the side of payment provider</td></tr>
<tr><td>PROCESSING</td><td>No</td><td><b>Yes</b></td><td>Payout is processing by payment provider</td></tr>
<tr><td>PENDING</td><td>No</td><td><b>Yes</b></td><td>Payout was created by payment provider and is waiting for resolution</td></tr>
<tr style="background-color:#79f99b"><td>PROCESSED</td><td>No</td><td><b>Yes</b></td><td>Payout was successfuly processed</td></tr>
<tr style="background-color:#79f99b"><td>PARTIALLY_PROCESSED</td><td>No</td><td><b>Yes</b></td><td>Payout was successfuly processed with part of amount</td></tr>
<tr style="background-color:#ff8787"><td>PROCESS_FAILED</td><td><b>Yes</b></td><td>No</td><td>Payment provider could not process the transaction</td></tr>
<tr><td>CANCELLING</td><td>No</td><td><b>Yes</b></td><td> Payout is cancelling</td></tr>
<tr><td>CANCELLED</td><td><b>Yes</b></td><td>No</td><td>Payout was cancelled</td></tr>
<tr style="background-color:#ff8787"><td>CANCEL_FAILED</td><td><b>Yes</b></td><td>No</td><td>Payout cancelling faliled</td></tr>
<tr><td>REVOKING</td><td>No</td><td><b>Yes</b></td><td>Payout is revoking</td></tr>
<tr><td>REVOKED</td><td><b>Yes</b></td><td>No</td><td>Payout was revoked</td></tr>
<tr style="background-color:#ff8787"><td>REVOKE_FAILED</td><td><b>Yes</b></td><td>No</td><td>Payout revoke failed</td></tr>


</table>

