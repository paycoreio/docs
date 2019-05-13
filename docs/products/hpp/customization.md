# Customization of the Hosted Payment Page

You have some optional parameters for HPP that will let you modify the look and feel of PayCore.io’s Hosted Payment Page in order to better match your own branding.

## Give the page your desired look and feel

-   The look and feel opens up the Account settings, in which you can easily alter the look and the feel of the payment page yourself.
-   The language packs make it possible to upload your own localization.
-   The subdomain settings allow you to choose a part of the subdomain yourself.
-   Test URL allows you to set a test url so you are able to test a variant easily on any device with a browser.

If you have multiple merchants linked to your account, remember to chose the right merchant first before visiting any of the pages below the merchant settings.


## Edit the payment page

The MyCheckout editor is the tool to customize all your payment pages. This tool comes with a guided tour which will explain the available options to design your payment pages the way you like it. The first time you open this tool you will get notified by a popup in the bottom left corner of the screen. Clicking the question mark in the bottom left corner is also the place where you can always restart the tour.

The editor allows you to change elements such as: the logo, background colors, background images, buttons, fonts, input fields, and much more.


### Payment methods

Our PayCore.io's Hosted Payment Page supports all payment methods in the world, so credit cards, wallets, bank transfer etc. Some of these methods are hosted on the page itself and some require a redirect to the third party (e.g. Skrill). Methods that are hosted on the page itself will follow the styling you configure in the Dashboard. Redirect methods will not, as their visual appearance is not handled by the PayCore.io platform.

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

### Language packs

The texts that are shown on the HPP are translated in 35 languages and a lot more locales, so you can offer the page in the language your customers speak.

If you want to change the default text as it is provided by us, you have the following options:

-   Change the texts for all variants: use the language pack option in the configuration center
-   Change the text for only one variant: use the MyCheckout editor of the payment page (in the ‘Look and Feel’ section of the configuration center)

## White-label domain

The main domain for the MyCheckout hosted payment pages is:  **https://com.paycore.io/hpp**

By default we offer a few subdomains that work for all our clients and that cannot be changed, indicated as "shared" subdomains. Using one of these shared subdomains works because the page shown to your consumer is based on your API key that is used when creating the URL for the hosted payment page and not on the subdomain of that URL that it does contain. In case you want a subdomain which contains a reference to your company name or own site, so that consumers will feel more confident in paying on that site, you can request up to 5 subdomains, excluding the shared subdomains.

## Styling

