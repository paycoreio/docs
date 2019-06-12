# Integration Features

This guide assumes you have completed a [HPP integration](/products/hpp/guide/). These features are all upgrades for that basic integration. After you add a new feature, you can [test it](/products/hpp/guide/testing/) on your site then [go live](/products/hpp/going-live/).

## Essential HPP features

Use these features to ensure your integration has the optimal buyer experience and increased conversion.

| Goal | Steps |
|---|---|
| Listen for shipping changes and update the cart | Follow the  [Shipping Changes](#shipping-callback)  guide to listen for changes to the buyer's shipping address, then update costs accordingly.|
| Handle funding failures | Follow the  [Funding failures](#funding-failure)  guide to allow your buyer to choose a different funding source if their chosen method fails.|
| Show a cancellation page | Follow the  [Cancellation page](#cancellation-page)  guide to show a cancellation page to the buyer if they decide to cancel the transaction.|
| Handle errors | Follow the  [Handle errors](https://developer.paypal.com/docs/checkout/integration-features/handle-errors)  guide to handle errors from the checkout experience and show an error message to the buyer.|


## Additional HPP features

Use these features to enhance and customize your integration.

| Goal                                              | Steps                                                                                                                       |
|---------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------|
| Customize the look and feel of the buttons        | Follow the Style the buttons guide to change the button layout, color, label, shape or size.                                |
| Create an authorization, and capture funds later  | Follow the Authorize and Capture guide to authorize the payment immediately, then capture the payment at a later time.      |
| Refund a transaction                              | Follow the Refunds guide to call PayPal to refund any transactions that have already been captured.                         |
| Send funds to a custom payee                      | Follow the Custom Payee guide to direct any funds to a different PayPal account                                             |
| Listen for transaction events on your server      | Follow the Add Webhooks guide to listen for events on your server from transactions as they are created and captured.       |
| Search for completed transactions                 | Follow the Search Transactions guide to search for completed transactions from your buyers.                                 |
| Handle disputes                                   | Follow the Handle Disputes guide to handle buyer disputes.                                                                  |
| Show PayPal when the buyer selects a radio button | Follow the Radio buttons guide to show the Smart Payment Buttons to the buyer when they select a radio button on your site. |
| Validate on button click                          | Follow the Validation guide to validate user inputs on button clicks.                                                       |
| Show a confirmation page                          | Follow the Confirmation page guide to show a confirmation page to the buyer before capturing the funds from a transaction.  |
| Update a transaction                              | Follow the Update order details guide to update a transaction after it has been set up.                                     |

