# Hosted Payment Page Integration Guide

## Introduction


PayCore.io Commerce HPP is a secure hosted payment page, where you can redirect customers from your website to make a payment through PayCore.io. Commerce HPP provides customers with access to a range of payment methods, based on their location and your account and integration settings. Integration to Commerce HPP is simple and requires collecting customer payment information on your website in a standard HTML form and submitting this to PayCore.io. Commerce HPP then collects the customer payment details needed to complete the payment, and sends these details to the relevant bank or alternative payment provider for authorisation. After the payment is complete, the customer is returned to your website and you receive a real-time notification of the payment, which includes details of the transaction.

## How does it work?

![HPP Interaction](images/hpp-interaction.png)

1.  A customer on your website decides to checkout.
    
2.  Your website redirects the customer to the Hosted Payment Page on the PayCore.io platform by submitting HTML form or calling the Private API with Payment Invoice data the amount, a payment description, a callback URL, and a Return URL we should redirect the customer to after the payment is made.
        
3.  The customer reaches the Hosted Payment Page, chooses a payment method and makes the payment. This process is entirely taken care of by PayCore.io. You don’t need to do anything here.

4.  At this point PayCore.io returns the visitor to your website using the  `return_url`  specified when the payment was created. Your website already knows the payment was successful and thanks the customer.

5.  When the payment is made PayCore.io will call your  [callback URL](/integration/callbacks/)  informing your website about the  [payment’s invoice status change](/products/commerce/payment-invoice/). You should define a callback when creating the initial payment.
    
    In response to your callback being called your application just needs to issue a  `200  OK`  status. From that response PayCore.io can tell that your processing of the new status was successful – for any other response we keep trying.

    This fetched status serves to mark the payment paid, trigger fulfilment and send out an email confirmation to the customer.


## Sequence diagrams

You will find here the usual integration flow of the Hosted Payment Page. In this flow, actors are defined as follow:

-   **Customer**: a physical person that wants to buy something.
-   **Browser**: the browser that the  **Consumer**  is able to control, for example on a desktop or a mobile.
-   **Merchant Backend**: your backend that will do the API calls to HPP, KP and Order Management.
-   **Commerce HPP**: the Hosted Payment Page API
-   **Payment Gateway**: the Payment Gateway API

## Flows

### New payment HPP request

### Forward using a created payment invoice


## Integration type

Your integration type decides how you set your parameters.

### Full-page redirect

