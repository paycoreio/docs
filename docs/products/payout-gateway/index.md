# Payout Gateway

**Payout Gateway** is a part of PayCore.io Payment Infrastructure to initiate and manage payouts. This gateway enables you to securely initiate financial transactions within connected payment providers in order to send payments to a large number of recipients simultaneously. 

There are two ways to initiate a financial transaction: **Payout** and **Payout Request**.

### Payout operation

 It's a low-level operation that initiates a financial transaction in the defined payment provider using the specified payment method, it simply provides communication with an external provider and the mapping of statuses. It is also allowing to receive a processed payment amount that in some cases may be less rather than the initiated payment amount.

### Payout request operation

**Payout request** is an operation with rich functionality to initiate a financial transaction due to the use of routing and exchange rate schemes. 

For example, this use enables to apply an exchange rate if a payout is made in the different currency then the currency of the deposit account where it is initiated from. The routing or failover conditions can be applied or changed using web interface in the in the appropriate Routing Scheme settings at the Dashboard. Those conditions will influence the selection of a deposit account from which a financial transaction will be initiated and the amount, which will be debited from this deposit account.

Whensoever a payout request is initiated it creates at least one payout operation. For example, if a payout operation fails or 'split mode' is set then multiple payout operations may be created to finalise the payout request until the final status is obtained. 


All initiated requests are listed in the Payout Request page of Payout Gateway section. 

Payouts related to the certain payout request are listed in the Payout Request  **`Payouts`** tab at the Request Overview page.

 
### Create a payout request

To create the payout request, follow these steps:

1. Create <a href="https://dashboard.paycore.io/payout-gateway/payout-points" target="_blank" rel="noopener">a payout point</a> and set currencies of the payout point. 
2. Connect a certain <a href="https://dashboard.paycore.io/connect-directory/payment-providers/" target="_blank" rel="noopener">payment provider</a>;
3. Generate <a href="https://dashboard.paycore.io/organization/settings/api-keys" target="_blank" rel="noopener">an API key</a>. 
  

The API key does not expire. If an API is compromissed, you can revoke it and generate a new one.

To add a currency of payout point, which is **not** listed in the drop down menu, then please write us a message to support@paycore.io to support this currency.

A payout point currency is used mainly for accounting and reporting but you should specify at least one. The payout currency is a mandatory attribute ('point_currency') in a payout request, but it doesn't mean you can not initiate a financial transaction in the currency, which is different from the currency of the payout point.

PayCore.io has a **`test mode`** you should use for testing. It operates separately from **`live mode`**, so you can make changes without affecting your live data. Using a test provider account it is possible only to initiate test payout requests. Payout and payment requests can be initiated from live deposit accounts only when you connect at least one provider, which supports payouts from the list of [established integrations](../../payment-providers/index.md). You can request a new integration by contacting our Customer Service team.

This example shows how to create a Payout Request:

```
POST /v1/payout-gateway/payout-requests HTTP/1.1
Host: api.paycore.io
Content-Type: application/json

{
  "data": {
    "type": "payout-request",
    "attributes": {
      "point_amount": 1,
	    "point_id": "pop_SHZxNhPrDHtCf8hH",
      "point_currency": "USD",
      "service": "test_usd",
      "test_mode": true,
      "fields": {
    	  "account":"some_random_string"
      }
    }
  }
}
```    

The full list of properties and atributes is available in the PayCore.io <a href="https://apidoc.paycore.io/#tag/Payout-gateway/paths/~1payout-gateway~1payout-requests/post" target="_blank" rel="noopener">Public API documentation</a>. 

The content of **fields** must be set according to **`payout-service`**. The list of available payout services can be found in the Payout Gateway on the <a href="https://dashboard.paycore.io/payout-gateway/payout-routes" target="_blank" rel="noopener">Dashboard</a> the **Payout Routes** tab. The payout service fields can be found in the <a href="https://dashboard.paycore.io/connect-directory/payout-services" target="_blank" rel="noopener">Payout Services</a> tab.

Here is a list of terms we use and their definitions on payouts.

<table border="1px">

<tr ><th><b>Definition</b></th><th><b>Description</b></th></tr>
<tr><td><b>Payout</b></td><td>refers to the financial return or monetary disbursement of investment or annuity.</td></tr>
<tr><td><b>Payout Point</b></td><td>An aggregation entity that sets a configuration for processing a payout request through links to the exchange rate scheme and the routing scheme that are set for it.</td></tr>

<tr><td><b>Payout request</b></td><td>Operation for abstraction from route and payout. Allows dynamic routing and failover for payouts.</td></tr>


<tr><td><b>Payout Request Event </b></td><td>Event log for a specific request for payout. Gives detailed information about the process for requesting payout.</td></tr>


<tr><td><b>Payout Routing Scheme</b></td><td> Aggregation entity responsible for routing configuration. Consists of a set of routing rules for each payout method</td></tr>


<tr><td><b>Payout Routing Rule</b></td><td>Route processing rule for the payout method currency. Sets the route processing strategy and the conditions under which this strategy will be active.</td></tr>


</table>



## Routing

!!! info "Definition"
    **Routing Engine** - is a system component which is indended to determine the route of processed operation.


**`Routing engine`** is responsible for automating dynamic **`Routing Rules`** and **`Routing Strategies`**. 
    
**`Routing rules`** are defined in the **`Routing Scheme`**, which is set for the [**Payout Point**](../payout-points).

!!! info "Definition"
    **Routing Scheme** -  contains dynamic **`Routing rules`** that are executed when the **`conditions`** match, which are defined for context attributes.

!!! info "Routing logic diagram"
    [![Routing](images/routing_general_diagram.png)](images/routing_general_diagram.png)

### Routing Strategy

**Payout Routing Strategy** describes how payouts are routed.

If all the conditions of the rule are met, the routing strategy is established for  it's available routes.

#### Routing Strategy Types

<table border="1px">

<tr ><th><b>Type</b></th><th><b>Description</b></th><th><b>Diagram</b></th></tr>
<tr><td><b>Optimal</b></td><td> Funds are debited in equal shares from each route</td><td></td></tr>
<tr><td><b>Load balancing<br><i>(Weight)</i></b></td><td>Funds are debited proportionally (as a percentage) from each route<br><i>It is available to set load percentage manualy</i></td><td><a href= "images/routing_load_balancing_diagram.png" target="_blank" noopener="rel"><img src="images/routing_load_balancing_diagram.png"></a></td></tr>
<tr><td><b>Optimisation By Deposit Account Balance & Limits</b></td><td>The funds are debited off  from routes as the balance decreases (taking into account limits).<br>
Stages:<br>
1) Filter routes for which you can write off for a specific amount<br>
2) Choosing a route with maximum balance<br>
3) Performing an operation<br>
</td><td><a href= "images/routing_balance_limits_diagram.png" target="_blank" noopener="rel"><img src="images/routing_balance_limits_diagram.png"></a></td></tr>
<tr><td><b>Optimisation By Conversion</b></td><td></td><td><a href= "images/routing_conversion_diagram.png" target="_blank" noopener="rel"><img src="images/routing_conversion_diagram.png"></a></td></tr>
<tr><td><b>Optimization By Cost</b></td><td></td><td><a href= "images/routing_cost_diagram.png" target="_blank" noopener="rel"><img src="images/routing_cost_diagram.png"></a></td></tr>
</table>
