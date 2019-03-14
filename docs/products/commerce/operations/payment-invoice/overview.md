# Payment Invoice: Overview

## General

There are three types of **incoming** transactions that occur in PayCore.io<sup>®</sup>:

- Payment 

    > A **Payment** is a low-level operation that initiates a financial transaction in the defined payment provider using the specified payment method, it simply provides communication with an external provider and the mapping of statuses.

- Request

    > A **Payment Request** is an operation with rich functionality that initiates one or many payments depending on the conditions set in the routing and exchange rate schemes.

- Invoice

    > A **Payment Invoice** is a high-level operation that initiates accompanying Payment Request and Ledger account transactions.


The Payment Invoice includes information on the **_```amount```_**, **_```currency```_**, **_```service```_**, **_```commission```_**, **_```exchange rate```_** and other properties. 
!!! info
    The full list of properties can be found in the <a href="http://apidoc.paycore.io/" target="_blank" rel="noopener"> API Reference <i class="md-icon">launch</i> </a>.

## Flow

!!! info "Payment Invoice Flow"
    [![New UI](images/payment_invoice_flow.png)](images/payment_invoice_flow.png)

## Statuses

Below is a description of each status:
<table>
<tr ><th><b>Code</b></th><th><b>Final</b></th><th><b>Sleeping State</b></th><th><b>Description</b></th></tr>

<tr><td>CREATED</td><td>No</td><td>No</td><td>Initial status after a Payment Invoice is created, processing has not started. <br> If PayCore.io<sup>®</sup> will not return response 201 (Created) HTTP status code on your request, you should consider that the payment invoice was failed to be created</td></tr>
<tr style="background-color:#ff8787"><td>EXPIRED</td><td><b>Yes</b></td><td>No</td><td>Means the Payment Invoice hit the lifetime limit (configurable in the 'Invoice lifetime' property) without being successfully processed, but also did not either cancelled or terminated, e.g. your customer has abandoned the payment</td></tr>
<tr style="background-color:#ff8787"><td>TERMINATED</td><td><b>Yes</b></td><td>No</td><td>Means that the payment process was terminated by a payer prior to the payment invoice lifetime limit</td></tr>
<tr><td>PROCESSING</td><td>No</td><td><b>Yes</b></td><td>Signifies that the payment invoice is processing by PayCore.io<sup>®</sup> but its processing is not finished and there will be further status updates</td></tr>
<tr><td>PROCESS_PENDING</td><td>No</td><td><b>Yes</b></td><td>Means that the result of the payment process still being unknown and may not be known for an extended period of time</td></tr>
<tr style="background-color:#79f99b"><td>PROCESSED</td><td>No</td><td>No</td><td>Confirms the payment has been processed successfully. <br> This isn't a final status since the payment can be refunded for different reasons</td></tr>
<tr style="background-color:#79f99b"><td>PARTIALLY_PROCESSED</td><td>No</td><td>No</td><td>Means that the amount paid is less than the payment invoice amount and that amount is successfully processed, e.g. your customer has entered an amount less than the invoice amount while making an online payment</td></tr>
<tr style="background-color:#ff8787"><td>PROCESS_FAILED</td><td><b>Yes</b></td><td>No</td><td>Signifies that the Payment Invoice processing has failed, may be set when an error occurs and the corresponding payment request has failed. <br> This status is considered final due to the maximum number of attempts has been reached (default – 5 attempts)</td></tr>
<tr><td>REFUNDING</td><td>No</td><td><b>Yes</b></td><td> Means the payment invoice is refunding and the result of the payment invoice refunding still being unknown</td></tr>
<tr><td>REFUND_PENDING</td><td>No</td><td><b>Yes</b></td><td> Means that the result of the payment refunding still being unknown and may not be known for an extended period of time</td></tr>
<tr style="background-color:#79f99b"><td>PARTIALLY_REFUNDED</td><td><b>Yes</b></td><td>No</td><td>Means that the amount refunded is less than the payment invoice amount and that amount is successfully refunded.</td></tr>
<tr style="background-color:#79f99b"><td>REFUNDED</td><td><b>Yes</b></td><td>No</td><td>Means the payment invoice is successfully refunded in full</td></tr>
<tr style="background-color:#ff8787"><td>REFUND_FAILED</td><td><b>Yes</b></td><td>No</td><td>Means that the payment invoice refunding has been failed or cannot be completed</td></tr>


</table>

