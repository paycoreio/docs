# Customization of the Hosted Payment Page


## Customization

### Display

### Themes

### Styling

### Pay button label

### Override methods positions

### Override methods labels

### Hide methods 

### Override methods icons & logos

You have some optional parameters for HPP that will let you modify the look and feel of {{custom.company_name}}’s Hosted Payment Page in order to better match your own branding.

The payment page itself is hosted by {{custom.company_name}} and takes care of building forms, validating the input and securing your customers’ payment details. 

You can easily adapt the look and feel of that page in the _Dashboard > Commerce Account > Settings_.

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

Our {{custom.company_name}}'s Hosted Payment Page supports all payment methods in the world, so credit cards, wallets, bank transfer etc. Some of these methods are hosted on the page itself and some require a redirect to the third party (e.g. {{custom.company_name}}). Methods that are hosted on the page itself will follow the styling you configure in the Dashboard. Redirect methods will not, as their visual appearance is not handled by the {{custom.company_name}} platform.

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

The {{custom.company_name}}'s HPP provides out-of-the-box support for the following translations:

|Language |Locale|
|---------|------|
|English  |en_EN |
|Russian  |ru_RU |
|Ukrainian|uk_UA |


The translation that a shopper will see in your Hosted Payment Page is set with the `locale` specified in the HPP Request.

For shoppers in an unsupported `locale`, the default language (English - EN) will be used. If you have many of these shoppers in a specific locale, you may wish to  [create a localization](mailto:{{custom.support_email}}).

### Language packs

The texts that are shown on the HPP are translated in 35 languages and a lot more locales, so you can offer the page in the language your customers speak.

If you want to change the default text as it is provided by us, you have the following options:

-   Change the texts for all variants: use the language pack option in the configuration center
-   Change the text for only one variant: use the MyCheckout editor of the payment page (in the ‘Look and Feel’ section of the configuration center)

## White-label domain

The main domain for the MyCheckout hosted payment pages is:  **{{custom.pay_domain}}/hpp**

By default we offer a few subdomains that work for all our clients and that cannot be changed, indicated as "shared" subdomains. Using one of these shared subdomains works because the page shown to your consumer is based on your API key that is used when creating the URL for the hosted payment page and not on the subdomain of that URL that it does contain. In case you want a subdomain which contains a reference to your company name or own site, so that consumers will feel more confident in paying on that site, you can request up to 5 subdomains, excluding the shared subdomains.

## Styling


### Displaying payment and order details

Your payment request can include your own itemised payment details, such as an order description and amount breakdown. The customer can view these payment details by selecting the information icon displayed next to the amount and currency.

###  Preselecting or displaying payment methods

Preselecting or displaying payment methods Which payment methods are displayed depends on the configuration setting for your merchant account; there are two options: Fixed or Flexible (also known as Fixed Split Gateway or Flexible Split Gateway). This feature is set up for your account by {{custom.company_name}}. For details, please contact {{custom.company_name}} Merchant Services. The Fixed option is used to specify the payment methods to display to customers in the HPP payment form (if these payment methods are available in the customer’s country). For example, you can display only Paysafecard, Klarna, and Rapid Transfer on the payment form instead of the generic {{custom.company_name}} options for the customer’s country. These methods will appear in the Payment method tabs where their logos will be displayed. For a list of currently supported alternative payment methods and their codes, see Payment method codes on page 10-9.


### Straight Through Redirect

Straight Through Redirect is used with a single payment method code to automatically redirect
customers to the Payment Method provider’s website without showing the HPP payment
form. Once redirected, the customer provides their name and any other details required and then
confirms the payment. Straight Through Redirect reduces the number of steps to complete the
payment.
This option is only available if the following conditions apply:
• Your merchant account is set to use Fixed payment methods
• You pass a single payment method code in the payment_methods parameter
• You provide a customer email address using the pay_from_email parameter. If no email
address is provided, the HPP payment form will display to allow the customer to
enter their email address. The customer will then need to click Proceed to <Payment
Method> to continue. For example: Proceed to ALIPAY.
The following table lists the payment methods which support Straight Through Redirect: 

### Displaying your company logo or brand

You can display your company logo on HPP. To do this your payment request should
include the logo parameter, with a secure HTTPS link to the logo on your website. See the example
below.

``` html
<input type="hidden" name="logo" value="https://www.google.com/acme.png"> 
```

### Embedding the HPP page 

You can embed the HPP page in your website using an iframe. You can define in which frameset the return_url and cancel_url pages should be opened upon a successful payment or cancellation by the customer.

