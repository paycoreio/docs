# HPP Guide: Features

This guide assumes you have completed a [HPP integration](/products/hpp/guide/). These features are all upgrades for that basic integration. After you add a new feature, you can [test it](/products/hpp/guide/testing/) on your site then [go live](/products/hpp/guide/going-live/).

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
| Refund a transaction                              | Follow the Refunds guide to call PayPal to refund any transactions that have already been captured.                         |
| Send funds to a custom payee                      | Follow the Custom Payee guide to direct any funds to a different PayPal account                                             |
| Listen for transaction events on your server      | Follow the Add Webhooks guide to listen for events on your server from transactions as they are created and captured.       |
| Search for completed transactions                 | Follow the Search Transactions guide to search for completed transactions from your buyers.                                 |
| Handle disputes                                   | Follow the Handle Disputes guide to handle buyer disputes.                                                                  |
| Show PayPal when the buyer selects a radio button | Follow the Radio buttons guide to show the Smart Payment Buttons to the buyer when they select a radio button on your site. |
| Validate on button click                          | Follow the Validation guide to validate user inputs on button clicks.                                                       |
| Show a confirmation page                          | Follow the Confirmation page guide to show a confirmation page to the buyer before capturing the funds from a transaction.  |
| Update a transaction                              | Follow the Update order details guide to update a transaction after it has been set up.                                     |


## Customer details

## Auto process

## Using predefined Payment Invoice

## Customization

### Display

### Themes

### Styling

### Pay button label

### Override methods positions

### Override methods labels

### Hide methods 

### Override methods icons & logos

## Integration

### Idempotency

Idempotency prevents the processing of duplicate payment requests by using unique keys set in `reference_id` property.

Each `reference_id` must be a _Unique Identifier_, and you must manage the generation of your own keys to ensure that duplicates are not generated accidentally. Duplicate keys are only detected when provided by the same Commerce Account, so only submissions you provide can throw a duplicate error.

UUIDs are very large (128-bit) numbers. To avoid the "accidental" creation of duplicate keys, we recommend using a randomly generated UUID for your `reference_id`. This is especially important when generating `reference_id` for different payment requests.

### Return URL

### Callbacks

When the payment process is complete PayCore.io sends the details of the transaction to the `callback_url` page you provided in your payment request. This is done with a standard HTTP POST. The PayCore.io server continues to post the status until a response of HTTP OK (200) is received from your server or the number of posts exceeds 10. 

More information about callbacks you could find [here](/integration/callbacks/).

### Metadata

In the example above we suppose you will store the  `reference_id`  that’s unique to the payment in your order table. This way your website is able to look-up the order for this payment when the webhook is triggered by PayCore.io. Your website is keeping track of the payment, effectively bringing about the connection between order and payment. This approach is easiest to grasp, which is why we use it in our example.

Alternatively you could ask PayCore.io to remember the unique identifier of your order by instructing the PayCore.io API to store it in the payment’s  `metadata`. You would provide it while creating the payment. In our example  `order_id` would be a good candidate. PayCore.io stores the metadata for you, when you fetch the payment during processing the webhook the metadata is included in the response. This is another way to connect orders and payments. We advise to use the  `metadata`  approach. This is the most popular approach and it’s easiest to implement.

### Embedded options

We provide two ways to integrate:

1.  **Full-page redirect**
    
    The Hosted Payment Pages are displayed full-page in a browser. When your customers are redirected to the Hosted Payment Pages, the web address for the Hosted Payment Pages is displayed. Full-page redirect supports over 60 payment methods.
        
2.  **iframe or lightbox**
        
    The Hosted Payment Pages are displayed in an iframe or lightbox within your website. When you redirect your customers to our payment pages, the web address for your website remains unchanged, providing a more seamless shopping experience. An iframe or lightbox integration requires a more advanced integration.


### HPP in an iFrame

Although possible, using **iFrames** can introduce known usability, security and cross-domain browser issues.

Keep the following in mind:

-   Some redirect payment methods, such as iDEAL, do not allow displaying their pages in an iFrame; they will break out of it. Other redirect payment methods may require more available screen space than your iFrame allows. You should also be prepared to handle the difference in behaviour for the payment callback URL, as once the payment completes you may not be in an iFrame anymore.
-   Another problem you may face is the browser's cookie policy. The HPP solution requires cookies. Using an iFrame means that the browser may impose restrictions regarding the conditions in which cookies are allowed to be set within the iFrame. While there are workarounds to get the browser to accept cookies in a default configuration, the shopper may have configured a more restrictive policy. The most common problem is with Apple Safari and Google Chrome browsers: by default, they require user-initiated page loading inside an iFrame. This means that first the iFrame needs to be loaded with a page hosted at the parent domain. Secondly, on this page the user needs to actively click on a button submitting the redirect to the HPP.

