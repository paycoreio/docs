# Managing Payouts

There are two ways to initiate a financial transaction: **Payout** and **Payout Request**.

## Payout operation

 It's a low-level operation that initiates a financial transaction in the defined payment provider using the specified payment method, it simply provides communication with an external provider and the mapping of statuses. It is also allowing to receive a processed payment amount that in some cases may be less rather than the initiated payment amount.

## Payout request operation

**Payout request** is an operation with rich functionality to initiate a financial transaction due to the use of routing and exchange rate schemes. 

For example, this use enables to apply an exchange rate if a payout is made in the different currency then the currency of the deposit account where it is initiated from. The routing or failover conditions can be applied or changed using web interface in the in the appropriate Routing Scheme settings at the Dashboard. Those conditions will influence the selection of a deposit account from which a financial transaction will be initiated and the amount, which will be debited from this deposit account.

Whensoever a payout request is initiated it creates at least one payout operation. For example, if a payout operation fails or 'split mode' is set then multiple payout operations may be created to finalise the payout request until the final status is obtained. 


All initiated requests are listed in the Payout Request page of Payout Gateway section. 

Payouts related to the certain payout request are listed in the Payout Request  **`Payouts`** tab at the Request Overview page.
 
## Create a payout request

To create the payout request, follow these steps:

1. Create [a payout point]({{custom.dashboard_base_url}}payout-gateway/payout-points) and set currencies of the payout point. 
2. Connect a certain [payment provider]({{custom.dashboard_base_url}}connect-directory/payment-providers/);
3. Generate [an API key]({{custom.dashboard_base_url}}organization/settings/api-keys). 
  
The API key does not expire. If an API is compromissed, you can revoke it and generate a new one.

To add a currency of payout point, which is **not** listed in the drop down menu, then please write us a message to {{custom.support_email}} to support this currency.

A payout point currency is used mainly for accounting and reporting but you should specify at least one. The payout currency is a mandatory attribute ('point_currency') in a payout request, but it doesn't mean you can not initiate a financial transaction in the currency, which is different from the currency of the payout point.

{{custom.company_name}} has a **`test mode`** you should use for testing. It operates separately from **`live mode`**, so you can make changes without affecting your live data. Using a test provider account it is possible only to initiate test payout requests. Payout and payment requests can be initiated from live deposit accounts only when you connect at least one provider, which supports payouts from the list of [established integrations](/connectors/index.md). You can request a new integration by contacting our Customer Service team.

This example shows how to create a Payout Request:

```http
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

The full list of properties and atributes is available in the {{custom.company_name}} [Public API documentation]({{custom.redoc_base_url}}#tag/Payout-gateway/paths/~1payout-gateway~1payout-requests/post). 

The content of **fields** must be set according to **`payout-service`**. The list of available payout services can be found in the Payout Gateway on the [Dashboard]({{custom.dashboard_base_url}}payout-gateway/payout-routes) the **Payout Routes** tab.
 The payout service fields can be found in the [Payout Services]({{custom.dashboard_base_url}}connect-directory/payout-services) tab.
