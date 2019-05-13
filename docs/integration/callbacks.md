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
         "callback_url":"https:\/\/callback.site\/519d4455-7242-49e8-9178-4402d8894d08",
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

## What to do when you receive a Callback

Because HTTPS/SSL verifies the identity of the server you are making API calls to, you will always know that the updated information you are receiving is correct. 
If we sent object information in the Callback itself, you would have to verify the authenticity of the information (via signed request, etc).

## Signature

 PayСore.io sends signature in X-Signature header. The signature is created by next algorithm:

```php
$signature = base64_encode(sha1($secret . $callbackData . $secret, true));
```

Where the ```$secret``` is one your secrets: test or live, ```$callbackData``` is raw json data. 

!!! note
      To be sure you got data from PayСore, you should compute the signature using an appropriate secret key and compare with ones from PayСore.io callback data.


## Manage concurrency

When a user makes a number of changes in rapid succession, your app is likely to receive multiple notifications for the same user at roughly the same time. If you're not careful about how you manage concurrency, your app can end up processing the same changes for the same user more than once.

To control processing idempotency use operation `id` or `reference_id` value in callback request data.

For some applications, this is not a serious issue. Work that can be repeated without changing the outcome is called idempotent. If your app's actions are always idempotent, you don't need to worry much about concurrency.


## Batching

We will batch Callbacks for the same object that are very close together. So if a checkout goes from state new to authorized to captured immediately, you will only receive one Callback and when you look up the status of the payment it will be `processed`. The advantage of doing this is that it prevents us from overwhelming your server(s) with HTTP requests and it prevents your app from having to build complicated logic around sequential state changes. Your app should only care about the latest state the object is in.


## Failures

When you successfully process callback request you must return `200` HTTP status code. Any other data return by callback is ignored.

If callback returns status code other then `200` it is assumed that the request delivery failed. Failed callback request are resent with increasing delay between each attempt:

-   The 1st retry will happen 15 minutes after the initial attempt,
-   the 2nd retry will happen 30 minutes after the 1st retry,
-   the 3rd retry will happen 1 hour after the 2nd retry,
-   the 4th retry will happen 6 hours after the 3rd retry,
-   the 5th retry will happen 12 hours after the 4th retry,
-   and the 6th retry will happen 24 hours after the 5th retry...