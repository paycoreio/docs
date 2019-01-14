# Overview

Payout gateway is part of system that implements withdrawal operations. It based on two operations: payout and payout request. 

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
