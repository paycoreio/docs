# Payment Method Google Pay

You can allow customers to pay quicker with cards stored on their Google Pay accounts. Combine our solutions and the Google suggestion to enable secure, one-touch payments in your stores for all devices (smartphones and PCs), irrespective of the operating systems and web browsers.

Google Pay™ is an instant payment that allows quick and easy card transaction without having to input your payment data each time. You reduce customers’ time to buy and make them far less likely to drop their carts. And you can be sure that their sensitive card data is securely stored by Google.

!!! quote ""
    Google Pay and Google Play are trademarks of Google LLC.

## Implementing Google Pay with the PayCore.io HPP

### How to set up

1. Sign a contract with PayCore.io.
2. Review and agree with [Google Pay Terms of Service](https://payments.developers.google.com/terms/sellertos) and [Acceptable Use Policy](https://payments.developers.google.com/terms/aup).
3. Inform your PayCore.io account manager about.

That's all! We integrate the Google Pay button to the Hosted Payment Page for you. Thus you can create a payment invoice from the *Dashboard* or via the API and start processing Google Pay transactions through PayCore.io.

### How it works

![Scheme](images/googlePay.png)

1. You request the customer payment data from your application and create an invoice.
2. You send the invoice request to PayCore.io, and we response with the HPP redirect form.
3. You let the customer choose the payment method, including Google Pay option.
4. Google Pay authenticates the customer and returns the encrypted data.
5. We decrypt payment data and create the purchase request.
6. We transfer the card data to the payment service provider (PSP) or bank acquirer service to complete the transaction and obtain a payment response.
7. We transfer the ACS data or transaction status (if the provider gets confirmation from the card issuer and let us skip the 3D-secure stage) with the enrollment response.
8. In case two-factor authentication is required, the customer is redirected to the ACS page from the issuer, and we forwarded their entered data to the 3DS service with the Payment Authentication Request (PaReq).
9. We get the PaRes (Payment Authentication Response) value received from the issuer 3DS service and transfer the payment response to your server.
10. You inform the customer about the result.

## Implementing Google Pay directly through the API

### Before you start

To integrate Google Pay into your Android application, check the links below:

- [Google Pay Android developer documentation](https://developers.google.com/pay/api/android/overview)
- [Google Pay Android integration checklist](https://developers.google.com/pay/api/android/guides/test-and-deploy/integration-checklist)
- [Google Pay Android brand guidelines](https://developers.google.com/pay/api/android/guides/brand-guidelines)

To integrate Google Pay into your website, review the following links:

- [Google Pay Web developer documentation](https://developers.google.com/pay/api/web/overview)
- [Google Pay Web integration checklist](https://developers.google.com/pay/api/web/guides/test-and-deploy/integration-checklist)
- [Google Pay Web brand guidelines](https://developers.google.com/pay/api/web/guides/brand-guidelines)

Get verified: send mobile app (.apk) or link to your site with the payment page.

### How to integrate the Google Pay method

The overall transaction flow is similar to the standard Google Pay process. PayCore.io receives the encrypted Google Pay payload from your application and is responsible for decrypting the payment token and transferring the purchase data to a chosen gateway.

1. Make sure that you complete preparations from the previous section. Use [Google Pay API](https://developers.google.com/pay/api/android/guides/setup) to get a **paymentData**.

2. As script parameters specify:

    1. Available payment methods:
        `var allowedPaymentMethods = ['CARD']`
    2. Tokenization type:
        `tokenizationType: 'PAYMENT_GATEWAY'`
    3. Gateway parameter: `paycoreio`
    4. gatewayMerchantId parameter --> your unique account ID

    ```json
    {
        "type": "CARD",
        "parameters": {
            "allowedAuthMethods": [
            "PAN_ONLY",
            "CRYPTOGRAM_3DS"
            ],
            "allowedCardNetworks": [
            "MASTERCARD",
            "VISA"
            ]
        },
        "tokenizationSpecification": {
            "type": "PAYMENT_GATEWAY",
            "parameters": {
            "gateway": "paycoreio",
            "gatewayMerchantId": "coma_eRb9pWCMbrCadlw0" //your unique commerce account identifier
            }
        }
    }
    ```

    If your integration works properly, you will receive a Google Pay button on the payment page. <img src="/integration/payment-methods/images/buy-buttons-black-small.png" alt="PayCore" style="width: 150px;">

3. When a Google Pay transaction is initiated, a [Payment Token](https://developers.google.com/pay/api/web/reference/object#PaymentMethodTokenizationData) obtaining a JSON-formatted string will be sent to the merchant application.

    !!! example "An example of Google Pay response"
        ```json
        {
            "apiVersionMinor":0,
            "apiVersion":2,
            "paymentMethodData":{
                "description":"Mastercard  •••• 0000",
                "tokenizationData":{
                    "type":"PAYMENT_GATEWAY",
                    "token":"{"signature":"MEUCeVnFnfjmo5ALeretMPEQPUMnvMOnDAgZsOL/1D6o7hd4kbUdHHzAiEA94L1GfNWW8n+l6B6tqk6n18VgIA3sdkPqKL3\u003d","intermediateSigningKey":{"signedKey":"{\"keyValue\":\"MFkwEwYQgAEem3biYxltOBuMVHKoZIzj0CAQYIKoZIzj0DAQcD+Dd9g+ZhV3VnSNrkPo8hu5kLtxN0QXCYkqEzP2vAlFXvb9tJoYGLtetxDYWTUqnXPvKGDeAQ\\u003d\\u003d\",\"keyExpiration\":\"1551385212256\"}","signatures":["MEYCIQD/TWKH5P3i9unZJhG/u3iL2r0rCbpw1/+z9dr/ytvwIhAPfV2zF5cqGyP/L+42W+JKghv6fgQKBEc67HTtfderefdJ"]},"protocolVersion":"ECv2","signedMessage":"{\"encryptedMessage\":\"OidSptk8w+I3FnR1VFmiVswXaZ7ADnmMP1MQelp6GSg0/3aVpAXeLRH/fT1wN7gpxNPy7tFITeQenrJm3QG19tAPuVhcAVM26DMU6LAmZPyPXALktpnYrUj6etCjvWWM/1LkhjDBSjtkmpWRiHIyqj5aud/j8rxFEk06GhwqPWbunZJhG/u3iL2aZIV1vdeV6d7iQ6EDWWAS/z9pXWkqpW//M/TVTrcKFXh4C2TI2O+qyBD9VzK3TqU6wS5VsYL69W9/4xzV5L5irpp/wzNfPHunZJhG/u3iL2m3v+JCaqIA3oK9Sw/5o/gZp/pnOhUdax0VjGEvmbGXs2+ufBChCkh+/BpobbpzVS9T/DZSlUO2FLANMjSaEQzh74ymtDgP4x9O64RAdySW+V7lVZMa7FVZ3PFnTfa8W89pzIgo6ocSGHQPBFnExTmSbDpUU0L12wzHkAcZSyngPAljqg\\u003d\",\"ephemeralPublicKey\":\"BBKgbSbykNy1111QYRmGJEhnCorkt+VoDYlYbAlg0a5WO2uV/M50XqOSG0uxWAvUqrZolQuEX6yZ+dvvufLEZtI\\u003d\",\"tag\":\"p9ItvOfsQVTzhunZJhG/u3iL21TtozP/yym4QWWVRVCk\\u003d\"}"}"
                },
                "type":"CARD",
                "info":{
                    "cardNetwork":"MASTERCARD",
                    "cardDetails":"0004",
                    "billingAddress":{
                        "phoneNumber":"+1202 555 0137",
                        "address3":"",
                        "sortingCode":"",
                        "address2":"",
                        "countryCode":"US",
                        "address1":"Pennsylvania Ave",
                        "postalCode":"20500",
                        "name":"Customer 1",
                        "locality":"NW",
                        "administrativeArea":"Washington, DC."
                    }
                }
            },
            "email":"example-gmail@gmail.com"
        }
        ```

4. The main part of response is `token` that allows you initiate verify or charge flow transferring it to the Google Pay. You can also use `google_pay` method in a separate flow from the start.

    <!--
    There we have a place for Request and Response parameters' tables
    -->

5. If payment status requires 3DS-verification, you should redirect the customer to the issuing bank ACS page (`action`). Send POST request including `PaReq`  (Payer Authentication Request), and `MD` (Merchant Data) parameters and Return URL to return the customer after 3D Secure (`TermUrl`) for 3ds 1.0 or `creq` (Challenge Request Message) for 3DS 2.0.

    !!! example "JSON"

        === "3DS 1.0"

            ```json
            {
            "auth_payload":{
                    "action":"https://acs.pay_domain/acspage/cap?RID=8\u0026VAA=A",
                    "method":"POST",
                    "params":{
                        "MD":"999999999",
                        "PaReq":"eJxVUlFvVA2jYv2jAQfuZfoD5v2E5KfQlLFJ2jAQfuZfoD5v2E5KQqurpe5os5wRBJU6dZCX79bszlDIrUe6+zWRkwjEe0qVHL3dmbqjeATGvs6XKz2Np1GBFSxq3r684PeiZvQbwnXOj9i951XdPeC4HWHT5bV1v+3z29+Vgs/OIi+9oe48acmxbs8VxVT7cFNkaX3+raapimUYqiZPbGz2CAOvRCP6gbytXany0njnTX07Y3Ii6VYY9u64EQNFz3J5OPlalzjc/4nyTv63+Lo+rfR6tFtlbfnofQDCDmaXpUEdS3SmcbXhU7MLJSwQ12gwovceazvouxlVLxmX8EgKkXeDuMSs7UoPPH47/yLbkeV+MU3SeTqst8PT5mfi9m5WZtmv+eMzCzuTzr0rcpzulYTmVbAfBLejA8KAsIlhlij6b8b+AbaDvJg=",
                        "TermUrl":"your.pay_domain/3ds-return?pid=pay_Hjh3kMlNdqE4WpOmNPCoIgFU_K1_nM"
                        }
                }
            }
            ```

        === "3DS 2.0"

            ```json
            {
                "auth_payload": {
                "action": "https://acs.pay_domain/acspage/challenge?id=0c95e0873",
                "method": "POST",
                "params": {
                    "creq": "eyJ0aHJlZURTU2VydmVyVHJhbnNJRCI6IjBjOTNhNWFhLTUyNzAtMzhiNi04ZGQ4LWY5Mjc5MTVlMDg3MyIsImFjc1RyYW5zSUQiOiIyYjVkNzIyYi0yNjk2LTRhOTktYTcxZS1iZjYwYmI5MzlmNTgiLCJjaGFsbGVuZ2VXaW5kb3dTaXplIjoiMDUiLCJtZXNzYWdlVHlwZSI6IkNSZXEiLCJtZXNzYWdlVmVyc2lvbiI6IjIuMS4wIn0="
                    }
                }
            }
            ```

6. The response from PayCore.io will contain the transaction result.
