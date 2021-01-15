# HPP: Features

This guide assumes you have completed a [HPP integration](/products/hpp/quickstart/). These features are all upgrades for that basic integration. After you add a new feature, you can [test it](/products/hpp/guide/testing/) on your site then [go live](/products/hpp/guide/going-live/).

## Features list

### Essential HPP features

Use these features to ensure your integration has the optimal buyer experience and increased conversion.

| Goal | Steps |
|---|---|
| Listen for shipping changes and update the cart | Follow the  [Shipping Changes](#shipping-callback)  guide to listen for changes to the buyer's shipping address, then update costs accordingly.|
| Handle funding failures | Follow the  [Funding failures](#funding-failure)  guide to allow your buyer to choose a different funding source if their chosen method fails.|
| Show a cancellation page | Follow the  [Cancellation page](#cancellation-page)  guide to show a cancellation page to the buyer if they decide to cancel the transaction.|
| Handle errors | Follow the  [Handle errors](https://developer.paypal.com/docs/checkout/integration-features/handle-errors)  guide to handle errors from the checkout experience and show an error message to the buyer.|


### Additional HPP features

Use these features to enhance and customize your integration.

| Goal                                              | Steps                                                                                                                       |
|---------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------|
| Customize the look and feel of the buttons        | Follow the Style the buttons guide to change the button layout, color, label, shape or size.                                |
| Create an authorization, and capture funds later  | Follow the Authorize and Capture guide to authorize the payment immediately, then capture the payment at a later time.      |
| Refund a transaction                              | Follow the Refunds guide to call {{custom.company_name}} to refund any transactions that have already been captured.                         |
| Send funds to a custom payee                      | Follow the Custom Payee guide to direct any funds to a different {{custom.company_name}} account                                             |
| Listen for transaction events on your server      | Follow the Add Webhooks guide to listen for events on your server from transactions as they are created and captured.       |
| Search for completed transactions                 | Follow the Search Transactions guide to search for completed transactions from your buyers.                                 |
| Handle disputes                                   | Follow the Handle Disputes guide to handle buyer disputes.                                                                  |
| Show {{custom.company_name}} when the buyer selects a radio button | Follow the Radio buttons guide to show the Smart Payment Buttons to the buyer when they select a radio button on your site. |
| Validate on button click                          | Follow the Validation guide to validate user inputs on button clicks.                                                       |
| Show a confirmation page                          | Follow the Confirmation page guide to show a confirmation page to the buyer before capturing the funds from a transaction.  |
| Update a transaction                              | Follow the Update order details guide to update a transaction after it has been set up.                                     |


## Customer details

## Auto process

## Using predefined Payment Invoice

## Customization

## Integration

### Idempotency

### Return URL

### Callbacks

### Metadata

### Embedded options

### Bypass mode


## Handling events

## Actions

## Methods filter

### Categorization

### Geo-location

## Test mode

## Sandbox test environment

You can test your technical integration in Sandbox, our secure-test environment. Sandbox supports the testing of both card and alternative payment methods. The Sandbox test environment simulates a production experience but in a shielded secure-test environment.

## Currency conversion

When currency conversion is needed, we notify your customers during the payment process and let them know what their options are.

## Failover

## Localization

HPP supports following languages in multiple regions around the world: English, Ukraininan, Russian.

## Full-cycle payment flow

### Payment methods storefront

### Status page

## Any payment flow support

## Any currency support

## UI Features

### Responsivnes

The Hosted Payment Pages automatically adapt to the size and orientation of a wide range of devices including smartphones, tablets and desktops. You don't have to integrate for different devices. We've got it covered.

HPP is optimized for mobile devices. Supports displaying all relevant payment methods as well as one specific payment method.

### Steps support

### Zero-fee badge support

### Fast-pay support

### Merchant details

Logo, Name, Description, URL

### Lifetime countdown

### Methods categorization

### Payment method availability by geolocation

Some payment methods are not available in all countries. For example, iDEAL is only offered if the shopper is from The Netherlands.

Filter by geolocation ensures that the shopper only sees the payment methods that are relevant for their country.

The list of countries where a payment method is offered is also available in the payment methods list in the Dashboard interface, near the **Countries** field.

The list of payment methods may differ in the test and live environments. All payment methods are not automatically configured for the LIVE environment.

### Method searching

### Process failover

### Error handling

### Unified payment flow page

### Automatic card recognition

As your customer enters their card details, we automatically detect:

-   Card type. For example Visa or American Express.
-   Card authentication scheme. For example Verified by Visa or Amex SafeKey.


## Customer details

## Filtering payment services


## Callback handling

## Testing

## Error handling

When an error condition occurs, there are some cases where {{custom.company_name}} cannot determine which skin and language to use to display the error message with.

To enhance the shopper experience, you have the option to include the following fields in the URL that the shopper is directed to:


|Field        |Description                                                                                   |
|-------------|----------------------------------------------------------------------------------------------|
|skinCode     |The code of the skin used.                                                                    |
|shopperLocale|A combination of a language code and country code to specify the language used in the session.|

These values are used as a fallback when {{custom.company_name}} is unable to determine skin and language configuration.


### Return Method

{{custom.company_name}} provides three methods in which the buyer and sale parameters can be returned to your approved URL. You may send the buyer to our order processed page which will display a  **Click Here to Finalize your Order**  button to redirect the buyer, you may bypass the order processed page using a header redirect or you can immediately display your approved URL to the buyer while they remain on our server. Your return method can be selected on the Site Management page.

#### Given links back to my Website

With the Return Method set to Given links back to my website, the buyer will be taken to our Order Processed page after completing a successful purchase. This page will feature a  **Click Here to Finalize your Order**  button. When clicked the buyer and collected sale parameters will be directed to the provided approved URL by POST.

#### Direct Return

With the Return Method set to Direct Return, sale parameters will be posted automatically to the approved URL while fetched by our server and displayed to the buyer. When using this Direct Return function the URL will be masked to the buyer, appearing to still be on the {{custom.company_name}}.com domain. This method can be used with redirects as long as each page outputs content more than 255 characters to the browser. If Direct Return encounters a page that redirects without outputting content the process will fail and the buyer will be sent to our standard Order Processed page. This occurs usually with a header redirect, specifically content less then 255 characters. This is a common issue as many developers will set their approved URL to a script that processes the return sales parameters then silently forwards the buyer to another page. This is usually a thank you or download page for intangible products. The best solution is to handle all post-order processing on the page set as your approved URL, including the thank you message. If no redirects are used, meaning the URL is masked by our servers, then relative links will not point to the correct location. This can be corrected with the use of absolute paths on the approved URL page or by simply using a base tag in the head of the document to provide a reference for the relative paths.

#### Header Redirect

With the Return Method set to Header Redirect the buyer will be immediately returned to your approved URL. Using this method, the sale parameters will be returned along with the buyer using the GET method.