!!! note
    If you are embedding HPP in your website, you can request a version of HPP which has the header removed and the footer reduced in size, enabling a more seamless and integrated appearance on your website. For details, see Removing or reducing the header and reducing the footer on page 4-13.

 Below is an example of the HPP page displayed in an iframe.

 ![]()

 To prevent scroll bars appearing, the minimum sizes of the iframe for card payment is:
• 400px horizontally by 530px vertically - reduced header and footer option
• 400px horizontally by 550px vertically - reduced header option

The iframe option is implemented by submitting two additional parameters in your HTML form:

`return_url_target` Specifies a target in which the `return_url` value will be called upon successful payment from customer.
1 = '_top'
2 = '_parent'
3 = '_self'
4= '_blank'

These values have the following results: 

1 '_top' Opens the target URL in the full body of the window - the URL contents fills the
entire browser window.
2 '_parent' Opens the target URL in the parent frame.
3 '_self' Opens the target URL in the same frame as the payment form.
4 '_blank' Opens the target URL in a new browser window

!!! note
    The iframe option works well with card and SEPA payments. However, it may not be suitable if you are offering any alternative payments methods through {{custom.company_name}}, which typically redirect to third party websites of varying sizes.

 
 ## Removing or reducing the header and reducing the footer

 You can request a version of the HPP page without the {{custom.company_name}} header and amount fields. The security logo is also removed from the footer, to reduce its size. You can enable this option at any time by contacting {{custom.company_name}} Merchant Services. However, we recommend that you request this feature when integrating to ensure a good UI experience.

 See the example below.
 
 ![]()

 You can also reduce the size of the header by removing the payment details and merchant logo but leaving the language selector and footer unchanged as shown below:

 ![]()

## INTEGRATION OPTIONS

### Secure return_url parameter

A secure return_url parameter allows you to be certain that the customer has arrived at your return_url page by completing the payment process, rather than by looking up the return_url value in the page source code and entering it into their browser. However, this function only guarantees that the customer has completed the payment process, not that the payment had been processed. If this feature is not activated, please contact {{custom.company_name}} Merchant Services.

1. Example 1
    Merchant submits return_url without additional parameters. For example:
    https://example.com/return_url.cgi

    In this case {{custom.company_name}} will redirect the customer to:
    https://example.com/return_url.cgi?transaction_id=A205220&msid=730743ed4ef7ec631155f5e15d2f4fa0

2. Example 2
    Merchant submits the return_url with additional parameters. For example:
    https://example.com/return_url.cgi?par1=val1&par2=val2
    In this case {{custom.company_name}} will redirect the customer to:
    https://example.com/return_url.cgi?par1=val1&par2=val2&transaction_id=A205220&msid=730743ed4ef7ec631155f5e15d2f4fa0

#### Securing the return_url

If you want to be sure that the return_url for successful payments has not been intercepted or
guessed by an attacker, you can add a SALT value to the URL.
For example:
You could concatenate the MD5 hash of the transaction ID and a SALT of your choice and add it to the
URL:
12345salt
https://shop.representative.com/order/12345/uniqueID/00495f4a86847661888f0b2b9661693c/
success/
When the customer’s browser is redirected to this URL you can just compare the locally calculated
MD5 value with the one in the URL. For extra safety you can send a unique SALT value with every
payment transaction.

## Code integration examples

Below are two examples of HTML forms that can be submitted to {{custom.company_name}}. The first one is a basic example. The second example uses several additional features currently available with HPP. You can use these forms, ensuring that the values are replaced with your own values.

### Payment method codes

The table below describes the codes required for each payment method if passing specific payment methods in your payment request.


## Display logos of specific payment methods

An alternative option is to present only the logos of the specific payment methods you want to offer
your customers through {{custom.company_name}}. For example:
You can then define, in your HTML code, which payment method to display on the {{custom.company_name}} Quick
Checkout page when the customer selects this logo. There are two ways in which this feature can be
implemented:
• Fixed - only the selected payment method (or methods) is (are) displayed to the customer on
Quick Checkout. The first method supplied is preselected (set as the default option).
• Flexible - the selected payment method is displayed as the default option (preselected). {{custom.company_name}}
automatically detects the customer’s country (using Geolocation or the country parameter
passed by the merchant) and displays a localized version of the Quick Checkout page. Only
the payment methods available in the customer’s country are displayed. The order of the
payment methods tabs is based on the popularity and conversion rate for each method in the
customer’s country.
Co-branded payment method logos for display on your website are available at:
https://www.skrill.com/en/merchants/brand-centre
Note: The Payment methods you want to support are specified by including the relevant payment
method codes in the payment request submitted to {{custom.company_name}}. Alternatively, it is also possible to
request that only specific payment methods be enabled. For details, please contact {{custom.company_name}}
Merchant Services.