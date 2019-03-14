# Commerce Operations




## Operation Workflow Status
An Operation Status represents it's current state. This property is displayed in the Operation Overview section within the Dashboard. 

Workflow statuses are divided into two types: 
- Final 
- Non-final

**Final** status means that the operation processing is finished and requires no further processing.

**Non-final** statuses are intermediate states of the workflow and there may be further status updates.

Сoncurrently, a payment process may be in the **```sleeping```** state.

!!! info
    **```Sleeping```** means that PayCore.io is waiting for data, interaction with other processes, a user response or any other action.

These status properties are displayed in the Status Table for each operation type.