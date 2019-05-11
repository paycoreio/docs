# Customization of the Hosted Payment Page

You have some optional parameters for HPP that will let you modify the look and feel of PayCore.io’s Hosted Payment Page in order to better match your own branding.

## Overview


## Logo

When provided your logo will appear on the Hosted Payment Page, its position will depend on the Customer’s browser capacities as HPP as different responsive designs. Image has to be served over HTTPS to avoid all kind of security warning on the Customer’s browser.

Url of the logo, must be served over HTTPS.

|Property|Value   |
|--------|--------|
|Key     |logo_url|
|Type    |String  |
|Default |none    |

!!! example
    ```json
    {
        "options": {
            "logo_url": "https://example.com/logo.jpg"
        }
    }
    ```

## Background Images

Use this parameter to send a list of images to use as backgrounds on the payment page. HPP will use the image that fits the better to the Consumer’s browser capacities using the width parameter given. Images have to be served over HTTPS to avoid all kind of security warning on the Consumer’s browser.

## Complete purchase button labeling

Depending on the kind of goods you are selling, use this parameter to change the label of the button on which the Customer will click to finalize the purchase. Label is localized in the locale of the Session.

| Value     | Button label in English |
|-----------|-------------------------|
| BOOK      | Book Now                |
| BUY       | Buy                     |
| CONTINUE  | Buy                     |
| DOWNLOAD  | Download Now            |
| ORDER     | Buy                     |
| RENT      | Rent Now                |
| SUBSCRIBE | Subscribe Now           |

## Localization

The PayCore.io's HPP provides out-of-the-box support for the following translations:

|Language |Locale|
|---------|------|
|English  |en_EN |
|Russian  |ru_RU |
|Ukrainian|uk_UA |


The translation that a shopper will see in your Hosted Payment Page is set with the `locale` specified in the HPP Request. For each translation, you can  [customize](https://docs.adyen.com/checkout/web-sdk/customization/localization/#customize-localization)  the text displayed on your Checkout.

For shoppers in an unsupported `locale`, the default language (English - EN) will be used. If you have many of these shoppers in a specific locale, you may wish to  [create a localization](mailto:support@paycore.io).