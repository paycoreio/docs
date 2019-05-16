
# Multicurrency Pricing

Chargebee's Multicurrency feature provides you with the option of creating Plans in multiple currencies, thus allowing your customers to pay in their local currency.

## Prerequisites[](https://www.chargebee.com/docs/multi-currency-pricing.html#prerequisites "Permalink")

If you are an API user, this feature requires you to pass the  **currency_code**input parameter for some of our API methods before enabling it on your Chargebee site, failing which errors will occur. To be able to do this you need to  [upgrade to API version V2](https://apidocs.chargebee.com/docs/api/v1#api-v2-upgradation-guide) if you are on our older version.

## Configuring Multicurrency[](https://www.chargebee.com/docs/multi-currency-pricing.html#configuring-multicurrency "Permalink")

Note

Some features are available only in selected plans. To know more, visit Chargebee's  [Plans and Pricing](https://www.chargebee.com/pricing.html) page.

The  **Base currency**  is your default currency, and will also be used as your reporting currency. Other currencies that you transact in will be under  **Additional Currencies**.

## 1. Adding and Managing Currencies[](https://www.chargebee.com/docs/multi-currency-pricing.html#1-adding-and-managing-currencies "Permalink")

1.  Go to  **Settings**  >  **Configure Chargebee**  >  **Currencies**  and under  **Additional Currencies**, click  **Enable Multicurrency**
    
    ![](https://www.chargebee.com/docs/assets/screenshots/images/multicurrency/enable.png)
    
2.  Click  **Add Currency**  and select the currency.
    
    -   You must choose a way to set the exchange rate against the base currency. The rate can be either set manually or you can let Chargebee handle it.
        
        ![](https://www.chargebee.com/docs/assets/screenshots/images/multicurrency/adding-currency.png)
        
    -   You can modify the settings by clicking on  **Manage**  under the more options menu for the currency.
        
        ![](https://www.chargebee.com/docs/assets/screenshots/images/multicurrency/manage.png)
        
3.  When the exchange rate is set manually for a currency, you can also schedule a change in the rate to happen at some time in the future:
    
    ![](https://www.chargebee.com/docs/assets/screenshots/images/multicurrency/schedule-rate-change.gif)
    
    -   The option to remove a set schedule is also found at the same location.

**Note on exchange rates**

Transactions made in the additional currencies will be converted to the base currency using the exchange rates that you configure in them, for reporting purposes.  [Learn more](https://www.chargebee.com/docs/multi-currency-pricing.html#reports).

If you choose  _Auto_  as the Exchange Rate Type, Chargebee uses the exchange rates available with  [currencylayer](https://currencylayer.com/) and  [Open Exchange Rates](https://openexchangerates.org/) .

Here's how Chargebee picks exchange rates:

If today is 4th August 2016,

-   The previous day's (3rd August 2016) closing rates will be synced with Chargebee from the exchange rate sources.
-   The synced rates will be used for transactions occurring from 00.30 UTC onwards.
-   For transactions occurring before 00.30 UTC, Chargebee will use the closing rates from 2nd August.
-   If Chargebee fails to sync with the exchange rate sources on 4th August 2016, the last available exchange rates will be used.
-   For transactions dated prior to 2011, the closest available exchange rate for 2011 will be used for conversion.

  
**Gateways and Multicurrency Support**  

Some gateways support transactions in multiple currencies and others don't. We recommend checking with your gateway to ensure that every transaction associated with the currencies you have enabled in your site can be processed:

-   If your gateway requires you to configure more than one account to process multiple currencies (this is the case with Authorize.Net for example), you can connect them all to Chargebee. Once connected, make sure you configure rules to specify which account is associated with a payment method type and currency at Chargebee's  [Smart Routing](https://www.chargebee.com/docs/gateway_settings.html#smart-routing) page (_Settings > Configure Chargebee > Payment Gateways > Manage Rules_).
    
-   If your gateway provides you with  **multiple merchant account IDs**rather than multiple accounts to handle transaction in different currencies (as is the case with Braintree), please contact Chargebee Support with a list of your merchant account IDs and details of which merchant account ID you would like to associate with a currency enabled in your site.
    

See also

[Configuring Payment Gateways: An Overview](https://www.chargebee.com/docs/gateway_settings.html)

## 2. Setting up your Product Catalog[](https://www.chargebee.com/docs/multi-currency-pricing.html#2-setting-up-your-product-catalog "Permalink")

The additional currencies that you've set up will appear for selection when you create your Plans/Addons/Coupons.

If you offer the same Plan in various currencies, you need to create the Plan for each of the currencies. This can be easily achieved using the  [Clone Plan](https://www.chargebee.com/docs/plans.html#clone-plan)option.

Note

-   For coupons, the option to set currencies will appear only when you set the  _Discount Type_  to  _Fixed Amount_.
-   If you want to link a Plan/Addon to a Coupon, both need to have the same currency configured.

## Subscriptions[](https://www.chargebee.com/docs/multi-currency-pricing.html#subscriptions "Permalink")

The currency of the Subscription depends on the Plan you select while creating the Subscription.  
Invoices generated for the Subscription will be in the same currency too.

Note

-   You will not be able to change the currency for existing subscriptions. If you want to change the currency for a Subscription, you need to cancel it and create a new one with the required currency.
-   The currency of the Subscription created via a Hosted Page checkout will be based on the currency of the Plan selected by the Customer.

## Customers[](https://www.chargebee.com/docs/multi-currency-pricing.html#customers "Permalink")

You can have  [credits](https://www.chargebee.com/docs/promotional-credits.html), payments, invoices, and subscriptions of multiple currencies for your Customers.

The currencies that you've set up will appear for selection when you add/deduct credits or payments.

![ ](https://www.chargebee.com/docs/assets/screenshots/images/multicurrency/add_credits_currency.png)

In the case of applying credits or payments on invoices, the currency of the credits/payment being applied and that of the invoice should match.

## Reports[](https://www.chargebee.com/docs/multi-currency-pricing.html#reports "Permalink")

The reports will display aggregate values in the base currency, by default. The value of transactions in all the configured currencies will be converted to the base currency value using their respective exchange rates, and will form a part of the reports' numbers.

![ ](https://www.chargebee.com/docs/assets/screenshots/images/multicurrency/dashboard_new_default.png)

You can also get the metrics in the currency you require by selecting the currency from the dropdown menu on the top right corner.

![ ](https://www.chargebee.com/docs/assets/screenshots/images/multicurrency/dashboard_new_currency.png)

The option to change currencies will also be available for the following reports:

-   At a glance
-   Monthly Plan Revenue
-   Monthly Addon Revenue
-   ARPU
-   Renewal Summary

## FAQ[](https://www.chargebee.com/docs/multi-currency-pricing.html#faq "Permalink")

### How can we change the base currency in Chargebee?

To change the base currency in Chargebee, the following conditions must be met:

-   All site data must be cleared. This includes the Product catalog ([plans](https://www.chargebee.com/docs/plans.html),  [addons](https://www.chargebee.com/docs/addons.html)  or  [coupons](https://www.chargebee.com/docs/coupons.html)), Customers, Subscriptions and so on.
-   There should be no  [Gateway Smart Routing](https://www.chargebee.com/docs/gateway_settings.html#smart-routing)  rule enabled.
-   Disable Stripe ACH Credit Transfer if you are using Stripe.
-   The currency being switched to must be supported by all gateways configured in the site.

So, if you wish to change the base currency without losing your site data, do the following:

1.  [Export](https://www.chargebee.com/docs/reporting.html#data-export)  your site data.
    
2.  [Delete](https://www.chargebee.com/docs/sites-intro.html#deleting-repopulating-test-site-data)  all site data.
    
3.  Disable any  [Gateway Smart Routing](https://www.chargebee.com/docs/gateway_settings.html#smart-routing).
    
4.  Change the base the currency. This step also removes any other currencies that were enabled in the site.
    
    > **_Note:_**  
    > If you have any gateways configured that are incompatible with the new base currency then you will be notified by an error. You must remove those gateways before the base currency can be changed.
    
5.  Configure any additional currencies needed.
    
6.  Configure any gateways removed in step 4.
    
7.  Configure Gateway Smart Routing.
    
8.  [Import](https://www.chargebee.com/docs/bulk-operations.html#perform-an-operation)  your site data.