PayCore.io cannot guarantee that all payment methods will work when using an iFrame, nor that the behaviour of a payment method will remain the same. Furthermore, the exact operation of a redirect payment method can differ between the test and the live environments.

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

PayCore.io supports locales across the following languages in multiple regions around the world:

-   English (en_*)
-   Ukraininan (uk_*)
-   Russian (ru_*)

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

## Integration type

Your integration type decides how you set your parameters.

### Full-page redirect

Full-page is right for you if you take  [Alternative Payment Methods](#)  (APMs) through Worldpay, as well as card payments. Currently the iframe/lightbox integration doesn't support APMs.

In the full-page integration we use an iframe to display 3D Secure. All other Hosted Payment Page content is displayed full page in the browser.

### JavaScript SDK

[JavaScript SDK](#)  is right for you if you want a more advanced integration with card payments only:


## Customer details

### Customer email

The  `customer`  element contains more information about the customer making the payment.

It includes  `customer[email]`, which we can use to send an email to the shopper when the payment is authorised or refused (if you choose to enable this notification channel).

## Filtering payment services

For some payment requests, you may decide to filter the payment methods that are displayed on the HPP or bypass the HPP entirely.

-   The  `options[show_services]`  field is used to display specific payment services.
-   The  `options[hide_services]`  field is used to prevent specific payment services from being displayed.
-   The  `service`  and the `service_fields` fields are used to take the customer directly to a specific payment service gateway. Example: `service: paypal_usd_hpp`.

All the payment services that are configured for your account, including the value you use to indicate the specific payment method, are available in the Dashboard interface under **Commerce Account Settings > Payment Methods > Name**.  



## Callback handling

## Testing

## Error handling

When an error condition occurs, there are some cases where PayCore.io cannot determine which skin and language to use to display the error message with.

To enhance the shopper experience, you have the option to include the following fields in the URL that the shopper is directed to:


|Field        |Description                                                                                   |
|-------------|----------------------------------------------------------------------------------------------|
|skinCode     |The code of the skin used.                                                                    |
|shopperLocale|A combination of a language code and country code to specify the language used in the session.|

These values are used as a fallback when PayCore.io is unable to determine skin and language configuration.


### Custom return URLs

Provide custom `return_url` so that your shoppers are returned to your website at the end of the payment process.

If `return_url` are not provided, shoppers are redirected to one of PayCore.io's default result pages, where the payment journey ends.

### Return Method

2Checkout provides three methods in which the buyer and sale parameters can be returned to your approved URL. You may send the buyer to our order processed page which will display a  **Click Here to Finalize your Order**  button to redirect the buyer, you may bypass the order processed page using a header redirect or you can immediately display your approved URL to the buyer while they remain on our server. Your return method can be selected on the Site Management page.

#### Given links back to my Website

With the Return Method set to Given links back to my website, the buyer will be taken to our Order Processed page after completing a successful purchase. This page will feature a  **Click Here to Finalize your Order**  button. When clicked the buyer and collected sale parameters will be directed to the provided approved URL by POST.

#### Direct Return

With the Return Method set to Direct Return, sale parameters will be posted automatically to the approved URL while fetched by our server and displayed to the buyer. When using this Direct Return function the URL will be masked to the buyer, appearing to still be on the 2Checkout.com domain. This method can be used with redirects as long as each page outputs content more than 255 characters to the browser. If Direct Return encounters a page that redirects without outputting content the process will fail and the buyer will be sent to our standard Order Processed page. This occurs usually with a header redirect, specifically content less then 255 characters. This is a common issue as many developers will set their approved URL to a script that processes the return sales parameters then silently forwards the buyer to another page. This is usually a thank you or download page for intangible products. The best solution is to handle all post-order processing on the page set as your approved URL, including the thank you message. If no redirects are used, meaning the URL is masked by our servers, then relative links will not point to the correct location. This can be corrected with the use of absolute paths on the approved URL page or by simply using a base tag in the head of the document to provide a reference for the relative paths.

#### Header Redirect

With the Return Method set to Header Redirect the buyer will be immediately returned to your approved URL. Using this method, the sale parameters will be returned along with the buyer using the GET method.


## Redirecting customers to Quick Checkout

You can use a standard HTML form to collect and pass payment and customer details to Quick
Checkout. See Example HTML forms on page 10-7. When the customer selects the Skrill option, your
website should post the HTML form containing their transaction details to:
https://pay.skrill.com .
The HTML form should contain the mandatory hidden input fields listed in Table 2-1 on page 2-5.
You should use a secure method of obtaining a session ID before redirecting customers to Skrill, as
described in Secure redirection method on page 2-4.

Tips for improving the customer experience
• Any parameters that you pass through in your HTML form, such as customer first name, last
name, and email, will be automatically populated (or populated and hidden) as appropriate,
on the Quick Checkout payment pages making it easier for the customer to complete these
forms.
• You can customize the appearance of the Quick Checkout page using the options described in
Chapter 4: Customizing the Quick Checkout Page.
• To maximise conversion, Skrill recommends that you redirect customers to the Quick
Checkout page in the same browser window or embed the Skrill page in an iframe (see
Embedding the Quick Checkout page on page 4-11).

### Secure redirection method

This method can be used to ensure that details of the payment are communicated securely between
your server and Skrill. 

!!! note "Important!"
     We strongly recommend that you use this method when redirecting your customers to Skrill, as it does not require sending any payment parameters to their browser. This prevents customers from being able to view or modify any hidden parameters in your source code.

The redirection process is as follows:
1. Your web server makes a standard POST request with the payment parameters, using the
‘prepare_only=1’ parameter (see Table 2-1 below).
2. The Skrill server prepares a session for the payment and returns a standard HTTP(S) response.
3. Your web server takes the body of the response which contains a SESSION_ID value.
4. Using this SESSION_ID value the customer can be redirected to: https://pay.skrill.com/?sid=<SESSION_ID>

The normal flow of events continues. This redirect must happen within 15 minutes of the original
request or the session will expire.

!!! note
    The Skrill Payment Platform treats GET/POST requests to the payment URL identically. As a result, you can also use an HTTP GET operation in place of POST in step 1 above and pass the payment parameters as name/value pairs in the query string. Similarly, in Step 4 above you could use a HTTP POST operation and pass the SESSION_ID value from Step 3 as the sid parameter in the message body. For code examples of how to implement this, see Redirecting the customer to Skrill on page 5-3.

## Secure redirection restriction

The Quick Checkout Secure Restriction service allows merchants to create a whitelist of IP addresses
(including ranges) specific to them, so that Gateway transactions are generated only for the IP
addresses in the list. When the service is enabled and the list is populated, any request that doesn’t
have a “SID” in Skrill will be blocked. By default, the service is disabled, and the Gateway allows all
payment requests, with no restrictions.
Configure the service as follows:
1. Note the IP addresses/address ranges to add to the whitelist.
2. Log in to your merchant account.
3. Go to Settings > DEVELOPER SETTINGS.
4. Under Quick Checkout Secure Restriction, set Enable service, and then, in the field below,
type the IP addresses separated by spaces, or an address range in CIDR notation.
5. Click Save. 

## Parameters to be posted to Quick Checkout

Please review the table below for details of the required and optional parameters that need to be included in your form. For implementation examples, see Example HTML forms on page 10-7.

!!! note
    All URL parameters must include the scheme at the front of the URL for example: https://. For example instead of www.google.co.uk you would need to use https://www.google.co.uk.

| Key | Required | Description |
|---|---|---|
| |||




### Auto return the buyer to your website

With Auto return for PayPal payments, buyers are not required to click a button to return to your website after they complete their payments with PayPal. Auto Return applies to all PayPal Payments Standards payment buttons, including Buy Now, Shopping Cart, Subscription, and Donate buttons.

Auto Return shortens the checkout flow and immediately brings your buyers back to your website upon payment completion. To set up Auto Return, you need to turn it on in your PayPal account profile and enter the return URL that will be used to redirect your buyers back to your site. For more information on how to enable this feature in your PayPal account, see  [Auto return](https://developer.paypal.com/docs/classic/admin/checkout-settings/#auto-return-the-buyer-to-your-website)  in the Merchant setup and administration guide.

#### Subscriptions Password Management and Auto return

If you are using the  [Subscriptions Password Management](https://developer.paypal.com/docs/classic/paypal-payments-standard/integration-guide/user_names_passwords/)  feature, you must make sure that Auto return is disabled in order to display the PayPal-generated username and password to the subscriber.

> **Note:**  You can use Auto return with subscriptions, which is a separate feature from Subscriptions Password Management.

#### Override the return URL on individual transactions

With Auto return turned on in your account profile, you can set the value of the  `return`  HTML variable on individual transactions, which overrides the value of the return URL stored in your PayPal account profile. For example, you might want to redirect payers to a URL on your site that is specific to that person, perhaps with a session-id or other transaction-related data included in the URL.

To set the return URL for individual transactions, include the  `return`  variable in the HTML form:

```
<INPUT TYPE="hidden" NAME="return" value=" The-Page-On-Your-Site-To-Which-Buyer-Returns;">

```

> **Note:**  To receive transaction-related notification data from PayPal, you must turn Payment Data Transfer on. To learn more, see the  [Payment Data Transfer](https://developer.paypal.com/docs/classic/products/payment-data-transfer/)  page.