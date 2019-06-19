# HPP: Full Reference

Our HPP reference is here to help you find those hard-to-find bits of information all in one place. Use the navigation on the right to find your way around the page.

## Redirecting customers to HPP

You can use a Payment Link (standard HTML form) or Payment Widget (JS) to collect and pass payment and customer details to HPP. More about integration methods you could find [here](/products/hpp/quickstart/#integration-methods).

When the customer selects the payment option, your website should post the HTML form containing their transaction details to: `https://com.paycore.io/hpp/`.

Example: 

```
```

The HTML form should contain the mandatory hidden input fields listed in [Configuration](#configuration-options).

You should use a secure method of obtaining a session ID before redirecting customers to HPP, as described in [Secure redirection method](#).

!!! tip "Tips for improving the customer experience"
     -   Any parameters that you pass through in your HTML form, such [customer details](#customer-details) as first name, last name, and email, will be automatically populated (or populated and hidden) as appropriate, on the HPP making it easier for the customer to complete these forms.
     -   You can customize the appearance of the HPP using the options described in [Customization Guide](/products/hpp/customization/).
     -   To maximise conversion, PayCore.io recommends that you redirect customers to the HPP in the same browser window or embed the HPP in an iframe (see Embedding on [Quickstart Guide](/products/hpp/quickstart/)).

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

https://com-dev.paycore.io/hpp/?cpi=cpi_lIzWGho9BccHWeOa

The normal flow of events continues. This redirect must happen within 15 minutes of the original
request or the session will expire.

!!! note
    The Skrill Payment Platform treats GET/POST requests to the payment URL identically. As a result, you can also use an HTTP GET operation in place of POST in step 1 above and pass the payment parameters as name/value pairs in the query string. Similarly, in Step 4 above you could use a HTTP POST operation and pass the SESSION_ID value from Step 3 as the sid parameter in the message body. For code examples of how to implement this, see Redirecting the customer to Skrill on page 5-3.

!!! warning "Secure redirection restriction"
    The Quick Checkout Secure Restriction service allows merchants to create a whitelist of IP addresses (including ranges) specific to them, so that Gateway transactions are generated only for the IP addresses in the list.
    When the service is enabled and the list is populated, any request that doesn’t have a “SID” in Skrill will be blocked. By default, the service is disabled, and the Gateway allows all payment requests, with no restrictions.

    Configure the service as follows:

    1. Note the IP addresses/address ranges to add to the whitelist.
    2. Log in to your merchant account.
    3. Go to Settings > DEVELOPER SETTINGS.
    4. Under Quick Checkout Secure Restriction, set Enable service, and then, in the field below,
    type the IP addresses separated by spaces, or an address range in CIDR notation.
    5. Click Save. 


### Auto return the buyer to your website

With Auto return for PayCore.io payments, buyers are not required to click a button to return to your website after they complete their payments with PayCore.io. Auto Return applies to all PayCore.io Payments Standards payment buttons, including Buy Now, Shopping Cart, Subscription, and Donate buttons.

Auto Return shortens the checkout flow and immediately brings your buyers back to your website upon payment completion. To set up Auto Return, you need to turn it on in your PayCore.io account profile and enter the return URL that will be used to redirect your buyers back to your site. For more information on how to enable this feature in your PayCore.io account, see  [Auto return](https://developer.paypal.com/docs/classic/admin/checkout-settings/#auto-return-the-buyer-to-your-website)  in the Merchant setup and administration guide.


## Configuration options

This is a complete list of HPP configuration options.

Your [integration type](/products/hpp/quickstart/#integration-methods) decides how you set your parameters.

!!! warning "General requirements"

    HPP works only with:
    
    * [x]  *active* commerce account 
    * [x]  which *allows public creation for payment invoices*
    * [x]  and has at least *one active currency*

    Please contact your account Administrator if you need to set up those options for it.

!!! info "Language Encoding for Text Parameters"
    All text fields use UTF-8 encoding.

!!! info "URL parameters"
    All URL parameters must include the scheme at the front of the URL for example: `https://`. For example instead of `www.google.co.uk` you would need to use `https://www.google.co.uk`.

### Basic

All following fields are **required**<i class="md-icon">star</i>:

|Key                                      |Type                   |Description                                                                                      |
|-----------------------------------------|-----------------------|-------------------------------------------------------------------------------------------------|
|`public_key`<i class="md-icon">star</i>  |`string`               |Public key of your commerce account — find it in the  [Dashboard](https://dashboard.paycore.io/).|
|`reference_id`<i class="md-icon">star</i>|`string`               |Unique reference id of payment invoice.                                                          |
|`amount`<i class="md-icon">star</i>      |`float`                |The payment invoice amount.                                                                      |
|`currency`<i class="md-icon">star</i>    |`(string) CurrencyCode`|The payment invoice currency (three-letter ISO 4217 code).                                       |

!!! warning "Available currencies"
    You can only create payments in currencies that have been enabled for your Commerce account. Please contact your account Administrator if you need to process in additional currencies.

!!! tip "Idempotency"
    Idempotency prevents the processing of duplicate payment requests by using unique keys set in `reference_id` property.

    Each `reference_id` must be a _Unique Identifier_, and you must manage the generation of your own keys to ensure that duplicates are not generated accidentally. Duplicate keys are only detected when provided by the same Commerce Account, so only submissions you provide can throw a duplicate error.

    UUIDs are very large (128-bit) numbers. To avoid the "accidental" creation of duplicate keys, we recommend using a randomly generated UUID for your `reference_id`. This is especially important when generating `reference_id` for different payment requests.

!!! tip "Test mode"
    When you're processing live payments, replace  Public **Live** Key  with Public **Test** Key.

**Examples:**

```html tab="Payment Link Example"
<form action="https://com.paycore.io/hpp/" method="GET">
    <input type="hidden" name="public_key" value="<your_public_key>" />
    <input type="hidden" name="reference_id" value="<unique_reference_id>" />
    <input type="hidden" name="currency" value="USD" />
    <input type="hidden" name="description" value="Some goods" />
    <input type="hidden" name="amount" value="100" />
    <input type="submit" value="Pay with PayCore.io" />
</form>
```

### Optional

Optional values allow the user to more flexibly configure the HPP and add more information about payment invoice.
For example, specify the validity period of payment invoice.

|Key          |Type    |Description                        |
|-------------|--------|-----------------------------------|
|`description`|`string`|Description of the payment invoice.|
|`expires`    |`int`   |UNIX timestamp, UTC+0              |

### Customer details

The  `customer`  element contains more information about the customer making the payment.

It includes  `customer[email]`, which we can use to send an email to the shopper when the payment is authorised or refused (if you choose to enable this notification channel).

Set in `customer` key a customer object with following optional properties: 

|Key                                      |Type              |Description                        |
|-----------------------------------------|------------------|-----------------------------------|
|`reference_id`<i class="md-icon">star</i>|`string`          |The customer's unique reference ID.|
|`email`                                  |`string`          |The customer's email address.      |
|`phone`                                  |`string`          |The customer's phone number.       |
|`name`                                   |`string`          |The customer's name.               |
|`metadata`                               |`array[key:value]`|The customer's metadata.           |

??? example "Payment invoice with customer details"
    ```html tab="Payment Link" hl_lines="7 8"
    <form action="https://com.paycore.io/hpp/" method="get">
        <input type="hidden" name="public_key" value="pk_live_{your_key}"/>
        <input type="hidden" name="reference_id" value="12345" />
        <input type="hidden" name="currency" value="GBP" />
        <input type="hidden" name="description" value="Test payment" />
        <input type="hidden" name="amount" value="100" />
        <input type="hidden" name="customer[reference_id]" value="43263456" />
        <input type="hidden" name="customer[email]" value="john@email.com" />
        <input type="submit" value="Pay!" />
    </form>
    ```

    ```javascript tab="Payment Widget" hl_lines="8 9"
    window.payment_widget.init({
        selector: "HTML_ID_SELECTOR_TO_INSERT_WIDGET_INTO",
        public_key: "pk_live_{your_key}",
        amount: "100",
        currency: "GBP",
        description: "Test payment",
        customer: {
            reference_id: "43263456",
            email: "john@email.com"
        }
    });
    ```

### Auto process

The  `service`  and the `service_fields` fields are used to take the customer directly to a specific payment service gateway. Example: `service: paypal_usd_hpp`.

If the `service` has mandatory fields, the you need also specify them in `service_fields` field.

|Key             |Type                        |Description                                                             |
|----------------|----------------------------|------------------------------------------------------------------------|
|`service`       |`(string) ServiceCode`      |The code of service you want to autoprocess. Example: `bitcoin_btc_hpp`.|
|`service_fields`|`(object) string[key:value]`|Fields of selected service. Example: `[{'name': 'John Doe'}]`           |

??? tip "Try it out in Sandbox"
    You can check all enable services in [sandbox](/products/hpp/testing/).
    Also, the user can configure payment link or code snippet to execute on the client page.
    ![](images/sandbox_service_demo.png)

### Return URL

Provide custom `return_url` so that your shoppers are returned to your website at the end of the payment process.

If `return_url` are not provided, shoppers are redirected to one of PayCore.io's default result pages, where the payment journey ends.

You could override the return URL on individual transactions in `options` key a options object with following optional properties:

|Key         |Type    |Description                                                   |
|------------|--------|--------------------------------------------------------------|
|`return_url`|`string`|The customer's redirect URL at the end of the payment process.|

With Auto return turned on in your Commerce account, you can set the value of the  `return_url`  variable on individual transactions, which overrides the value of the return URL stored in your Commerce account settings.

For example, you might want to redirect payers to a URL on your site that is specific to that person, perhaps with a session-id or other transaction-related data included in the URL.

To set the return URL for individual transactions, include the  `return_url`  variable in the payment invoice configuration:

```html tab="Payment Link"
<INPUT TYPE="hidden" NAME="return" value=" The-Page-On-Your-Site-To-Which-Buyer-Returns;">

```

```html tab="Payment Widget"

```

!!! note
    It's not possible to override the Callback URL cause of the security violations. You must specify it Commerce Account settings.

### Localization

HPP supports following languages in multiple regions around the world: English, Ukraininan, Russian.

|Key       |Type    |Description                                                                                                    |
|----------|--------|---------------------------------------------------------------------------------------------------------------|
|`language`|`string`|The ISO 639-1 code of one of predefined languages. Enum: `en`, `uk`, `ru` (Default: The user browser language).|


### Customization

One of our favorite things about HPP is its customizability. By following this styling guide, you can make changes to just about anything.

#### Display

Language and HPP layout settings.

Set in `display` key as an array object with the following properties:

|Key                    |Type    |Description                                                                             |
|-----------------------|--------|----------------------------------------------------------------------------------------|
|`hide_header`          |`bool`  |Flag to hide header on HPP. Default: `false`.                                           |
|`hide_footer`          |`bool`  |Flag to hide footer on HPP. Default: `false`.                                           |
|`hide_progress_bar`    |`bool`  |Flag to hide progress bar on HPP. Default: `false`.                                     |
|`hide_method_filter`   |`bool`  |Flag to hide method filter bar on HPP. Default: `false`.                                |
|`hide_lifetime_counter`|`bool`  |Flag to hide lifetime counter on HPP (if the expires date was passed). Default: `false`.|

#### Filtering

!!! warning "Soon..."
    This feature not currently implemented.

For some payment requests, you may decide to filter the payment methods that are displayed on the HPP or bypass the HPP entirely.

Set in `display` key as an array object with the following properties:

|Key           |Type                 |Description                                                   |
|--------------|---------------------|--------------------------------------------------------------|
|`show_methods`|`array[method_codes]`|Flag to display specific payment methods.                     |
|`hide_methods`|`array[method_codes]`|Flag to prevent specific payment methods from being displayed.|

!!! note "Configured payment services"
    All the payment services that are configured for your account, including the value you use to indicate the specific payment method, are available in the Dashboard interface under **Commerce Account Settings > Payment Methods > Name**. 

#### Styling

HPP can be customized to fit seamlessly with your brand. All customizations are achieved using selectors, properties and values in a manner very familiar to developers.

You can define advanced styling and customization of HPP by setting the styling property `style` in the configuration object.

The available options for the styling object:

|Key                         |Description                                                                                                                                                                 |
|----------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|`pay_button_label`          |Label on pay button translated on all supported languages. Enum: `pay`, `subscribe`, `donate`.                                                                              |
|`show_method_logo`          |Payment methods has icons or logos to show on their card previews.                                                                                                          |
|`theme`                     |Our themes include several options to change the layout, colors and fonts of your payment page. Enum: `light`, `dark`.                                                      |
|`success_color`             |Success color to show success notifies / messages.                                                                                                                          |
|`warning_color`             |Warning color to show warning notifies / messages.                                                                                                                          |
|`danger_color`              |Danger color to show danger notifies / messages.                                                                                                                            |
|`info_color`                |Info color to show information notifies / messages.                                                                                                                         |
|`primary_color`             |Accent color.                                                                                                                                                               |
|`primary_variant`           |Based on primary color, or can be passed by you. If primary color will be dark - then this variable will be lighter. Used on most important UI components (stepper,buttons).|
|`primary_text_color`        |Primary text color, that used mostly everywhere.                                                                                                                            |
|`primary_background_color`  |Primary backgoround color.                                                                                                                                                  |
|`on_primary_color`          |The most readable color on elements with primary color fill. Based on primary_background_color color, or can be passed by you.                                              |
|`secondary_color`           |Secondary color.                                                                                                                                                            |
|`secondary_variant`         |Based on secondary color, or can be passed by you. If secondary color will be dark - then this variable will be a few tones lighter. Used on secondary UI components.       |
|`secondary_text_color`      |Secondary text color, used mostly on secondary UI components.                                                                                                               |
|`secondary_background_color`|Secondary background color (payment method cards).                                                                                                                          |
|`on_secondary_color`        |The most readable color on elements with secondary_background_color fill. Based on secondary_background_color color, or can be passed manually by you.                      |

Use the tabs below to view an example of styling, and a reference of selectors to use when styling your version of HPP.

**Examples:**

```javascript tab="Button label"
payment_widget.init({
  public_key: "YOUR_COMMERCE_ACCOUNT_PUBLIC_KEY",
  amount: "100.00",
  currency: "USD",
  style: {
    pay_button_label: "pay",
  },
});
```

### Metadata

Configuration property:

|Key       |Description                                                          |
|----------|---------------------------------------------------------------------|
|`metadata`|Set of key/value pairs. Additional key:value info about your invoice.|

In the example above we suppose you will store the  `reference_id`  that’s unique to the payment in your order table. This way your website is able to look-up the order for this payment when the callback is sended by PayCore.io. Your website is keeping track of the payment, effectively bringing about the connection between order and payment. This approach is easiest to grasp, which is why we use it in our example.

Alternatively you could ask PayCore.io to remember the unique identifier of your order by instructing the PayCore.io API to store it in the payment’s  `metadata`. You would provide it while creating the payment. In our example  `order_id` would be a good candidate. PayCore.io stores the metadata for you, when you fetch the payment during processing the callback the metadata is included in the response. This is another way to connect orders and payments. We advise to use the  `metadata`  approach. This is the most popular approach and it’s easiest to implement.

If you want to store additional/custom data at a resource's level, you can make use of PayCore.io's Metadata.

For example, if you're a data service provider and want to store certain features of a particular plan, say "Usage Limit", "Speed within limit", etc., you can store it in the Metadata of the Plan.

Considering the same example as above, if you want to store the additional features of a particular data plan here's what the JSON will look like:

```json
{  
    "metadata": {
        "usage-limit":"5GB",
        "speed-within-quota":"2MBbps",
        "post-usage-quota":"512kbps"
    }
}
```

!!! note
    -   Metadata is completely for your reference and will not be visible to customers.
    -   Metadata will not be a filter criteria, or a part of the exports.

## Embed options

We provide two ways to integrate:

-   **Full-page redirect**: Redirect to a customizable hosted payment page.
-   **Embedded (iframe or lightbox)**: Display an overlay payment form on your site.

### Full-page redirect

The Hosted Payment Page are displayed full-page in a browser. When your customers are redirected to the Hosted Payment Page, the web address for the Hosted Payment Page is displayed. Full-page redirect supports over 60 payment methods.

??? example "Payment Widget"
    Set flow field to "redirect" for Payment Widget integration method:

    ```javascript
    window.payment_widget.init({
        selector: "HTML_ID_SELECTOR_TO_INSERT_WIDGET_INTO",
        action: "redirect",
        public_key: "YOUR_PUBLIC_KEY",
        amount: "AMOUNT_OF_INVOICE",
        currency: "USD",
    });
    ```

### Embedded (iframe or lightbox)

The Hosted Payment Page are displayed in an **iframe** or **lightbox** within your website. When you redirect your customers to our payment page, the web address for your website remains unchanged, providing a more seamless shopping experience. An iframe or lightbox integration requires a more advanced integration.

We apply responsive web design to payment content displayed in an iframe or lightbox. When the width of the parent page is resized, the content in the iframe or lightbox is automatically adjusted.

Depending on the content being displayed, the height of the iframe or lightbox may increase. For an iframe, the content in the parent page that is below the iframe is pushed down as the payment page content expands vertically.

??? example "Payment Widget"
    Set flow field to "iframe" and create HTML tag to insert HPP into. Define "selector" key in widget configuration options;

    Example:

    ```javascript
    window.payment_widget.init({
        selector: "HTML_ID_SELECTOR_TO_INSERT_WIDGET_INTO",
        flow: "redirect",
        public_key: "YOUR_PUBLIC_KEY",
        amount: "AMOUNT_OF_INVOICE",
        currency: "USD",
    });
    ```

??? warning "Security and cross-domain browser restrictions"
    Although possible, using **iFrames** can introduce known usability, security and cross-domain browser issues.

    Keep the following in mind:

    -   Some redirect payment methods, such as iDEAL, do not allow displaying their pages in an iFrame; they will break out of it. Other redirect payment methods may require more available screen space than your iFrame allows. You should also be prepared to handle the difference in behaviour for the payment callback URL, as once the payment completes you may not be in an iFrame anymore.
    -   Another problem you may face is the browser's cookie policy. The HPP solution requires cookies. Using an iFrame means that the browser may impose restrictions regarding the conditions in which cookies are allowed to be set within the iFrame. While there are workarounds to get the browser to accept cookies in a default configuration, the shopper may have configured a more restrictive policy. The most common problem is with Apple Safari and Google Chrome browsers: by default, they require user-initiated page loading inside an iFrame. This means that first the iFrame needs to be loaded with a page hosted at the parent domain. Secondly, on this page the user needs to actively click on a button submitting the redirect to the HPP.

    PayCore.io cannot guarantee that all payment methods will work when using an iFrame, nor that the behaviour of a payment method will remain the same. Furthermore, the exact operation of a redirect payment method can differ between the test and the live environments.

## Payment Widget

### Library

The fastest and easiest way to use our HPP is to use `paymentWidget.js`.

To integrate the widget into your website, you can download it from the CDN or integrate the library into your javascript build.

Repository: https://unpkg.com/@paycore/payment-widget-js

**CDN:**

```html tab="Minified"
<script async src="https://unpkg.com/@paycore/payment-widget-js@0.1.93/dist/paymentWidget.umd.min.js"></script>
```

```html tab="Non-minified"
<script async src="https://unpkg.com/@paycore/payment-widget-js@0.1.93/dist/paymentWidget.umd.js"></script>
```

### Initialization

We offer three ways to integrate `payment_widget.js` into your website, so you can pick the one that best fits your requirements:

1. `window.HPPConfig`

    Our recommended option, which allows you to run `payment_widget.js` synchronously or asynchronously.

2. `window.payment_widget.init()`

    payment_widget.js can only be run synchronously with this method.


After you have specified all the required fields and customized your HPP, you will see a list of payment methods.

```html tab="HPPConfig"
<script>
window.HPPConfig = {
    selector: "HTML_ID_SELECTOR_TO_INSERT_WIDGET_INTO",
    flow: "iframe",
    public_key: "YOUR_PUBLIC_KEY",
    amount: "AMOUNT_OF_INVOICE",
    currency: "USD",
    baseUrl: "URL_OF_YOUR_HPP",
};
</script>
<script async src="https://unpkg.com/@paycore/payment-widget-js@0.1.93/dist/paymentWidget.umd.min.js"></script>
```

```html tab="init()"
<script src="https://unpkg.com/@paycore/payment-widget-js@0.1.93/dist/paymentWidget.umd.min.js"></script>
<script>
window.payment_widget.init({
    selector: "HTML_ID_SELECTOR_TO_INSERT_WIDGET_INTO",
    flow: "iframe",
    public_key: "YOUR_PUBLIC_KEY",
    amount: "AMOUNT_OF_INVOICE",
    currency: "USD",
    baseUrl: "URL_OF_YOUR_HPP",
});
</script>
```

### Configuration

|Key          |Type    |Description                                                                                                                    |
|-------------|--------|-------------------------------------------------------------------------------------------------------------------------------|
|`base_url`   |`string`|The link on which your HPP is located. Is necessary in case of placing HPP on your own domain (for example pay.yourdomain.сom).|
|`selector_id`|`string`|ID of DOM element you want HPP to insert into. Default: `payment_widget`.                                                      |
|`frame_id`   |`string`|ID of the frame that will be inserted Default: `payment_frame`.                                                                |
|`target`     |`string`|User can insert HPP inside iframe on page, or open HPP in new tab in browser `iframe`, `redirect`. Default : `iframe`.         |

??? example

    ```javascript hl_lines="2 3 4"
    <script async src="https://unpkg.com/@paycore/payment-widget-js@0.1.93/dist/paymentWidget.umd.min.js"></script>    
    <script>
    window.HPPConfig = {
        selector_id: "HTML_ID_SELECTOR_TO_INSERT_WIDGET_INTO",
        target: "iframe",
        base_url: "URL_OF_YOUR_HPP",
        public_key: "YOUR_PUBLIC_KEY",
        amount: "AMOUNT_OF_INVOICE",
        currency: "USD",
    };
    </script>
    ```


### Actions

|Method          |Description                                           |
|----------------|------------------------------------------------------|
|`init(object)`  |Accepts configuration and initializes widget with HPP.|
|`reinit(object)`|Accepts configuration and reinitializes widget.       |
|`close(object)` |Accepts configuration and closes widget.              |

**Examples:**

```javascript tab="init()"
payment_widget.init({
  public_key: "YOUR_COMMERCE_ACCOUNT_PUBLIC_KEY",
  amount: "100.00",
  currency: "USD",
  flow: "iframe",
});
```

```javascript tab="reinit()"
payment_widget.reinit({
  public_key: "YOUR_COMMERCE_ACCOUNT_PUBLIC_KEY",
  amount: "100.00",
  currency: "USD",
  flow: "iframe",
});
```

```javascript tab="close()"
payment_widget.close({
  frame_id: "ID_OF_IFRAME", // payment_widget by default
});
```

### Events

The widget handles a number of events that are generated by HPP which you can handle for various purposes.

The table below provides the full list of events that you can attach one or more handlers to.

|Event name      |When                                                                                                    |
|----------------|--------------------------------------------------------------------------------------------------------|
|`ready`         |Triggered when HPP is registered on the global namespace and safe to use.                               |
|`rendered`      |Triggered when HPP is rendered in iframe and ready to use by customer.                                  |
|`return`        |User click's on "Return to shop" button on success page. Removes the iframe from client page by default.|

#### Adding an event handler

!!! info "Events constants"
    Event constants on the JavaScript API are accessible via `payment_widget.events`.

There are three ways to add an event handler:

-   **Method 1**: The standard approach

    ```javascript tab="Bind by constant"
    payment_widget.bindEventListener(payment_widget.events.<EVENT_CONSTANT>, handler)
    ```

    ```javascript tab="Bind by name"
    payment_widget.bindEventListener(<event_name>, handler)
    ```

    ```javascript tab="Console logging example"
    payment_widget.bindEventListener('delete', () => {console.log("Iframe closing handle")})
    ```

-   **Method 2**: Configuration options

    ```javascript tab="HPPConfig"
    window.HPPConfig = {
        public_key: 'pk_test_<your_key>',
        handlers: {
            <event_name>: handler
        }
    };
    ```

    ```javascript tab="init()"
    payment_widget.init({
        public_key: 'pk_test_<your_key>',
        handlers: {
            <event_name>: handler
        }
    });
    ```

-   **Method 3**: Listen iframe events

    You could listen to events directly from iframe if you don't use our Payment Widget (JS).
    
    ```javascript
    window.addEventListener(<event_name>, callback, false);
    ```

    Get more about [Cross-window communication documentation](https://developer.mozilla.org/ru/docs/Web/API/Window/postMessage).

## Can we help?

Thanks for using PayCore.io. If you need any help or support, then message our support team at  [support@paycore.io](mailto:support@paycore.io).