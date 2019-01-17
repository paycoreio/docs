# Payout Gateway: Payout Requests

## General

!!! info "Definition"
    **```Payout request```** - is an operation for abstraction from route and payout. It allows dynamic routing and failover for payouts.
    
    **```Payout Request Event```**  - event log for a specific request for payout. Gives detailed information about the process for requesting payout.


!!! info "Workflow State diagram"
    [![Payout Request Workflow](images/payout_request_state_diagram.png)](images/payout_request_state_diagram.png)




## Payout Request Status


!!! info "Definition"
    **Payout Request status** —  is a property, based on which it can be unambiguously stated at what stage the payout request is. 

!!! info
    Same to Payout, Payout Request status has **```final```** property, which can be **true (Yes)** or **false (No)**, and **```sleep```** - which explains if operation can wait in certain status to be modified manualy. 



<table border="1px">

<tr ><th><b>Code</b></th><th><b>Final</b></th><th><b>Sleep</b></th><th><b>Description</b></th></tr>

<tr style="background-color:"><td>CREATED</td><td><b>No</b></td><td><b>No</b></td><td>The operation validated at the initial stage and successfully created</td></tr>
<tr style="background-color:"><td>DISPATCHING</td><td>No</td><td><b>Yes</b></td><td>The operation is being processed</td></tr>
<tr style="background-color:#ff8787"><td>EXPIRED</td><td><b>Yes</b></td><td>No</td><td>The operation has expired</td></tr>
<tr style="background-color:#ff8787"><td>FAILED</td><td><b>Yes</b></td><td>No</td><td>Failed transaction</td></tr>
<tr style="background-color:"><td>PENDING</td><td>No</td><td><b>Yes</b></td><td>The operation is pending for processing</td></tr>
<tr style="background-color:#79f99b"><td>PARTIALLY_PROCESSED</td><td><b>Yes</b></td><td>No</td><td>The operation has been partially processed</td></tr>
<tr style="background-color:#79f99b"><td>PROCESSED</td><td><b>Yes</b></td><td>No</td><td>The operation was processed successfuly</td></tr>
<tr style="background-color:"><td>READY</td><td>No</td><td><b>Yes</b></td><td>The operation is ready for processing</td></tr>
<tr style="background-color:"><td>WAITING_DETAILS</td><td>No</td><td><b>Yes</b></td><td>Waiting for transaction details</td></tr>

</table>
