# HPP Guide: Reference

Our HPP reference is here to help you find those hard-to-find bits of information all in one place. Use the navigation on the right to find your way around the page.

## Configuration options

This is a complete list of HPP configuration options.

!!! note "Language Encoding for Text Parameters"
    All text fields use UTF-8 encoding.

### Basic (required)

All following fields are required:

|Key           |Type                   |Description                                                                                      |
|--------------|-----------------------|-------------------------------------------------------------------------------------------------|
|`public_key`  |`string`               |Public key of your commerce account — find it in the  [Dashboard](https://dashboard.paycore.io/).|
|`reference_id`|`string`               |Unique reference id of payment invoice.                                                          |
|`amount`      |`float`                |The payment invoice amount.                                                                      |
|`currency`    |`(string) CurrencyCode`|The payment invoice currency (three-letter ISO 4217 code).                                       |

!!! note
    You can only create payments in currencies that have been enabled for your Commerce account. Please contact your account Administrator if you need to process in additional currencies.

### Optional

Optional values allow the user to more flexibly configure the HPP and add more information about payment invoice.
For example, specify the validity period of payment invoice.

|Key          |Type    |Description                           |
|-------------|--------|--------------------------------------|
|`description`|`string`|Description of the payment invoice.   |
|`expires`    |`int`   |UNIX timestamp / DateTime (1559665584)|

### Options

Set in `options` key a options object with following optional properties: 

|Key         |Type    |Description                                                   |
|------------|--------|--------------------------------------------------------------|
|`return_url`|`string`|The customer's redirect URL at the end of the payment process.|


### Customer details

Set in `customer` key a customer object with following optional properties: 

|Key           |Type              |Description                        |
|--------------|------------------|-----------------------------------|
|`reference_id`|`string`          |The customer's unique reference ID.|
|`email`       |`string`          |The customer's email address.      |
|`name`        |`string`          |The customer's name.               |
|`metadata`    |`array[key:value]`|The customer's metadata.           |

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

If the user has information about the service in which one he wants to create an invoice, he can specify it in the configuration.
If the selected service has mandatory fields, the user can also specify them in `service_fields` field.

|Key             |Type                        |Description                                                             |
|----------------|----------------------------|------------------------------------------------------------------------|
|`service`       |`(string) ServiceCode`      |The code of service you want to autoprocess. Example: `bitcoin_btc_hpp`.|
|`service_fields`|`(object) string[key:value]`|Fields of selected service. Example: `[{'name': 'John Doe'}]`           |

??? tip "Try it out in Sandbox"
    You can check all enable services in sandbox.
    Also, the user can configure payment link or code snippet to execute on the client page.
    ![](images/sandbox_service_demo.png)

### Customization

One of our favorite things about HPP is its customizability. By following this styling guide, you can make changes to just about anything.

#### Localization

|Key       |Type    |Description                                                                                                    |
|----------|--------|---------------------------------------------------------------------------------------------------------------|
|`language`|`string`|The ISO 639-1 code of one of predefined languages. Enum: `en`, `uk`, `ru` (Default: The user browser language).|


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

#### Styling

HPP can be customized to fit seamlessly with your brand. All customizations are achieved using selectors, properties and values in a manner very familiar to developers.

You can define advanced styling and customization of HPP by setting the styling property `style` in the configuration object.

The available options for the styling object:

|Key                         |Description                                                                                                                                                                 |
|----------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|`pay_button_label`          |Label on pay button translated on all supported languages. Enum: `pay`, `subscribe`, `donate`.                                                                              |
|`show_method_logo`          |Payment methods has icons or logos to show on their card previews.                                                                                                          |
|`theme`                     |Our themes include several options to change the layout, colors and fonts of your payment page. Enum: "basic", "dark".                                                      |
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

|Key       |Description                                                          |
|----------|---------------------------------------------------------------------|
|`metadata`|Set of key/value pairs. Additional key:value info about your invoice.|

If you want to store additional/custom data at a resource's level, you can make use of PayCore.io's Metadata.

For example, if you're a data service provider and want to store certain features of a particular plan, say "Usage Limit", "Speed within limit", etc., you can store it in the Metadata of the Plan.

Metadata can be stored only as key-value array.

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

## Payment Widget

### Library

The fastest and easiest way to use our HPP is to use `payment_widget.js`.

To integrate the widget into your website, you can download it from the CDN or integrate the library into your javascript build.

```html tab="CDN"
<script src="https://unpkg.com/@paycore/payment-widget-js@0.1.91/dist/paymentWidget.umd.min.js"></script>
```

```html tab="JS package"
> Soon...
```

!!! note "Sandbox mode"
    When you're processing live payments, replace  `<script async src="https://cdn.paycore.io/sandbox/js/checkout.js"></script>`  with  `<script async src="https://cdn.paycore.io/js/checkout.js"></script>`.

### Initialization

We offer three ways to integrate `payment-widget.js` into your website, so you can pick the one that best fits your requirements:

1. `window.HPPConfig`

    Our recommended option, which allows you to run `payment-widget.js` synchronously or asynchronously. This simple integration method provides a widget displaying accepted payment icons alongside a  **Pay Now**  button that triggers the payment form.

2. `HPP.configure()`

    Gives you more control over how and when the  **Pay Now**  button and payment lightbox appear. We offer two variants:

    -   Variant A, which opens the payment lightbox instantly, without the use of a  **Pay Now**  button.
    -   Variant B, which uses a custom  **Pay Now**  button to launch the payment lightbox.

    Checkout.js can only be run synchronously with this method.

3. `HPP.render()`

    Renders the payment widget automatically onto your page, displaying the accepted payment icons, the  **Pay Now**  button, and the lightbox payment form. Checkout.render() offers an asynchronous payment process. This means that it can take several days to confirm the success or failure of a payment.|

After you have specified all the required fields and customized your HTP, you will see a list of payment methods.

```javascript
window.payment_widget.init({
    selector: "HTML_ID_SELECTOR_TO_INSERT_WIDGET_INTO",
    flow: "iframe",
    public_key: "YOUR_PUBLIC_KEY",
    amount: "AMOUNT_OF_INVOICE",
    currency: "USD",
    baseUrl: "URL_OF_YOUR_HPP",
});
```

### Configuration

|Key       |Type    |Description                                                                                                                               |
|----------|--------|------------------------------------------------------------------------------------------------------------------------------------------|
|`BASE_URL`|`string`|The link on which your HPP is located. Is necessary in case of placing HPP on your own domain (for example CustomPaymentPage.сom).        |
|`selector`|`string`|ID of DOM element you want HPP to insert into.                                                                                            |
|`frame_id`|`string`|Identifier of the frame that will be inserted Default "payment_widget"                                                                    |
|`flow`    |`string`|User can insert HPP inside iframe on page, or open HPP in new tab in browser <ul><li>iframe</li><li>redirect</li></ul> Default : 'iframe'.|

??? example

    ```javascript hl_lines="2 3 4"
    window.payment_widget.init({
        selector: "HTML_ID_SELECTOR_TO_INSERT_WIDGET_INTO",
        flow: "iframe",
        baseUrl: "URL_OF_YOUR_HPP",
        public_key: "YOUR_PUBLIC_KEY",
        amount: "AMOUNT_OF_INVOICE",
        currency: "USD",
    });
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

### Getters / Setters

|Method                                 |Description                                |
|---------------------------------------|-------------------------------------------|
|`getPublicKey()`, `setPublicKey(value)`|Your public key — find it in the Dashboard.|
|`getVersion()`                         |Returns the Widget version.                |


### Events

The widget handles a number of events that are generated by HPP which you can handle for various purposes.

The table below provides the full list of events that you can attach one or more handlers to.

|Event name      |When                                                                                                    |
|----------------|--------------------------------------------------------------------------------------------------------|
|`delete`        |User click's on "Return to shop" button on success page. Removes the iframe from client page by default.|
|`reinit`        |It's not being used now.                                                                                |
|`ready`         |Triggered when HPP is registered on the global namespace and safe to use.                               |
|`frameActivated`|Triggered when the form is rendered.                                                                    |

#### Adding an event handler

Event constants on the JavaScript API are accessible via `HPP.Events`.

There are two ways to add an event handler: the standard approach or configuration options:

-   **Method 1**: The standard approach  

    ```javascript
    Checkout.addEventHandler(Checkout.Events.<EVENT_CONSTANT>, handler, options);
    ```

    ```javascript tab="Basic"
    payment_widget.bindEventListener(<event_name>, handler)
    ```

    ```javascript tab="Console logging"
    payment_widget.bindEventListener('delete', () => {console.log("Iframe closing handle)})
    ```


-   **Method 2**: Configuration options

    ```javascript
    payment_widget.init({
        publicKey: 'pk_test_6ff46046-30af-41d9-bf58-929022d2cd14',
        <eventName>: handler
    });
    ```

-   **Method 3**: Listen iframe events

    You can listen iframe events if you don't use our Payment Widget (JS).

    ```javascript
    window.addEventListener("ONE_OF_HPP_EVENTS", callback, false);
    ```

    Get more in [`Window.postMessage()` documentation](https://developer.mozilla.org/ru/docs/Web/API/Window/postMessage).


## Can we help?

Thanks for using PayCore.io. If you need any help or support, then message our support team at  [support@paycore.io](mailto:support@paycore.io).