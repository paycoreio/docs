# Commerce Callbacks

Callbacks allow you to receive notifications whenever the state on an object changes (or something important happens to that object).

To set up Callbacks for an object, set a  `callback_url`  on that object. Whenever something important happens to the object that we think you should be notified of (typically a state change), we will make an HTTP POST request to your  `callback_url`  with the  `object_id`  in the body of the request.

!!! note
    Callbacks are asynchronous and are not recommended for time-critical applications. It is very much possible and even likely that callbacks reach your application out-of-order and that they get duplicated. For time-critical applications, we recommend using the  [API](/integration/) to poll our system for updates.

## Configure Callbacks

To configure your callbacks, go to  **Commerce Settings**  >  **Integration**  >  **Callbacks** and add a callback URL.

## Callback Requests

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

You also have the option to exclude card object from the callback. Enabling this will remove the masked card details object from the callback.

!!! note
    Although only masked card details are sent as part of the callback data, we recommend this option be enabled as the data could still be used for phishing attacks in case your site suffers a security breach.

## API Version

PayCore.io supports multiple API versions. The event content sent to the callback is structured based on the API version selected. Hence it is crucial that the API version of the callback matches the API version of the client library used by your application server. Learn more about API versioning  [here](/integration/).

## Signature

PayСore.io sign data using secret keys. They can be obtained in organization or Commerce Account settings. All callbacks are signed `live` or `test` secret key according to the mode in which operation has been created.

PayСore.io sends signature in `X-Signature` callback request header. The signature is created by next algorithm:

```php tab="PHP"
$signature = base64_encode(sha1($secret . $callbackData . $secret, true));
```

Where the `$secret` is one your secrets: `test` or `live`, `$callbackData` is raw json data. 

!!! note
      To be sure you got data from PayСore, you should compute the signature using an appropriate secret key and compare with ones from PayСore.io callback data.

## Timeouts

There are 3 timeouts for Callbacks in PayCore.io:

1.  **Connection Timeout:**  The connection timeout is the timeout for making the initial connection to the callback URL's HTTP server.
2.  **Read Timeout:**  Once the initial connection has been made, at any time there is a possibility that there is an indefinite wait to read data from the HTTP server. The read timeout is the timeout for such a wait.
3.  **Total Callback Timeout:**  In addition to the above timeouts, PayCore.io also checks the total execution of time of any callback via the callback execution timeout.

The values for each timeout are as follows:

|Timeout            |For Test site|For Live site|
|-------------------|-------------|-------------|
|Connection Timeout |10,000 ms    |20,000 ms    |
|Read Timeout       |10,000 ms    |20,000 ms    |
|Execution Timeout  |20,000 ms    |60,000 ms    |

## Automatic Retries

When you successfully process callback request you must return `200` HTTP status code. Any other data return by callback is ignored.

If callback returns status code other then `200` it is assumed that the request delivery failed. Failed callback request are resent with increasing delay between each attempt:

-   The 1st retry will happen 15 minutes after the initial attempt,
-   the 2nd retry will happen 30 minutes after the 1st retry,
-   the 3rd retry will happen 1 hour after the 2nd retry,
-   the 4th retry will happen 6 hours after the 3rd retry,
-   the 5th retry will happen 12 hours after the 4th retry,
-   and the 6th retry will happen 24 hours after the 5th retry...

!!! note
    You could resend a callback manually, if you wish to sync your data immediately. Go to  _Operation overview_  >  _Callbacks_. On the right side, you will have the option to select the callback and resend the same.

## Callback Handling

Because HTTPS/SSL verifies the identity of the server you are making API calls to, you will always know that the updated information you are receiving is correct. 
If we sent object information in the Callback itself, you would have to verify the authenticity of the information via signed request, etc.

## Duplicate Handling

Due to callback retries, it's possible that your application receives the same callback more than once. Ensure idempotency of the callback by detecting such duplicates within your application.

To control processing idempotency use by examining the  `id`  parameter in callback request data since its value is unique to an operation and thus identifies it.

For some applications, this is not a serious issue. Work that can be repeated without changing the outcome is called idempotent. If your app's actions are always idempotent, you don't need to worry much about concurrency.

## Batching

We will batch Callbacks for the same object that are very close together. So if a payment goes from state `created` to `invoked` to `processed` immediately, you will only receive one Callback and when you look up the status of the payment it will be `processed`.

The advantage of doing this is that it prevents us from overwhelming your server(s) with HTTP requests and it prevents your app from having to build complicated logic around sequential state changes. Your app should only care about the latest state the object is in.

## Out-of-Order Delivery

Callbacks can also arrive at your application out-of-order. This can be due to issues such as network delays or callback failures. However, you can determine the order of the events by examining the  `updated`  attribute of the resource sent by the callback.  `updated`  is _timestamp_ value that updated for every change made to the resource.

## IPs whitelist

We use Amazon's EC2 for our infrastructure and currently we do not have a static IP address assigned. IP addresses for our instances are automatically allocated by Amazon, as we scale up or down. Hence, we are unable to provide any specific IP address for whitelisting.