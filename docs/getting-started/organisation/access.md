# Organisation: Access Control

"Access control" is intended to delimit User access to different Dashboard sections  through User Roles assignment.

PayCore.io implements multi-user access, which allows one user to use several independent organization accounts and switch between them.

It is divided into **2 parts**:

- Members management
- Role Access management 


## Members management

Here you can manage your organisation team:

- [x] Invite new members

    !!! info
        You can invite both registered unregistered users to become a new member of your organisation. 
        
        User will recieve invitation email.
        - Registered users will be asked to confirm joining on dashboard login.
        - Unregistered users will be asked to sign up at join confirmation step. 

- [x] Assign Role to member

    !!! info
        Inviting of new member requires the role choosing

- [x] Set up and Change Individual access scope (Permission set) for each member
- [x] Change Member status
    - Deactivate
    - Activate
    - Archive
- [x] Edit Member description 




!!! tip
    **Don't forget to Save changes to confirm your choice!**



User access to the organisation is primarily determined  by the status of a team member related to this user.

|    **ID**      |               **Name**       |        **Organisation Access**       |
|:--------------:|:----------------------------:|:----------------------------:|
| **invited**      | The invited member  has no access to the organisation until he independently activates it through the mechanism of confirmation. When you try to enter the organisation, you will be redirected to the confirmation screen. A member can be deleted only in **```invited```** state using **_"Revoke invite"_** action.      | **FALSE**         |
| **active**      | Active user, team member        |  **TRUE**         |
| **inactive**      | Inactive team member, does not have access to the organisation. When try to access,you will be shown an error screen with message - "No access rights. Contact your organisation administrator."       |  **FALSE**       |    
| **archived**      | Archived inactive team member. Not displayed in the management list of the team and its directory.        |  **FALSE**       |



Inactive team member, does not have access to the organisation. When try to access,you will be shown an error screen with message - "No access rights. Contact your organisation administrator."

## Role Access management 

In this section You can manage Access roles in current organisation!

!!! info 
    Take stock, that You **can NOT Modify or Delete  System Roles** 
    
### System roles
|    **ID**      |               **Name**       |        **Description**       |
|:--------------:|:----------------------------:|:----------------------------:|
| **owner**      | Owner of organisation        |<ul align="left" > <li >**Only 1 member** of the team can have this role!</li><li>The user with this role cannot be removed from the command.</li><li> This role can be transferred to other team members by lowering the rights to the admin role.</li></ul>|
| **admin**      | Organisation administrator   |Full access to the organisation, including the ability to manage access and team members (cannot delete a user with role **```owner```**).       |
| **manager**    | Organisation manager         |Full read and write access, without the ability to manage **organisation** and **technical aspects**: _set up integrations, webhook, see keys, regenerate them, etc._      |
| **developer**  | Organisation developer       |  Full read and write access, without the ability to manage **organisation** and **business aspects**: _re-wire payments, edit customers, organization data, etc._     |
| **watcher**    | Watcher of  organisation     | **Only read** access  of all data, except **"sensitive data"**, such as: _keys, webhook URL, integration, etc._      |


Here you can manage your organisation roles and their access scope:

- [x] Create New Role
- [x] Edit name and description of exsising roles
- [x] Set up permission set (access scope) _(Custom roles only)_
- [x] Delete out-of-use access roles _(Custom roles only)_
    
    !!! warning
        You can Delete **only if It has NO members assigned to**!

!!! tip
    **Don't forget to Save changes to confirm your choice!**


!!! info "Access Control: Role Access management"
    [![Security](images/org_access1.png)](images/org_access1.png)
    [![Security](images/org_access2.png)](images/org_access2.png)

