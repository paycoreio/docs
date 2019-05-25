
# Integrating via Drop-in Script

## [#](https://www.chargebee.com/checkout-portal-docs/drop-in-integration.html#introduction)Introduction

Using Chargebee.js is the quickest way to start accepting payments. From within Chargebee's web interface you can  **generate**  the script needed for integrating both checkout and portal into your website.

All you need to do is to copy and paste it into your website's html page(s) to start accepting payments.

TIP

Jump to  [this page](https://www.chargebee.com/checkout-portal-docs/#/#integration-options)  to know more about other integration options

## [#](https://www.chargebee.com/checkout-portal-docs/drop-in-integration.html#generating-the-script)Generating the script

You can grab the scripts from the following screens:

-   Navigate to  _Product Catalog > Select a Plan > Grab code_  
    OR
-   Navigate to  _Settings > Configure Chargebee > Checkout & Portal > Integrate with Chargebee_  and copy the code

![](https://www.chargebee.com/checkout-portal-docs/assets/img/integration-ui.86cc37df.png)

## [#](https://www.chargebee.com/checkout-portal-docs/drop-in-integration.html#header-script)Header script

The generated header script is for including  **chargebee.js**  in your HTML page. The script tag should contain your Chargebee site name as a data attribute.

You need to include this script  **once**  in the head of html pages where you would like to embed the checkout(/portal) buttons.

#### [#](https://www.chargebee.com/checkout-portal-docs/drop-in-integration.html#example)_**Example**_

```
<script src="https://js.chargebee.com/v2/chargebee.js" data-cb-site="mannar-test"></script>


```

There are other data attributes which can be passed along with the script:

-   _**data-cb-site**_  
    _String_, required  
    site name
-   _**data-cb-domain**_  
    _String_, required if custom domain is enabled  
    Your custom domain  
    Eg:  **https://billing.yourdomain.com**
-   _**data-cb-ga-enabled**_  
    _Boolean_, optional  
    If you want Chargebee to send events to Google Analytics, add this data attribute. Please check this  [link](https://www.chargebee.com/checkout-portal-docs/drop-in-integration.html)  for more details.
-   _**data-cb-fbq-enabled**_  
    _Boolean_, optional  
    If you want Chargebee to send events to Facebook pixel tracking, add this data attribute. Please check this  [link](https://www.chargebee.com/checkout-portal-docs/drop-in-integration.html)  for more details.

#### [#](https://www.chargebee.com/checkout-portal-docs/drop-in-integration.html#example-2)_**Example**_

```
<!-- For custom domain -->
<script src="https://js.chargebee.com/v2/chargebee.js" data-cb-site="mannar-test" data-cb-domain="https://billing.yoursite.com"></script>

<!-- For tracking analytics -->
<script src="https://js.chargebee.com/v2/chargebee.js" data-cb-site="mannar-test" data-cb-ga-enabled="true"></script> <!-- Make sure you include google analytics script before this script-->

```

WARNING

Including the above data attributes is needed only for opening the checkout/portal via drop-in code.

## [#](https://www.chargebee.com/checkout-portal-docs/drop-in-integration.html#checkout-button)Checkout button

The generated checkout button code will have the plan id and addon id(s) as data attributes.

#### [#](https://www.chargebee.com/checkout-portal-docs/drop-in-integration.html#example-code)_**Example code**_

```
<a href="javascript:void(0)"
    data-cb-type="checkout"
    data-cb-plan-id="basic"
    data-cb-plan-quantity="3"
    data-cb-addons_id_0="addon_1"
    data-cb-addons_quantity_0="2">Subscribe</a>

```

TIP

If you are using any SPA frameworks and you are planning to make the button reactive, you can use your own button and our APIs for a cleaner solution. Check this  [code snippet](https://www.chargebee.com/checkout-portal-docs/drop-in-tutorial.html#simulating-drop-in-script-functionality-with-your-button)  for more details.

## [#](https://www.chargebee.com/checkout-portal-docs/drop-in-integration.html#portal-button)Portal button

Use the code snippet to open self-serve customer portal.

```
<a href="javascript:void(0)" data-cb-type="portal">
    MANAGE ACCOUNT
</a>

```

## [#](https://www.chargebee.com/checkout-portal-docs/drop-in-integration.html#checkout-url)Checkout URL

In case you want to open the checkout in a separate page instead of it opening within your website(/app) use the following format. (**Note:**  Please make sure you have a redirect url configured when you are using this URL).

```
https://<site-name>.chargebee.com/hosted_pages/plans/<plan-id>
```
