# Payout Gateway: Payout Requests

## General

!!! info "Definition"
    **`Payout request`** - is an operation for abstraction from route and payout. It allows dynamic routing and failover for payouts.
    
    **`Payout Request Event`**  - event log for a specific request for payout. Gives detailed information about the process for requesting payout.

## Workflow

![Payout Request Workflow](images/payout_request_state_diagram.png)

## Payout Request Status

**Payout Request status** —  is a property, based on which it can be unambiguously stated at what stage the payout request is. 

Same to Payout, Payout Request status has **`final`** property, which can be **true (Yes)** or **false (No)**, and **`sleep`** - which explains if operation can wait in certain status to be modified manualy. 

| Code                | Final | Description                                                           |
|---------------------|-------|-----------------------------------------------------------------------|
| CREATED             |       | The operation validated at the initial stage and successfully created |
| DISPATCHING         |       | The operation is being processed                                      |
| EXPIRED             | ✔     | The operation has expired                                             |
| FAILED              | ✔     | Failed transaction                                                    |
| PENDING             |       | The operation is pending for processing                               |
| PARTIALLY_PROCESSED | ✔     | The operation has been partially processed                            |
| PROCESSED           | ✔     | The operation was processed successfuly                               |
| READY               |       | The operation is ready for processing                                 |
| WAITING_DETAILS     |       | Waiting for transaction details                                       |