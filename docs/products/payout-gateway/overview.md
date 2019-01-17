# Payout Gateway

Payout gateway is a part of PayCore.io Payment Infrastructure manage payouts. This gateway enables you to initiate financial transactions in the connected payment providers in order to send payments to a large number of recipients simultaneously. There are two ways to initiate financial transactions: payout and payout request.

### Payout operation
This operation is responsible for communication with external provider. It is the low level operation that responsible for status mapping, processed amount calculation.

### Payout request operation 
This operation has many features that make payout processing simpler:
1. Exchange rates
1. Failover
1. Splitting 
 
It creates payout operation under the hood during processing. 

### Create first payout request
1. Create <a href="https://dashboard.paycore.io/payout-gateway/payout-points" target="_blank" rel="noopener">payout point</a> with desired currencies 
1. Connect test <a href="https://dashboard.paycore.io/connect-directory/payment-providers/test/general" target="_blank" rel="noopener">provider account</a>
1. Create <a href="https://dashboard.paycore.io/organization/settings/api-keys" target="_blank" rel="noopener">API key</a>

All operation in Paycore.io have test mode. After connecting test provider you can create only test operations. Production operations could be created only after successful connection one of [available providers](../../payment-providers/index.md). 
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
Full list of properties available <a href="https://apidoc.paycore.io/#tag/Payout-gateway/paths/~1payout-gateway~1payout-requests/post" target="_blank" rel="noopener">here</a>. Content of **fields** must be set according to payout-service. List of available payout services can be found in <a href="https://dashboard.paycore.io/payout-gateway/payout-routes" target="_blank" rel="noopener">dashboard</a> in column **service**. Payout service fields can be found on <a href="https://dashboard.paycore.io/connect-directory/payout-services" target="_blank" rel="noopener">services page</a> in overview.


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


**```Routing engine```** is responsible for automating dynamic **```Routing Rules```** and **```Routing Strategies```**. 
    
**```Routing rules```** are defined in the **```Routing Scheme```**, which is set for the [**Payout Point**](../payout-points).

!!! info "Definition"
    **Routing Scheme** -  contains dynamic **```Routing rules```** that are executed when the **```conditions```** match, which are defined for context attributes.

!!! info "Routing logic diagram"
    [![Routing](images/routing_general_diagram.png)](images/routing_general_diagram.png)

### Routing Strategy

!!! info
    ** Payout Routing Strategy** describes how payouts are routed.

    If all the conditions of the rule are met, the routing strategy is established for  it's available routes.

#### Routing Strategy Types

<table border="1px">

<tr ><th><b>Type</b></th><th><b>Description</b></th><th><b>Diagram</b></th></tr>
<tr><td><b>Optimal</b></td><td> Funds are debited in equal shares from each route</td><td></td></tr>
<tr><td><b>Load balancing<br><i>(Weight)</i></b></td><td>Funds are debited proportionally (as a percentage) from each route<br><i>It is available to set load percentage manualy</i></td><td><a href= "../images/routing_load_balancing_diagram.png" target="_blank" noopener="rel"><img src="../images/routing_load_balancing_diagram.png"></a></td></tr>
<tr><td><b>Optimisation By Deposit Account Balance & Limits</b></td><td>The funds are debited off  from routes as the balance decreases (taking into account limits).<br>
Stages:<br>
1) Filter routes for which you can write off for a specific amount<br>
2) Choosing a route with maximum balance<br>
3) Performing an operation<br>
</td><td><a href= "../images/routing_balance_limits_diagram.png" target="_blank" noopener="rel"><img src="../images/routing_balance_limits_diagram.png"></a></td></tr>
<tr><td><b>Optimisation By Conversion</b></td><td></td><td><a href= "../images/routing_conversion_diagram.png" target="_blank" noopener="rel"><img src="../images/routing_conversion_diagram.png"></a></td></tr>
<tr><td><b>Optimization By Cost</b></td><td></td><td><a href= "../images/routing_cost_diagram.png" target="_blank" noopener="rel"><img src="../images/routing_cost_diagram.png"></a></td></tr>
</table>
