
# Tutorial : Drop-in Checkout

_**Honey Comics**_, a demo application, is a fictitious online comic book store providing subscription service for comics. They send comic books weekly to their subscribers. Users can sign up for a subscription providing their payment details. Click  [here](https://www.recur.in/drop-in/index.html)  for a demo. The steps below will help you build an app similar to the demo.

### [#](https://www.chargebee.com/checkout-portal-docs/drop-in-tutorial.html#setup)Setup

To checkout new subscription via drop-in-code, you need to:

-   Signup/Signin to your  [Chargebee account](https://www.chargebee.com/trial-signup.html)
-   Create a new plan with a trial period in your Chargebee TEST site.
-   [Configure a redirect URL](https://www.chargebee.com/docs/hosted_pages.html#1-plan-url-integration)  in the newly created plan. Users will be redirected to this URL, after a successful checkout.

### [#](https://www.chargebee.com/checkout-portal-docs/drop-in-tutorial.html#implementation)Implementation

Create an HTML page in your site for your customers to signup. Lets assume you are providing only one plan to your customers.

1.  Include the chargebee.js script mentioned below in your signup page.

```
  <script src="https://js.chargebee.com/v2/chargebee.js" data-cb-site="honeycomics-v3-test"></script>
  <!-- replace honeycomics-v3-test with your site name -->

```

2.  Create a link/button for your customers to subscribe to the plan. Clinking this link/button will open Chargebee's checkout page.

-   ![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACQAAAAkCAQAAABLCVATAAAAtElEQVR4AezSAQbDQBBG4bebqB44ACQUSgpgAasIsCBAoWebokKNX0cAIe8An5kxHKGzs5EHqjsjOxowjCeZ3xIFwxj2MUajc1DFBBUw65dx1BJQgulRZUcFzGtjJNU0pZgL/+oEJZi3ZyS1OkowV+Kg1xRM8TwaYsI1xxcSq81sSaoPmCYYQblndOWAcVQjBw+pGUEtJHwpZhRVPUONGUUVkoNKyAjqhuqzfqDM4AejYBQAAIiqhXbHMw6KAAAAAElFTkSuQmCC)index.html - [View full code![](https://www.chargebee.com/checkout-portal-docs/assets/img/external-link.67629f3f.svg)](https://github.com/chargebee/chargebee-checkout-samples/blob/docs_v2/drop-in/index.html)
    
-   HTML

![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACQAAAAkCAQAAABLCVATAAAAq0lEQVR4Ae3WtQECQRSEYYqAHrAaiNAW8BByoou2AcrCCzkawGVwlxlc/5d/57fruHtwIQfDhzF+NCHFoAZIKjTCrNsvjR+N90gIzhNPMHsRBA9snKpwCVTG8bq7FIfaOF4I/R2KQqNTbxChdIhQOkQoHSKUDnFqFxoTaJtK3AitKUMgrc+DjveHzGxuhdY9H/pDfehZ56A69GLntzg2tIp805WHIWMh4HhEEz/STPfVX4zRAAAAAElFTkSuQmCC)

```
<a href="javascript:void(0)"
    data-cb-type="checkout"
    data-cb-plan-id="basic"
    data-cb-plan-quantity="3"
    data-cb-addons_id_0="addon_1"
    data-cb-addons_quantity_0="2">Subscribe</a>

```

TIP

The link/button code above is available in your  [Chargebee site](https://www.chargebee.com/docs/checkout-v3.html#drop-in-script-based-checkout). This will help you create button/link for different plans and addons available in your Chargebee site.

WARNING

By default chargebee.js script will look for all the buttons present on page load and binds click events for opening checkout. However, if you are using Angular, React or Vue Frameworks, you must manually register click events to the buttons by calling  **Chargebee.registerAgain()**  after the HTML component is mounted/created.

### [#](https://www.chargebee.com/checkout-portal-docs/drop-in-tutorial.html#advanced-configurations)Advanced Configurations

If you want to pre-fill customer information, billing address or you want to pass some hidden information to Chargebee, you can pass it like:

```
var cbInstance = Chargebee.getInstance();
var cart = cbInstance.getCart();
var customer = {first_name: "First Name", last_name: "", billing_address:{first_name: "", last_name: "", company: "", phone: "", line1: "", line2: ""}};
// Setting custom fields
customer["cf_custom_field1"] = "Custom field 1"
cart.setCustomer(customer);

```

If you want to pre-fill shipping address information, you can pass it like:

```
var cbInstance = Chargebee.getInstance();
var cart = cbInstance.getCart();
var shippingAddress = {first_name: "", last_name: "", company: "", phone: "", line1: "", line2: ""};
cart.setShippingAddress(shippingAddress);

```

You can also modify plan quantity, addons and coupons dynamically:

```
var link = document.querySelectorAll("[data-cb-type=checkout]")[0];
var product = cbInstance.getProduct(link);

product.addAddon(addon: Addon | string); // you can either pass an object with id and quantity
product.incrementPlanQuantity();
product.decrementPlanQuantity();
product.removeAddon(addon: Addon | string);
product.addAddon(addon: Addon | string);
product.incrementAddonQty(addonId);
product.decrementAddonQty(addonId);
product.addCoupon(coupon_id);

// adding subscription level custom fields
product.data["cf_subtest"] = "subscription custom field";

```

### [#](https://www.chargebee.com/checkout-portal-docs/drop-in-tutorial.html#simulating-drop-in-script-functionality-with-your-button)Simulating drop in script functionality with your button

You can also use your own button instead of drop in code and open your checkout

```
  document.addEventListener("DOMContentLoaded", function() {
    let cbInstance = Chargebee.getInstance();
    let cart = cbInstance.getCart();
    let product = cbInstance.initializeProduct("cbdemo_grow");
    cart.replaceProduct(product);
    document.getElementById("subscribe").addEventListener("click", function(){
      cart.proceedToCheckout();
    });
  });

```