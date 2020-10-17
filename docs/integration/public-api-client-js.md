# PublicApiClient.js

Merchant SDK is simple API client

# Installation

## You can use this package over CDN

For that you need to add this script iside your head tag on yout HTML template.

```html
<script src="https://unpkg.com/@paycore/merchant-sdk-js@0.1.1/dist/MerchantSDK.umd.min.js"></script>
```

```html
<script type= text/javascript>
const PaycoreClient = new MerchantSDK(
    {
     apiKey: "*****" // Your public API key
    });
</script>
```

## Or via npm\yarn

```bash
yarn add @paycore/merchant-sdk-js
```

```javascript
const MerchantSDK = require('@paycore/merchant-sdk-js');

const client = new MerchantSDK({
  apiKey: '*****', // Your public API key
});

client
  .makePaymentPrerequest('USD')
  .then(res => console.log(res))
  .catch(e => {
    console.error('Error', e);
  });
```

## List of methods

- [SDK][1]
  - [Parameters][2]
  - [makePaymentPrerequest][11]
    - [Parameters][12]
  - [makePayoutPrerequest][13]
    - [Parameters][14]
  - [getPayoutInvoiceStatus][15]
    - [Parameters][16]
  - [getPaymentInvoiceStatus][17]
    - [Parameters][18]

## SDK

Initialize the SDK instance

### Parameters

- `options` **[Object][19]** Required
- `options.apiKey` **[String][20]** Commerce account API_KEY
- `options.BASE_URL` **[String][20]** Base endpoint to commerce backend (default = 'https://com.paycoreio.com/public-api')
- `options.currency` **[String][20]** The currency of the SDK client (optional) (3-letter ISO 4217 code). Must be a supported currency.

Returns **[Object][19]** Returns SDK object instance

### makePaymentPrerequest

Payment prerequest

#### Parameters

- `currency` **[String][20]** The currency of the amount (3-letter ISO 4217 code). Must be a supported currency.
- `includes` **[Array][22]** The optional relations for entity (PaymentService, PaymentMethod). (optional, default `[]`)
- **[Number][23]** Not required amount, can be null or float.

Returns **[Promise][21]**

### makePayoutPrerequest

Payout prerequest .

#### Parameters

- `currency` **[String][20]** The currency of the amount (3-letter ISO 4217 code). Must be a supported currency.
- `amount` The amount of payout.
- `includes` **[Array][22]** The optional relations for entity (PayoutService, PayoutMethod) (optional, default `[]`)

Returns **[Promise][21]**

### createPaymentInvoice

Payment invoice creation

#### Parameters

- `options` **[Object][19]** PaymentInvoice config
- `options.reference_id` **[String][20]** The amount of payout.
- `options.description` **[String][20]** The description of payment invoice
- `options.currency` **[String][20]** The currency of the amount (3-letter ISO 4217 code). Must be a supported currency.
- `options.amount` **[Number][23]** The amount of payout.
- `options.service` **[String][20]** Service id
- `options.fields` **[Object][19]** The amount of payout.
- `options.metadata` **[Object][19]** The amount of payout.

Returns **[Promise][21]**

### getPayoutInvoiceStatus

Payout invoice status

#### Parameters

- `id` **[String][20]**

### getPaymentInvoiceStatus

Payment invoice status

#### Parameters

- `id` **[String][20]**

Returns **[Promise][21]**

[1]: #sdk
[2]: #parameters
[3]: #request
[4]: #parameters-1
[5]: #request-1
[6]: #parameters-2
[7]: #post
[8]: #parameters-3
[9]: #get
[10]: #parameters-4
[11]: #makepaymentprerequest
[12]: #parameters-5
[13]: #makepayoutprerequest
[14]: #parameters-6
[15]: #getpayoutinvoicestatus
[16]: #parameters-7
[17]: #getpaymentinvoicestatus
[18]: #parameters-8
[19]: https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Object
[20]: https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/String
[21]: https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Promise
[22]: https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Array
[23]: https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Number