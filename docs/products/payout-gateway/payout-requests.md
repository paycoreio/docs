# Payout Gateway: Payout Requests

## General

!!! info "Definition"
    **`Payout request`** - is an operation for abstraction from route and payout. It allows dynamic routing and failover for payouts.
    
    **`Payout Request Event`**  - event log for a specific request for payout. Gives detailed information about the process for requesting payout.


## Workflow

!!! info "Workflow State diagram"
    [![Payout Request Workflow](images/payout_request_state_diagram.png)](images/payout_request_state_diagram.png)




## Payout Request Status

**Payout Request status** —  is a property, based on which it can be unambiguously stated at what stage the payout request is. 


Same to Payout, Payout Request status has **`final`** property, which can be **true (Yes)** or **false (No)**, and **`sleep`** - which explains if operation can wait in certain status to be modified manualy. 



|Code|Final|Description|
| --- | --- | --- |
|CREATED|No|The operation validated at the initial stage and successfully created|
|DISPATCHING|No|The operation is being processed|
|EXPIRED|Yes|The operation has expired|
|FAILED|Yes|Failed transaction|
|PENDING|No|The operation is pending for processing|
|PARTIALLY_PROCESSED|Yes|The operation has been partially processed|
|PROCESSED|Yes|The operation was processed successfuly|
|READY|No|The operation is ready for processing|
|WAITING_DETAILS|No|Waiting for transaction details|


## Guide