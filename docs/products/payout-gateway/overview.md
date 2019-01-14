# Payout Gateway


## Basic definitions

<table border="1px">

<tr ><th><b>Definition</b></th><th><b>Description</b></th></tr>
<tr><td><b>Payout</b></td><td>refers to the financial return or monetary disbursement of investment or annuity.</td></tr>
<tr><td><b>Payout Point</b></td><td>An aggregation entity that sets a configuration for processing a payout request through links to the exchange rate scheme and the routing scheme that are set for it.</td></tr>

<tr><td><b>Payout request</b></td><td>Operation for abstraction from route and payoute. Allows dynamic routing and failover for payouts.</td></tr>


<tr><td><b>Payout Request Event </b></td><td>Event log for a specific request for payout. Gives detailed information about the process for requesting payout.</td></tr>


<tr><td><b>Payout Routing Scheme</b></td><td> Aggregation entity responsible for routing configuration. Consists of a set of routing rules for each payout method</td></tr>


<tr><td><b>Payout Routing Rule</b></td><td>Route processing rule for the payout method currency. Sets the route processing strategy and the conditions under which this strategy will be active.</td></tr>


</table>



Payout Routing Strategy - is 


Payout Routing Strategy Types:

- Optimal
- Load balancing
- Optimisation By Deposit Account Balance & Limits
- Optimisation By Conversion
- Optimization By Cost