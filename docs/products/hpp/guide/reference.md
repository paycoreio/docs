# HPP Guide: Reference

Our HPP reference is here to help you find those hard-to-find bits of information all in one place. Use the navigation on the right to find your way around the page.

## Configuration options

This is a complete list of HPP configuration options.

### Basic (required)

| Key            | Type                    | Description                                                                                          |
| -------------- | ----------------------- | ---------------------------------------------------------------------------------------------------- |
| `public_key`   | `string`                | Public key of your commerce account — find it in the [Dashboard](https://dashboard.paycore.io/).     |
| `reference_id` | `string`                | Unique reference id of payment invoice.                                                              |
| `amount`       | `float`                 | Amount of payment invoice.                                                                           |
| `currency`     | `(string) CurrencyCode` | The currency of the amount (3-letter ISO 4217 code). Should be maintained by your commercial account |

!!! note
You can only create payments in currencies that have been enabled for your Commerce account. Please contact your account Administrator if you need to process in additional currencies.

### Optional

Optional values allow the user to more flexibly configure the HPP and add more information about payment invoice.
For example, specify the validity period of payment invoice.

| Key           | Type     | Description                                                                                                                        |
| ------------- | -------- | ---------------------------------------------------------------------------------------------------------------------------------- |
| `description` | `string` | Description of the payment invoice.                                                                                                |
| `expired`     | `number` | UNIX timestamp / DateTime ( 1559665584 )                                                                                           |
| `BASE_URL`    | `string` | The link on which your HPP is located. Is necessary in case of placing HPP on your own domain (for example CustomPaymentPage.сom). |

### Metadata

| Key        | Description                                                           |
| ---------- | --------------------------------------------------------------------- |
| `metadata` | Set of key/value pairs. Additional key:value info about your invoice. |

If you want to store additional/custom data at a resource's level, you can make use of PayCore.io's Metadata.

For example, if you're a data service provider and want to store certain features of a particular plan, say "Usage Limit", "Speed within limit", etc., you can store it in the Metadata of the Plan.

Metadata can be stored only as key-value array.

Considering the same example as above, if you want to store the additional features of a particular data plan here's what the JSON will look like:

```json
{
  "metadata": {
    "usage-limit": "5GB",
    "speed-within-quota": "2MBbps",
    "post-usage-quota": "512kbps"
  }
}
```

!!! note - Metadata is completely for your reference and will not be visible to customers. - Metadata will not be a filter criteria, or a part of the exports.

### Localization

| Key        | Type     | Description                                                                                                                          |
| ---------- | -------- | ------------------------------------------------------------------------------------------------------------------------------------ |
| `language` | `string` | The ISO 639-1 code of one of predefined languages: <ul><li>en </li><li>ru</li><li>uk</li> </ul> (Default: The user browser language) |

### Button label

User can define label of payment button, inside <b>style</b> object.

| Key                | Type     | Description                                                                                       |
| ------------------ | -------- | ------------------------------------------------------------------------------------------------- |
| `pay_button_label` | `string` | One of predefined labels: <ul><li>pay </li><li>donate</li><li>subscribe</li> </ul> (Default: Pay) |

##### Example

```javascript tab="Javascript"
payment_widget.init({
  public_key: "YOUR_COMMERCE_ACCOUNT_PUBLIC_KEY",
  amount: "100.00",
  currency: "USD",
  style: {
    pay_button_label: "pay",
  },
});
```

### Auto process

##### If the user has information about the service in which one he wants to create an invoice, he can specify it in the configuration.

| Key       | Type     | Description                                                    |
| --------- | -------- | -------------------------------------------------------------- |
| `service` | `string` | The code of service, for example: service : "bitcoin_btc_hpp:" |

You can check all enable services in sandbox.
Also, the user can configure payment link or code snippet to execute on the client page.

![alt text](../images/sandbox_service_demo.png)

##### If the selected service has mandatory fields, the user can also specify them. The field service_fields is used for this.

| Key              | Type                         | Description                                                                                  |
| ---------------- | ---------------------------- | -------------------------------------------------------------------------------------------- |
| `service_fields` | `(object) string[key:value]` | Fields of selected service. For example service_fields : [ { key: name, value: "John Doe" }] |

### Customization

One of our favorite things about HPP is its customizability. By following this styling guide, you can make changes to just about anything.

#### Display

HPP layout settings.

Set in `display` key as an object with the following properties:

| Key                     | Type   | Description                                                                              |
| ----------------------- | ------ | ---------------------------------------------------------------------------------------- |
| `hide_header`           | `bool` | Flag to hide header on HPP. Default: `false`.                                            |
| `hide_footer`           | `bool` | Flag to hide footer on HPP. Default: `false`.                                            |
| `hide_progress_bar`     | `bool` | Flag to hide progress bar on HPP. Default: `false`.                                      |
| `hide_method_filter`    | `bool` | Flag to hide method filter bar on HPP. Default: `false`.                                 |
| `hide_lifetime_counter` | `bool` | Flag to hide lifetime counter on HPP (if the expires date was passed). Default: `false`. |

#### Additional styling

HPP can be customized to fit seamlessly with your brand. All customizations are achieved using selectors, properties and values in a manner very familiar to developers.

You can define advanced styling and customization of HPP by setting the styling property `style` in the configuration object.

The available options for the styling object:

| Key                          | Description                                                                                                                                                                  |
| ---------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `show_method_logo`           | Payment methods has icons or logos to show on their card previews.                                                                                                           |
| `theme`                      | Our themes include several options to change the layout, colors and fonts of your payment page. Enum: "basic", "dark".                                                       |
| `success_color`              | Success color to show success notifies / messages.                                                                                                                           |
| `warning_color`              | Warning color to show warning notifies / messages.                                                                                                                           |
| `danger_color`               | Danger color to show danger notifies / messages.                                                                                                                             |
| `info_color`                 | Info color to show information notifies / messages.                                                                                                                          |
| `primary_color`              | Accent color.                                                                                                                                                                |
| `primary_variant`            | Based on primary color, or can be passed by you. If primary color will be dark - then this variable will be lighter. Used on most important UI components (stepper,buttons). |
| `primary_text_color`         | Primary text color, that used mostly everywhere.                                                                                                                             |
| `primary_background_color`   | Primary backgoround color.                                                                                                                                                   |
| `on_primary_color`           | The most readable color on elements with primary color fill. Based on primary_background_color color, or can be passed by you.                                               |
| `secondary_color`            | Secondary color.                                                                                                                                                             |
| `secondary_variant`          | Based on secondary color, or can be passed by you. If secondary color will be dark - then this variable will be a few tones lighter. Used on secondary UI components.        |
| `secondary_text_color`       | Secondary text color, used mostly on secondary UI components.                                                                                                                |
| `secondary_background_color` | Secondary background color (payment method cards).                                                                                                                           |
| `on_secondary_color`         | The most readable color on elements with secondary_background_color fill. Based on secondary_background_color color, or can be passed manually by you.                       |

Use the tabs below to view an example of styling, and a reference of selectors to use when styling your version of HPP.

> Soon...

## Handlers

HPP dispatches events which can be handled for various purposes. The table below provides the full list of events that you can attach one or more handlers to.

### Adding an event handler

If you don't use our payment_widget.js, and want just insert our HPP on your page by link with alredy configured link. You can listen iframe events.

#### HPP events

HPP emits next list of events, you can subscribe on your side.

| Method          | Description                |
| --------------- | -------------------------- |
| `close(object)` | On "return to shop button" |

```Javascript
window.addEventListener("ONE_OF_HPP_EVENTS", callback, false);
```

[Get more in documentation](https://developer.mozilla.org/ru/docs/Web/API/Window/postMessage)

### Getters / Setters

> Soon...

## Can we help?

Thanks for using PayCore.io. If you need any help or support, then message our support team at [support@paycore.io](mailto:support@paycore.io).

<style>
  .hpp_container {
        width: 375px;
        box-shadow: 0 22px 70px 4px rgba(0, 0, 0, 0.56);
        display:flex;
        justify-content: center;
        border-radius: 10px;        
        overflow: hidden;
  }
  .hpp_container iframe {
        border-radius: 10px;        
  }
</style>
