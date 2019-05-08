# Callbacks

Callbacks allow you to receive notifications whenever the state on an object changes (or something important happens to that object).

To set up Callbacks for an object, set a  `callback_url`  on that object. Whenever something important happens to the object that we think you should be notified of (typically a state change), we will make an HTTP POST request to your  `callback_url`  with the  `object_id`  in the body of the request.

!!! note
      Currently, PayСore.io supports 2 version of callbacks. This document only describes the newer version. All organisations created after 12-01-2018 by default use the new version of callbacks. PayСore.io sign data using organization secret keys. They can be obtained in organization settings. All callbacks are signed live or test secret key according to the mode in which operation has been created.

## Request Details

The HTTP request that we make to your `callback_url` will have the following characteristics:

-   It will be a POST request.
-   Request Body will be in  [JSON-API](https://jsonapi.org/)  format. It is the same as in public API. 
-   The  object `type` and `id` will be in the body of the request (and not added as a url-parameter).

This an example for payment-request operation callback data:

```json
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


## Batching

We will batch Callbacks for the same object that are very close together. So if a checkout goes from state new to authorized to captured immediately, you will only receive one Callback and when you look up the status of the payment it will be `processed`. The advantage of doing this is that it prevents us from overwhelming your server(s) with HTTP requests and it prevents your app from having to build complicated logic around sequential state changes. Your app should only care about the latest state the object is in.


## Failures

If your  `callback_url`  returns a non-200 response code when we make a HTTP request, we will consider the Callback to have failed. If the Callback fails, we will retry at least 6 times:

-   The 1st retry will happen 15 minutes after the initial attempt,
-   the 2nd retry will happen 30 minutes after the 1st retry,
-   the 3rd retry will happen 1 hour after the 2nd retry,
-   the 4th retry will happen 6 hours after the 3rd retry,
-   the 5th retry will happen 12 hours after the 4th retry,
-   and the 6th retry will happen 24 hours after the 5th retry.