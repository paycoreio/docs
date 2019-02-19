# User Profile: Security

## General 

This subsection intended for setting up your Security preferences and access management.
It is divided into several parts:

1. Passwords management
2. Two-Factor authentication
3. Sessions
4. Auditlog


## Passwords management

Here You can change your password!

!!! tip
    **Don't forget to Save changes to confirm entered data!**

!!! info "Security: Passwords management"
    [![General](../images/security1.png)](../images/security1.png)



## Two-Factor authentication


**```Two-factor authentication```** enables You to add an extra layer of protection from getting your account compromised.

 You can set up two-factor authentication using any device capable of generating Time-based One-Time Password (TOTP) authentication codes to log in to your PayCore.io account. 
 

!!! tip
    You can use **```Google Authenticator```** or **```Authy-2FA App```** or any other compatible application to generate the codes.


To set up two-factor authentication for your account:

Go your profile’s **```Profile Settings```** > **```Security```** > **```Two-Factor authentication```**.

To acivate this function You should do the follow:

**Step 1**: Download and install an authentication app at your choice

**Step 2**: Add PayCore.io account to the app
    
!!! note
    You can do this through **```scanning the QR-code```**, or **```set up```** required parameters **```manualy```**!

**Step 3**: Enter the verification code from the app

!!! info "Security: Two-Factor authentication"
    [![General](../images/security2.png)](../images/security2.png)


!!! tip
    **Don't forget** to store your **```backup codes```**, to be able to get access to your account, if You have no access to your 2FA-device.
    
    !!! note
        Backup codes are One-Time! If You have already used all codes (10), You can Generate new code-list.


After all this you will be asked  to enter **```verification code```** **every time** you are **```Login in```** to the PayCore.io Dashboard!


To **```Disable```** 2FA authentication press **```Disable```** button!
!!! info "Security: Two-Factor authentication Disabling"
    [![Disable](../images/security__2fa__disable1.png)](../images/security__2fa__disable1.png)

    [![Disable](../images/security__2fa__disable2.png)](../images/security__2fa__disable2.png)


## Sessions
This section provides  an ability to control **```active ```** sessions.

Session list contains the next information:
- Device type
- IP address
- Location (Based on IP)
- Last time accessed


You can revoke any unrecognized session using **```"Revoke"```** or **```"Revoke all"```**  button.

!!! note
    **```"Revoke"```** - this button revoke only 1 session

    **```"Revoke all"```** - this button provides bulk-revoke for **```all```** sessions  except the **```current```** one!

!!! tip
    To get more info about certain session - expand session row!

!!! info "Security: Sessions List"
    [![Sessions](../images/security__sessions1.png)](../images/security__sessions1.png)

## Auditlog

This section is intended to inform user about the actions in context of user profile.

It register the next type of events:

- **```user:logged_in```** (Logged in)
- **```user:logged_out```** (Logged out)
- **```user:login_failed```** (Login failed)
- **```user.password:reset_requested```** (Requested a password reset)
- **```user.profile:updated```** (Profile updated)
- **```user.preferences:updated```** (Preferences updated)
- **``user.password:changed``** (Password changed)
- **``user.2fa:enabled``** (2FA enabled)
- **```user.2fa:disabled```** (2FA disabled)

!!! tip
    To get more info about certain event - expand it's row!


Events list contains the next information:
- Event code
- Event message
- IP address
- Last time accessed
- Session hash
- Location (Based on IP)
- Device type
- Browser
- OS name
- ...other

!!! info "Security: Auditlog"
    [![Auditlog](../images/security__auditlog1.png)](../images/security__auditlog1.png)