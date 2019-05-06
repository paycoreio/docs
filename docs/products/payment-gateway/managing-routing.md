# Managing Routing

## Overview

Smart routing is more complex than simply finding the most cost-efficient route. Generally, it needs to include all relevant factors such as a transaction amount and currency, merchant or payout accounts limits, geographic location, and many more. Without intelligent automation, finding the optimal route can become a concern. PayCore's routing engine determines the best possible route across providers and accounts to optimize all incoming and outgoing transactions in real-time settings. As an illustration of the wider use of routing scenarios and their combinations, let's explore features that will help you to benefit from [PayCore.io](http://PayCore.io) smart routing.

Main features:

-   Real-time Routing Routing Schemes. Each transaction has instantly analyzed and routed to the most relevant payment provider, depending upon parameters selected in the routing setup.
-   Easy Setup. User-defined routing schemes are to manage payment routing and configuration options to optimize for maximum payment success.
-   Failover & Cascading. Non-IT staff can take full control and change any flow, add or suspend accounts, and many more through the web-based Dashboard.

## Routing Schemes

You can benefit from almost endless routing possibilities by creating a payment routing scheme that permits you to specify your own criteria. There are many standard options including, but not limited to, geolocation, a payment amount, merchant’s account balance, dates and times, transaction fees, availability, response times, gateway performance, and etc. Besides, you can set custom criteria such as a number of games played within a week or the route of the last successful transaction. The routing engine can execute an arbitrary sequence of steps defined in the routing schemes with adhered exchange rates scheme.

## Scheme Rules

All the rules in the service are checked sequentially.

The triggering of a rule is determined based on conditions for certain context attributes.

If all conditions are satisfied, then the rule applies, and all subsequent conditions are ignored.

All conditions must satisfy the criteria, the anacha, the following rule is taken.

When the rule is triggered, the specified routing strategy is used (see below).

## Context Attributes

|Name         |Description                                                                                                                                   |
|-------------|----------------------------------------------------------------------------------------------------------------------------------------------|
|Country      |Client's geolocation country.<br  /> Examples: UA, RU.                                                                                        |
|Region       |Client's geolocation region.<br  /> Examples: africa, americas, asia, europe, oceania, polar.                                                 |
|Subregion    |Client's geolocation sub-region.<br  /> Examples: caribbean, central_america, central_asia, eastern_africa, eastern_asia, eastern_europe, etc.|
|Email        |Customer's email.                                                                                                                             |
|Day of month |Day of the month of the current time.                                                                                                         |
|Day of week  |The week number of the month of the current time.                                                                                             |
|Day of year  |The day number in the current time year.                                                                                                      |
|Amount       |The amount of the payment request.                                                                                                            |
|Amount in EUR|The amount of the payment request is reduced to EUR.                                                                                          |
|Amount in USD|The amount of the payment request is reduced to USD.                                                                                          |
|Currency     |Payment request currency.                                                                                                                     |

## Routing Strategies

A routing scheme is a set of rules defining for each unique payment service, a strategy for choosing a payment route.

In essence, if we group all active payment routes by payment service, then these will be possible payment route options.

The routing strategy determines the algorithm for selecting a payment route from this list.

### Optimal strategy

The optimal strategy works on the principle of random selection of a payment route, taking into account its conversion and cost.

### Direct strategy

Direct routing always works along the same route. In fact, this is a link to the payment service of a single route without alternatives.

### Fee strategy

[PayCore.io](http://PayCore.io) can dynamically determine the optimal route based on an inherent transaction fee value. It can help to optimize all transactions and ensure lower transaction fees by orchestrating cashflows across payment providers and acquiring banks. Likewise, adding two more attributes of payment request currency and payee geographic location allows for a transformation of all payments into local transactions, eliminating cross-border and currency conversion fees for international transactions.

### Traversal strategy

Since PayCore allows you to work multiple payment gateways simultaneously or over time, it collects statistics on gateway-through transactions and dynamically calculates success rates by every payment route. The collected data enables you to follow the conversion optimization strategy by setting the attribute of the success rate in the routing scheme. It is worth mentioning that a large enough pool of transactional data is essentially needed to start following this strategy by a particular route.

### Weight strategy

Allocation rules are used to automatically allocate your incoming transactions to the correct merchant accounts. When a payment request comes into PayCore Gateway, it will be checked against the rules, and automatically allocated to a single account which meets the allocation weightings (by percentage) across multiple accounts or account balance criteria. Of course, you can always override or edit the allocation weightings and combine with other attributes such as geographic location, transaction amount, etc.

## Cascading Failover

Failed transactions are potentially the same or more important than the fees merchants pay. If any transaction fails, the routing engine will automatically reinitiate it until full execution or suspend for further investigation after a set number of attempts.