
# Refunds

When you refund a payment, you are essentially returning the funds received from a customer. Refunds may be partial (only a portion of the amount is refunded) or full (the entire amount is refunded).

There may be several reasons for refunding a subscription such as incorrect charge, cancellation, or unsatisfactory service.

In Chargebee, you can either issue a refund or record offline refunds. For both operations,  [Credit Notes](https://www.chargebee.com/docs/credit-notes.html)  will be generated for the refunds made.

## Issuing a Refund[](https://www.chargebee.com/docs/refunds.html#issuing-a-refund "Permalink")

You can issue a refund for paid or partially paid invoices through the web interface or using the  [API](https://apidocs.chargebee.com/docs/api/invoices#refund_an_invoice) . To issue refund through the web interface, open the invoice that you want to refund and click the  _Refund_  button on the  _Actions_panel:

![ ](https://www.chargebee.com/docs/assets/screenshots/images/refunds/invoice_refunds.png)

A prompt asking you to confirm the refund appears, displaying details of the  [Credit Notes](https://www.chargebee.com/docs/credit-notes.html)  that will be created for the refund. Click  _Confirm_.

A  _Refundable Credit Note_  with details of the refund made will be available in the  _Credit Notes_  page.

Note

-   This option  **cannot**  be used to refund invoices that have been paid  **offline**. You need to manually  [record](https://www.chargebee.com/docs/refunds.html#reconciling-offline-refunds)  such refunds in Chargebee.
-   Once you make the refund the amount will be credited to the account that was used for the payment.
-   If the refund is being made for a transaction that is not settled, then the transaction will simply be voided. Partial refunds are also not supported for transactions that are yet to be settled.
-   Refunds are taken into account as separate transactions, and transaction charges may be applied. However, when a transaction is voided, it is not considered as a separate transaction.
-   Refunds can only be made within a specific period of time from the date of the transaction. The period allowed for refund depends on the gateway that was used for the transaction.

## Reconciling Offline Refunds[](https://www.chargebee.com/docs/refunds.html#reconciling-offline-refunds "Permalink")

To reconcile the refunds that you have made offline, record them in Chargebee using the  _Record Refund_  option:

![record refund button](https://www.chargebee.com/docs/assets/screenshots/images/refunds/record_refund_button.png)

You can use this option to record refunds that have been made via payment methods other than card such as cash, check, bank transfer, and so on.  
Click  _Record Refund_  to provide details of the refund, such as the amount, refund method, refund date, reference number. Provide comments and notes, if any.

![actions"](https://www.chargebee.com/docs/assets/screenshots/images/refunds/record_refund_actions_new.png)

You can also record offline refunds using the  ['record a refund' API](https://apidocs.chargebee.com/docs/api/invoices#record_refund_for_an_invoice) .

## Partial and Full Refunds[](https://www.chargebee.com/docs/refunds.html#partial-and-full-refunds "Permalink")

You can only refund up to the amount charged on the invoice. That is, you can make one or more partial refunds or a full refund against an invoice until you reach the total amount charged. Chargebee will not let you refund more than what is on the invoice.

When refunding an invoice that also includes Promotional Credits, the amount to be returned to the card, and the amount added back to your customer's Promotional Credits balance will be calculated proportionately. Here is an example to illustrate:

Example

Total Invoice Amount: $30  
Promotional Credits Adjusted: $10  
Card Payment: $20

If you've entered $10 as the amount to be refunded, Chargebee (calculating in proportions) will assume that you want to return 50% of the card payment ($20) to your customer.

Chargebee will use 50% as a marker to refund the Promotional Credits in the invoice as well.

Your refund of $10 will look like this: $10 returned to the card used to make the payment and $5 added back to customer's Promotional Credits balance.

## Adding Credits Instead of a Refund[](https://www.chargebee.com/docs/refunds.html#adding-credits-instead-of-a-refund "Permalink")

If you want to provide credits to your customer instead of a refund, you could create  [Credit Notes](https://www.chargebee.com/docs/credit-notes.html#creating-a-credit-note). This is quite useful in situations where you do not have to refund money to a customer, but you can provide credits that can be applied to the next invoice.

See also

-   [Issuing Refunds via Credit Notes](https://www.chargebee.com/docs/credit-notes.html#issuing-refunds)
-   [Recording Refunds via Credit Notes](https://www.chargebee.com/docs/credit-notes.html#recording-refunds)