Full-page is right for you if you take  [Alternative Payment Methods](#)  (APMs) through Worldpay, as well as card payments. Currently the iframe/lightbox integration doesn't support APMs.

In the full-page integration we use an iframe to display 3D Secure. All other Hosted Payment Page content is displayed full page in the browser.

### JavaScript SDK

[JavaScript SDK](#)  is right for you if you want a more advanced integration with card payments only:

-   **In the iframe setup**  all Hosted Payment Page content, including 3D Secure content, is displayed in an iframe within your website.
    
-   **In the lightbox setup**  we use an iframe to display 3D Secure within the lightbox. All other Hosted Payment Page content is displayed in the lightbox.

## Using metadata

In the example above we suppose you will store the  `reference_id`  that’s unique to the payment in your order table. This way your website is able to look-up the order for this payment when the webhook is triggered by PayCore.io. Your website is keeping track of the payment, effectively bringing about the connection between order and payment. This approach is easiest to grasp, which is why we use it in our example.

Alternatively you could ask PayCore.io to remember the unique identifier of your order by instructing the PayCore.io API to store it in the payment’s  `metadata`. You would provide it while creating the payment. In our example  `order_id` would be a good candidate. PayCore.io stores the metadata for you, when you fetch the payment during processing the webhook the metadata is included in the response. This is another way to connect orders and payments. We advise to use the  `metadata`  approach. This is the most popular approach and it’s easiest to implement.


## HPP in an iFrame

Although possible, using **iFrames** can introduce known usability, security and cross-domain browser issues.

Keep the following in mind:

-   Some redirect payment methods, such as iDEAL, do not allow displaying their pages in an iFrame; they will break out of it. Other redirect payment methods may require more available screen space than your iFrame allows. You should also be prepared to handle the difference in behaviour for the payment callback URL, as once the payment completes you may not be in an iFrame anymore.
-   Another problem you may face is the browser's cookie policy. The HPP solution requires cookies. Using an iFrame means that the browser may impose restrictions regarding the conditions in which cookies are allowed to be set within the iFrame. While there are workarounds to get the browser to accept cookies in a default configuration, the shopper may have configured a more restrictive policy. The most common problem is with Apple Safari and Google Chrome browsers: by default, they require user-initiated page loading inside an iFrame. This means that first the iFrame needs to be loaded with a page hosted at the parent domain. Secondly, on this page the user needs to actively click on a button submitting the redirect to the HPP.

PayCore.io cannot guarantee that all payment methods will work when using an iFrame, nor that the behaviour of a payment method will remain the same. Furthermore, the exact operation of a redirect payment method can differ between the test and the live environments.

## Customer details

### Customer email

The  `customer`  element contains more information about the customer making the payment.

It includes  `customer[email]`, which we can use to send an email to the shopper when the payment is authorised or refused (if you choose to enable this notification channel).

## Filtering payment services

For some payment requests, you may decide to filter the payment methods that are displayed on the HPP or bypass the HPP entirely.

-   The `options[show_services]`  field is used to display specific payment services.
-   The  `options[hide_services]`  field is used to prevent specific payment services from being displayed.
-   The  `service`  and the `service_fields` fields are used to take the customer directly to a specific payment service gateway. Example: `service: paypal_usd_hpp`.

All the payment services that are configured for your account, including the value you use to indicate the specific payment method, are available in the Dashboard interface under **Commerce Account Settings > Payment Methods > Name**.  

### Payment method availability by geolocation

Some payment methods are not available in all countries. For example, iDEAL is only offered if the shopper is from The Netherlands.

If the payment method selection is done on your web site, and the `allowedMethods` parameter contains a value for a payment method that is not available in all countries, we advise that you set the `countryCode` parameter as well. This ensures that the shopper only sees the payment methods that are relevant for their country.

For example, if you set `allowedMethods` to `ideal`, you need to set `countryCode` to `NL` to ensure that the iDEAL payment method is displayed.  
The list of countries where a payment method is offered is also available in the payment methods list in the CA interface, under the **Available Countries** column.

The list of payment methods may differ in the test and live environments. All payment methods are not automatically configured for the LIVE environment.

## Use cases

A shopper makes an order for a total amount payable of GBP 100. The order reference in your backoffice is Internet order 12345.

The order details are:

-   Goods shipping date to the shopper: before or not later than October 20th, 2016.
-   Order summary information to display on the payment review page for the order: _1 digital camera_.
-   The merchant account you are using is _TestMerchant_.
-   The order was placed before or on October 11th 2016, 10:30 am.
-   You want the payment offer to expire on October 11th 2016, 11:00 am.

This example represents a complete payment session, based on the order details above.

!!! example "Simple redirect example"
    ```html
    <form action="https://com.paycore.io/hpp/" method="get">
        <input type="hidden" name="public_key" value="<!-- Your public key like 'pk_live_***' -->"/>
        <input type="hidden" name="reference_id" value="12345" />
        <input type="hidden" name="currency" value="GBP" />
        <input type="hidden" name="description" value="Test payment" />
        <input type="hidden" name="amount" value="100" />
        <input type="submit" value="Pay with PayCore.io" />
    </form>
    ```

!!! example "Any amount pay button"
    ```html hl_lines="7"
    <form action="https://com.paycore.io/hpp/" method="get">
        <!-- This public key of TestMerchant -->
        <input type="hidden" name="public_key" value="<!-- Your public key like 'pk_live_***' -->"/>
        <input type="hidden" name="reference_id" value="12345" />
        <input type="hidden" name="currency" value="GBP" />
        <input type="hidden" name="description" value="Test payment" />
        Amount: <input type="text" name="amount" value="100" />
        <input type="submit" value="Pay with PayCore.io" />
    </form>
    ```

!!! example "Payment form with additional fields"
    ```html hl_lines="7 8"
    <form action="https://com.paycore.io/hpp/" method="get">
        <!-- This public key of TestMerchant -->
        <input type="hidden" name="public_key" value="<!-- Your public key like 'pk_live_***' -->"/>
        <input type="hidden" name="reference_id" value="12345" />
        <input type="hidden" name="currency" value="GBP" />
        <input type="hidden" name="description" value="Test payment" />
        <input type="hidden" name="metadata[key1]" value="SomeValue1" />
        <input type="hidden" name="metadata[key2]" value="SomeValue2" />
        <input type="hidden" name="amount" value="100" />
        <input type="submit" value="Pay with PayCore.io" />
    </form>
    ```

!!! example "The form of payment embed into iFrame"
    ```html hl_lines="1 10"
    <form action="https://com.paycore.io/hpp/" method="get" target="pay_frame">
        <!-- This public key of TestMerchant -->
        <input type="hidden" name="public_key" value="<!-- Your public key like 'pk_live_***' -->"/>
        <input type="hidden" name="reference_id" value="12345" />
        <input type="hidden" name="currency" value="GBP" />
        <input type="hidden" name="description" value="Test payment" />
        <input type="hidden" name="amount" value="100" />
        <input type="submit" value="Pay with PayCore.io" />
    </form>
    <iframe name="pay_frame" src="" id="pay_frame" width="XX" height="YY"></iframe>     
    ```

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

#### Additional Information

If you are returning the buyer to a script on your end it is important to note that parameter information will typically be returned by POST. Parameters however will be returned by GET if the Header Redirect method is used.

_**Please Note:**  You must also have a script set up as the return URL if you wish to receive the pass back information. If your return URL ends in any of the following extensions, then pass back will NOT occur, but the buyer will still be returned there : .htm, .html, .com, .zip, .pdf, .rar, .doc_

If you have problems with the return process you’re welcome to contact us at  [techsupport@2checkout.com](mailto:techsupport@2checkout.com)  to assist with troubleshooting the issue.

_**Please Note:**  If you do not specify an approved URL at the account level, product level, or with the x_receipt_link_url parameter the buyer will remain on the 2Checkout Order Processed page upon completion of the order._

## Idempotency

Idempotency prevents the processing of duplicate payment requests by using unique keys set in `reference_id` property.

Each `reference_id` must be a _Unique Identifier_, and you must manage the generation of your own keys to ensure that duplicates are not generated accidentally. Duplicate keys are only detected when provided by the same Commerce Account, so only submissions you provide can throw a duplicate error.

UUIDs are very large (128-bit) numbers. To avoid the "accidental" creation of duplicate keys, we recommend using a randomly generated UUID for your `reference_id`. This is especially important when generating `reference_id` for different payment requests.


## Locales Supported

PayCore.io supports locales across the following languages in multiple regions around the world:

-   English (en_*)
-   Ukraininan (uk_*)
-   Russian (ru_*)

Here is the complete list of supported locales, accompanied by their unique input values if you would like to pass a customer's locale to PayCore.io via the[API](/integration/) .

| Input Value | Locale                       |
|-------------|------------------------------|
| en          | English                      |
| en_AU       | English (Australia)          |
| en_CA       | English (Canada)             |
| en_IN       | English (India)              |
| en_IE       | English (Ireland)            |
| en_MT       | English (Malta)              |
| en_NZ       | English (New Zealand)        |
| en_PH       | English (Philippines)        |
| en_SG       | English (Singapore)          |
| en_ZA       | English (South Africa)       |
| en_GB       | English (United Kingdom)     |
| en_US       | English (United States)      |
| uk_RU       | Ukrainian (Russia            |
| uk_UA       | Ukrainian (Ukraine)          |
| ru_RU       | Russian (Russia)             |
| ru_UA       | Russian (Ukrainin)           |
| ru_BY       | Russian (Belarus)            |


## Metadata

If you want to store additional/custom data at a resource's level, you can make use of PayCore.io's Metadata.

For example, if you're a data service provider and want to store certain features of a particular plan, say "Usage Limit", "Speed within limit", etc., you can store it in the Metadata of the Plan.

Metadata can be passed during the Add/Update operations, for the following entities:

-   **Customers**
-   **Payment Invoice**
-   **Payout Invoice**

Metadata can be stored only in the JSON format. You can use nested JSON objects as well.

Considering the same example as above, if you want to store the additional features of a particular data plan here's what the JSON will look like:

```json
{  
    "features": {
        "usage-limit":"5GB",
        "speed-within-quota":"2MBbps",
        "post-usage-quota":"512kbps"
    }
}

```

!!! note
    -   Metadata is completely for your reference and will not be visible to customers. If you'd like to include fields in the hosted pages, invoices and customer portal, other than the default fields, use  [Custom Fields](https://www.chargebee.com/docs/custom_fields.html).
    -   Metadata will not be a filter criteria, or a part of the exports. For this purpose, use Custom Fields if necessary.
    -   **Copy Configurations**  option in your PayCore.io TEST site does not copy the Metadata saved in your TEST site to your LIVE site


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

### Language Encoding for Text Parameters

All text fields use UTF-8 encoding. Note however that the Quick Checkout payment form can only display Latin-1 characters

## Callback

When the payment process is complete Skrill sends the details of the transaction to the status_url page you provided in your payment request (see Table 2-1 on page 2-5). This is done with a standard HTTP POST. The Skrill server continues to post the status until a response of HTTP OK (200) is received from your server or the number of posts exceeds 10. The table below shows the parameters sent to your status_url page