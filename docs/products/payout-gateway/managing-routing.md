# Managing Routing

## Routing

**Routing Engine** is a system component which is indended to determine the route of processed operation.

**Routing engine** is responsible for automating dynamic **Routing Rules** and **Routing Strategies**. 
    
**Routing rules** are defined in the **Routing Scheme**, which is set for the [**Payout Point**](../payout-points).

**Routing Scheme** contains dynamic **Routing rules** that are executed when the **conditions** match, which are defined for context attributes.

![Routing](images/routing_general_diagram.png)

## Routing Strategy

**Payout Routing Strategy** describes how payouts are routed.

If all the conditions of the rule are met, the routing strategy is established for  it's available routes.

### Optimal

Funds are debited in equal shares from each route.

### Load balancing (Weight)

Funds are debited proportionally (as a percentage) from each routeIt is available to set load percentage manualy.

### Optimisation By Deposit Account Balance & Limits

The funds are debited off  from routes as the balance decreases (taking into account limits). 

Stages: 

1. Filter routes for which you can write off for a specific amount. 
2. Choosing a route with maximum balance. 
3. Performing an operation.

### Optimisation By Conversion

### Optimisation By Cost
