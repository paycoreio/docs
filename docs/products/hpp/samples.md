# Hosted Payment Page Samples

The sequence of payment pages is the same whether you use a full-page redirect or Payment Widget integration:

-   [Card payment page flow](#Card)
-   [Alternative method payment page flow](#APM)
-   [Sample iframe and lightbox pages](#Sample)
-   [Currency conversion page](#Currency)
   

## Card payment page flow

The card payment page flow contains up to four pages, depending on the XML order you submit.

### 1. Payment method selection page

This first page displays the payment methods available to the shopper, which depend on:

-   The country specified
    
-   The payment methods set up on your account
    

**Best practice:** Alternatively, you can request the shopper's desired payment method on your website and then  [provide it to Worldpay](http://support.worldpay.com/support/kb/gg/corporate-gateway-guide/content/hostedintegration/paymentpageintegration.htm#Shopper's_payment_method). If you do, this page is bypassed, shortening the shopper's payment journey.

#### Tablet example

[![](http://support.worldpay.com/support/kb/gg/corporate-gateway-guide/content/resources/images/03000008_thumb_350_0.png)](http://support.worldpay.com/support/kb/gg/corporate-gateway-guide/content/resources/images/03000008.png)

### 2. Payment details page

Shoppers can securely enter their payment information on the payment details page. They can also opt to select a different payment method or to cancel the payment.

#### Tablet example

In this example, JavaScript is enabled and the fields are validated in real-time. The  _Make payment_  button is not available until all mandatory fields are populated correctly:

[![](http://support.worldpay.com/support/kb/gg/corporate-gateway-guide/content/resources/images/03000009_thumb_350_0.png)](http://support.worldpay.com/support/kb/gg/corporate-gateway-guide/content/resources/images/03000009.png)

### 3. 3D Secure iframe page

The payment pages display 3D Secure (3DS) content in an iframe. Shoppers have 30 minutes to enter their authentication details after which an expiry message is displayed. This 30-minute time-out period cannot be changed.

**Note:** We have no control over the display of 3DS content in an iframe. Scroll bars will appear within the 3DS Authentication window if the issuer's content exceeds the recommended scheme dimensions.

#### Tablet example

[![](http://support.worldpay.com/support/kb/gg/corporate-gateway-guide/content/resources/images/0300000a_thumb_350_0.png)](http://support.worldpay.com/support/kb/gg/corporate-gateway-guide/content/resources/images/0300000a.png)

### 4. Payment result page

The payment result page provides the status of the payment to the shopper.

**Best practice:** You can use Worldpay's default result pages. However, to ensure that your customer is returned to your website, we recommend that you  [provide your own](http://support.worldpay.com/support/kb/gg/corporate-gateway-guide/content/hostedintegration/paymentpageintegration.htm#Custom).

#### Tablet example

[![](http://support.worldpay.com/support/kb/gg/corporate-gateway-guide/content/resources/images/0300000b_thumb_350_0.png)](http://support.worldpay.com/support/kb/gg/corporate-gateway-guide/content/resources/images/0300000b.png)

## APM payment page flow

The payment page flow for an alternative payment method (APM) contains up to three payment pages depending on the APM selected.

### 1. Payment method selection page

This first page displays the payment methods available to the shopper, which depend on:

-   The country specified
    
-   The payment methods set up on your account
    

**Best practice:** Alternatively, you can request the shopper's desired payment method on your website and then  [provide it to Worldpay](http://support.worldpay.com/support/kb/gg/corporate-gateway-guide/content/hostedintegration/paymentpageintegration.htm#Shopper's_payment_method). If you do, this page is bypassed, shortening the shopper's payment journey.

#### Tablet example

[![](http://support.worldpay.com/support/kb/gg/corporate-gateway-guide/content/resources/images/03000008_thumb_350_0.png)](http://support.worldpay.com/support/kb/gg/corporate-gateway-guide/content/resources/images/03000008.png)

### 2. APM-specific pages

Depending on the APM used for payment, one or more APM-specific pages can be displayed next in the payment page flow.

![Closed](http://support.worldpay.com/support/kb/gg/corporate-gateway-guide/Skins/Default/Stylesheets/Images/transparent.gif)Data collection page

![Closed](http://support.worldpay.com/support/kb/gg/corporate-gateway-guide/Skins/Default/Stylesheets/Images/transparent.gif)APM provider page

![Closed](http://support.worldpay.com/support/kb/gg/corporate-gateway-guide/Skins/Default/Stylesheets/Images/transparent.gif)Offline bank transfer instruction page

### 3. Payment result page

The payment result page provides the status of the payment to the shopper.

**Best practice:** You can use Worldpay's default result pages. However, to ensure that your customer is returned to your website, we recommend that you  [provide your own](http://support.worldpay.com/support/kb/gg/corporate-gateway-guide/content/hostedintegration/paymentpageintegration.htm#Custom).

#### Tablet example

[![](http://support.worldpay.com/support/kb/gg/corporate-gateway-guide/content/resources/images/0300000b_thumb_350_0.png)](http://support.worldpay.com/support/kb/gg/corporate-gateway-guide/content/resources/images/0300000b.png)

**Note:** APMs must be consumed via a full-page redirect integration. The use of JavaScript is optional for this integration type, but you should note that Javascript may be required for some of the payment methods accessed via HPP. We therefore recommend that you tell your shoppers to have JavaScript and 3rd party cookies enabled before they select and use an APM website.

## Sample iframe and lightbox pages

We apply responsive web design to payment content displayed in an iframe or lightbox. When the width of the parent page is resized, the content in the iframe or lightbox is automatically adjusted.

Depending on the content being displayed, the height of the iframe or lightbox may increase. For an iframe, the content in the parent page that is below the iframe is pushed down as the payment page content expands vertically.

### Example of an iframe

With an iframe integration, an iframe containing the Hosted Payment Pages is injected directly into a webpage on your site. Although your customers are redirected to our secure payment pages for payment, it appears to them that they remain on your website.

The following figure shows a payment details page for a fictional bike shop. The payment details page is embedded as an iframe. In the figure, a red border has been added to indicate the area containing the iframe content.

[![]()]()

### Example of a lightbox

With lightbox integration, the Hosted Payment Pages are displayed in a layer over your website.

This image shows a lightbox with the payment details page for a fictional bike shop:

[![](http://support.worldpay.com/support/kb/gg/corporate-gateway-guide/content/resources/images/02000003_thumb_350_0.jpg)](http://support.worldpay.com/support/kb/gg/corporate-gateway-guide/content/resources/images/02000003.jpg)
