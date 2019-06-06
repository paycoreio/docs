# HPP Guide: Reference

Our HPP reference is here to help you find those hard-to-find bits of information all in one place. Use the navigation on the right to find your way around the page.

## Configuration options

This is a complete list of HPP configuration options.

!!! note "Language Encoding for Text Parameters"
    All text fields use UTF-8 encoding.

### Basic (required)

|Key           |Type                   |Description                                                                                      |
|--------------|-----------------------|-------------------------------------------------------------------------------------------------|
|`public_key`  |`string`               |Public key of your commerce account — find it in the  [Dashboard](https://dashboard.paycore.io/).|
|`reference_id`|`string`               |Unique reference id of payment invoice.                                                          |
|`amount`      |`float`                |Amount of payment invoice.                                                                       |
|`currency`    |`(string) CurrencyCode`|Currency of payment invoice.                                                                     |

!!! note
    You can only create payments in currencies that have been enabled for your Commerce account. Please contact your account Administrator if you need to process in additional currencies.


### Optional

#### Customer details

Set in `customer` key a customer object with following optional properties: 

|Key           |Type    |Description                        |
|--------------|--------|-----------------------------------|
|`email`       |`string`|The customer's email address.      |
|`name`        |`string`|The customer's name.               |
|`reference_id`|`string`|The customer's unique reference ID.|


#### Predefined payment service

|Key             |Type                        |Description                     |
|----------------|----------------------------|--------------------------------|
|`service`       |`(string) ServiceCode`      |Service you want to autoprocess.|
|`service_fields`|`(object) string[key:value]`|Fields of selected service.     |


### Customization

One of our favorite things about HPP is its customizability. By following this styling guide, you can make changes to just about anything.

#### Display

Language and HPP layout settings.

Set in `display` key as an array object with the following properties:

|Key                    |Type    |Description                                                                             |
|-----------------------|--------|----------------------------------------------------------------------------------------|
|`language`             |`string`|Use one of our pre-defined languages. Enum: `en`, `uk`, `ru`. Default: `auto`.          |
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
|`pay_button_label`          |Label on pay button translated on all supported languages. Enum:"book" "donate" "pay".                                                                                      |
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

>   Soon...


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

## Handlers

HPP dispatches events which can be handled for various purposes. The table below provides the full list of events that you can attach one or more handlers to.

!!! note
    Event constants on the JavaScript API are accessible via `HPP.Events`.

### Basic events

### Widget events

| Event | JavaScript constant | When |
|---|---|---|
| `ready` | `READY` | Triggered when HPP is registered on the global namespace and safe to use.|
| `frameActivated` | `FRAME_ACTIVATED` | Triggered when the form is rendered.|
| `cardValidationChanged` | `CARD_VALIDATION_CHANGED` | Triggered when the state of the card form validation changes. This will return: `isValid: true / false` |
| `cardSubmitted` | `CARD_SUBMITTED` | Triggered when the card form has been submitted.|
| `cardTokenised` | `CARD_TOKENISED` | Triggered after a card is tokenized. Returns an object containing the card token and card information such as payment methods, expiration date, the first 6 (bin) and last 4 digits of the credit card. |
| `cardTokenisationFailed` | `CARD_TOKENISATION_FAILED` | Triggered if card tokenization fails. |


### Adding an event handler

There are two ways to add an event handler: the standard approach or configuration options.

-   Method 1: The standard approach  
    ```
    Checkout.addEventHandler(Checkout.Events.<EVENT_CONSTANT>, handler, options);
    ```
-   Method 2: Configuration options
    ```
    HPP.init({
      publicKey: 'pk_test_6ff46046-30af-41d9-bf58-929022d2cd14',
      <eventName>: handler
    });
    ```

## Widget

### Actions

|Method        |Description                 |
|--------------|----------------------------|
|`init(object)`|Initializes widget with HPP.|

### Getters / Setters

|Method                                 |Description                                |
|---------------------------------------|-------------------------------------------|
|`getPublicKey()`, `setPublicKey(value)`|Your public key — find it in the Dashboard.|
|`getVersion()`                         |Returns the Widget version.                |


## Can we help?

Thanks for using PayCore.io. If you need any help or support, then message our support team at  [support@paycore.io](mailto:support@paycore.io).