# HPP Payment Flow

A simplified illustration of the PayCore.io HPP payment flow is shown in the figure below.

![]()

1. When the customer is ready to pay for goods or services on your website, they select the
PayCore.io payment option on your website.
2. You request a session identifier (SID) by passing customer and transaction details (for
example: amount, currency and language) to Quick Checkout.
3. PayCore.io returns the generated SID.
4. Using a light box or iframe you redirect the customer to Quick Checkout and include the
session identifier in the redirect URL. PayCore.io displays the Quick Checkout page.
PayCore.io Quick Checkout Integration Guide 7.9
5. The customer enters their payment information, plus any other details requested, and
confirms the transaction.
6. PayCore.io requests authorisation for the payment from the customer’s bank, third party provider
or card issuer.
7. The bank/provider approves or rejects the transaction.
8. PayCore.io displays the Quick Checkout confirmation page, containing the transaction result.
9. PayCore.io provides you with an asynchronous notification, sent to your status URL or IPN (instant
Payment Notification), confirming the transaction details and status.