# Webhooks

Currently, PayСore.io supports 2 version of callbacks. This document only describes the newer version. All organisations created after 12-01-2018 by default use the new version of callbacks. PayСore.io sign data using organization secret keys. They can be obtained in organization settings. All callbacks are signed live or test secret key according to the mode in which operation has been created.

## Format
All webhooks are sent in JSON-API format. It is the same as in public API. 

This an example for payment-request operation callback data:

```
{
   "data":{
      "type":"payment-requests",
      "id":"prq_tqyozP8kKzsEJlOd",
      "attributes":{
         "amount":100,
         "paid_amount":0,
         "amount_readonly":true,
         "currency":"UAH",
         "reference_id":"",
         "status":"pending",
         "description":null,
         "test_mode":true,
         "expires":1542805481,
         "created":1542803681,
         "return_url":"http:\/\/senger.com\/",
         "callback_url":"https:\/\/webhook.site\/519d4455-7242-49e8-9178-4402d8894d08",
         "feedback_code":null,
         "feedback_message":null,
         "feedback_updated":null
      },
      "relationships":{
         "customer":{
            "data":null
         },
         "payment-page":{
            "data":{
               "type":"payment-pages",
               "id":"pp_Eq6pIE1toeY2iNaL"
            }
         },
         "rate-schema":{
            "data":{
               "type":"rate-schemes",
               "id":"ers_hIarvFE52len2sMm"
            }
         },
         "routing-schema":{
            "data":{
               "type":"checkout-routing-scheme",
               "id":"rtg_Rwi971GvXLNJRvOo"
            }
         }
      }
   }
}
```

## Signature

 PayСore.io sends signature in X-Signature header. The signature is created by next algorithm:

```php
$signature = base64_encode(sha1($secret . $webhookData . $secret, true));
```
Where the ```$secret``` is one your secrets: test or live, ```$webhookData``` is raw json data. 

!!! note
      To be sure you got data from PayСore, you should compute the signature using an appropriate secret key and compare with ones from PayСore.io callback data.
