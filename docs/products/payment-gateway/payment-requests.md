# Payment Gateway: Payment Requests


## Workflow

[![Payment Request Workflow](images/payment_request_state_diagram.png)](images/payment_request_state_diagram.png)




## Status list

<table border="1px">

<tr><th><b>Code</b></th><th><b>Final</b></th><th><b>Sleeping State</b></th><th><b>Description</b></th></tr>

<tr><td>created</td><td>No</td><td><b>Yes</b></td><td>The Payment Request is created</td></tr>
<tr style="background-color:#ff8787"><td>expired</td><td><b>Yes</b></td><td>No</td><td>The Payment Request is expired</td></tr>
<tr style="background-color:#ff8787"><td>terminated</td><td><b>Yes</b></td><td>No</td><td>The Payment Request is terminated</td></tr>
<tr><td>process_pending</td><td>No</td><td><b>Yes</b></td><td>The payment process is pending. Waiting for a trigger to continue</td></tr>
<tr style="background-color:#ff8787"><td>process_failed</td><td><b>Yes</b></td><td>No</td><td>The Payment Request processing is failed</td></tr>
<tr style="background-color:#ff8787"><td>process_error</td><td>No</td><td><b>Yes</b></td><td>An error occurred during the payment request processing. Waiting for the next attempt</td></tr>
<tr style="background-color:#79f99b"><td>processed</td><td>No</td><td>No</td><td>The Payment Request is processed</td></tr>
<tr><td>refund_pending</td><td>No</td><td><b>Yes</b></td><td>The payment refund process is pending. Waiting for a trigger to continue</td></tr>
<tr style="background-color:#ff8787"><td>refund_failed</td><td><b>Yes</b></td><td>No</td><td>The Payment Request  process is failed</td></tr>
<tr style="background-color:#ff8787"><td>refund_error</td><td>No</td><td><b>Yes</b></td><td>An error occurred during the payment request refunding process. Waiting for the next attempt</td></tr>
<tr><td>refunded</td><td><b>Yes</b></td><td>No</td><td>The Payment Request is refunded</td></tr>
<tr><td>charged_back</td><td><b>Yes</b></td><td>No</td><td>The Payment Request is charged back</td></tr>

</table>


## Guide
