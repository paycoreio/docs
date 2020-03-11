# Payment providers

![Go global!](/images/go-global.png)

This topic explains how to connect your payment providers' accounts with PayCore.io. It describes setup processes and helps you to put in place new services that can relay requests to the payment or payout gateways.

Click on the name of the desired connector and follow the link to the step-by-step guide.

!!! info "Payment Service Provider (PSP)"
    **Payment Service Provider (PSP)** is a third party that helps [merchants](/getting-started/glossary/#merchant) accept and facilitate payments.

    PSPs partner with [acquiring banks](/getting-started/glossary/#acquiring-bank) to offer merchants the capability to accept payments. They often offer services in addition to processing transactions. These services include [Payment Card Industry Data Security Standard (PCI)](/getting-started/glossary/#payment-card-industry-data-security-standard-pci) compliance, fraud protection, and the ability to process different currencies and translate different languages.

## List of Ready Connectors for Payment Providers

<!-- 11/03/2019: 78 connectors -->

|                                                  Logo                                                  | Name                             | Supported Features                              |
|:------------------------------------------------------------------------------------------------------:|:---------------------------------|:------------------------------------------------|
|      <img src="https://static.openfintech.io/payment_providers/123x/logo.png?w=70" width="70px">       | [123x](123x/)                    | Payments                                        |
|      <img src="https://static.openfintech.io/payment_providers/4bill/logo.svg?w=70" width="70px">      | [4bill](4bill/)                  | H2H connection, Payments and Payouts            |
|   <img src="https://static.openfintech.io/payment_providers/accentpay/logo.png?w=100" width="100px">   | [Accentpay](accentpay/)          | H2H connection, Payments and Payouts                           |
|     <img src="https://static.openfintech.io/payment_providers/adgroup/logo.svg?w=70" width="70px">     | [ADgroup](adgroup/)              | Payments and Payouts            |
|    <img src="https://static.openfintech.io/payment_providers/advcash/logo.svg?w=100" width="100px">    | [AdvCash](advcash/)              | Payments and Payouts                            |
|    <img src="https://static.openfintech.io/payment_providers/alfabank/logo.svg?w=90" width="90px">     | [Alfa Bank](adgroup/)            | H2H payment connection, Payouts                 |
|    <img src="https://static.openfintech.io/payment_providers/anycash/logo.svg?w=70" width="100px">     | [any.cash](anycash/)             | Payments and Payouts                            |
|    <img src="https://static.openfintech.io/payment_providers/billline/logo.svg?w=70" width="70px">     | [BillLine](billline/)            | Payments and Payouts                            |
|    <img src="https://static.openfintech.io/payment_providers/cardgate/logo.svg?w=70" width="70px">     | [Card Payments](cardgate/)       | Card Payments and Payouts                       |
|     <img src="https://static.openfintech.io/payment_providers/cardpay/logo.svg?w=70" width="70px">     | [cardpay](cardpay/)              | H2H connection, Payments and Payouts            |
| <img src="https://static.openfintech.io/payment_providers/cashfree/logo.png?w=80" width="80px"> | [Cashfree](cashfree/) | Payouts                                         |
| <img src="https://static.openfintech.io/payment_providers/certusfinance/logo.png?w=120" width="120px"> | [Certus Finance](certusfinance/) | Payouts                                         |
|    <img src="https://static.openfintech.io/payment_providers/coingate/logo.svg?w=70" width="70px">     | [CoinGate](coingate/)            | Payments                                        |
|    <img src="https://static.openfintech.io/payment_providers/concord/logo.svg?w=120" width="120px">    | [Concord Bank](concord/)         | H2H payment connection, Payouts                 |
|    <img src="https://static.openfintech.io/payment_providers/connectum/logo.svg?w=70" width="70px">    | [Connectum](connectum/)          | H2H payment connection                          |
|      <img src="https://static.openfintech.io/payment_providers/cypix/logo.svg?w=70" width="70px">      | [Cypix](cypix/)                  | H2H payment connection, Payouts                 |
|      <img src="https://static.openfintech.io/payment_providers/decta/logo.svg?w=70" width="70px">      | [Decta](decta/)                  | H2H payment connection                          |
|     <img src="https://static.openfintech.io/payment_providers/dlocal/logo.svg?w=70" width="70px">      | [dLocal](dlocal/)                | Payouts                                         |
|     <img src="https://static.openfintech.io/payment_providers/dotpay/logo.svg?w=70" width="70px">      | [dotpay](dotpay/)                | Payouts                                         |
|   <img src="https://static.openfintech.io/payment_providers/easybits/logo.svg?w=100" width="100px">    | [EasyBits.io](easybits/)         | Payments and Payouts                            |
|     <img src="https://static.openfintech.io/payment_providers/ecobanq/logo.png?w=70" width="70px">     | [Ecobanq](ecobanq/)              | Payments and Payouts                            |
|   <img src="https://static.openfintech.io/payment_providers/ecommpay/logo.png?w=100" width="100px">    | [ECommPay](ecommpay/)            | Payouts                                         |
|     <img src="https://static.openfintech.io/payment_providers/ecopayz/logo.svg?w=70" width="70px">     | [ecoPayz](ecopayz/)              | Payments and Payouts                            |
|      <img src="https://static.openfintech.io/payment_providers/epay/logo.png?w=70" width="70px">       | [ePay](epay/)                    | H2H payment connection, Payouts                 |
|     <img src="https://static.openfintech.io/payment_providers/exactly/logo.svg?w=70" width="70px">     | [exactly](exactly/)              | H2H payment connection                          |
|    <img src="https://static.openfintech.io/payment_providers/flashpay/logo.png?w=80" width="80px">     | [FlashPay](flashpay/)            | Payouts                                         |
|      <img src="https://static.openfintech.io/payment_providers/fondy/logo.svg?w=70" width="70px">      | [Fondy](fondy/)                  | H2H payment connection, Payouts                 |
|   <img src="https://static.openfintech.io/payment_providers/forwardbank/logo.svg?w=70" width="70px">   | [Forward Bank](forwardbank/)     | H2H payment connection, Payouts                 |
|     <img src="https://static.openfintech.io/payment_providers/genome/logo.svg?w=70" width="70px">      | [Genome](genome/)                | H2H payment connection                          |
|    <img src="https://static.openfintech.io/payment_providers/geopaynet/logo.svg?w=70" width="70px">    | [GEO pay](geopaynet/)            | Payments and Payouts                            |
|   <img src="https://static.openfintech.io/payment_providers/globalmoney/logo.svg?w=50" width="50px">   | [Global Money](globalmoney/)     | Payouts                                         |
|   <img src="https://static.openfintech.io/payment_providers/hashconnect/logo.png?w=50" width="50px">   | [Hashconnect](hashconnect/)      | H2H payment connection, Payouts                 |
|    <img src="https://static.openfintech.io/payment_providers/ingbankpl/logo.svg?w=70" width="70px">    | [ING Bank Poland](ingbankpl/)    | Payments                                        |
|   <img src="https://static.openfintech.io/payment_providers/interkassa/logo.svg?w=80" width="80px">    | [Interkassa](interkassa/)        | Payments and Payouts                            |
|      <img src="https://static.openfintech.io/payment_providers/kuna/logo.svg?w=70" width="70px">       | [Kuna](kuna/)                    | Payments and Payouts                            |
|    <img src="https://static.openfintech.io/payment_providers/leogaming/logo.svg?w=80" width="80px">    | [LeoGaming](leogaming/)          | Payouts                                         |
|     <img src="https://static.openfintech.io/payment_providers/liqpay/logo.svg?w=70" width="70px">      | [LiqPay](liqpay/)                | H2H connection, Payments                                        |
|     <img src="https://static.openfintech.io/payment_providers/manual/logo.svg?w=25" width="25px">      | [Manual](manual/)                | manual connector for Swift Payments and Payouts |
|     <img src="https://static.openfintech.io/payment_providers/maxpay/logo.svg?w=90" width="90px">      | [Maxpay](maxpay/)                | Payments and Payouts                            |
|    <img src="https://static.openfintech.io/payment_providers/mercuryo/logo.svg?w=90" width="90px">     | [mercuryo](mercuryo/)            | Payments                                        |
|   <img src="https://static.openfintech.io/payment_providers/muchbetter/logo.svg?w=90" width="90px">    | [MuchBetter](muchbetter/)        | Payments and Payouts                            |
|    <img src="https://static.openfintech.io/payment_providers/neteller/logo.svg?w=75" width="75px">     | [Neteller](neteller/)            | Payouts                                         |
|     <img src="https://static.openfintech.io/payment_providers/odysseq/logo.svg?w=90" width="90px">     | [Odysseq](odysseq/)              | Payments and Payouts                            |
|    <img src="https://static.openfintech.io/payment_providers/parimatch/logo.svg?w=70" width="70px">    | [Parimatch](parimatch/)          | Payouts                                         |
|     <img src="https://static.openfintech.io/payment_providers/paybox/logo.svg?w=70" width="70px">      | [Paybox](paybox/)                | H2H payment connection, Payouts                 |
|     <img src="https://static.openfintech.io/payment_providers/payeer/logo.svg?w=70" width="70px">      | [Payeer](payeer/)                | Payments and Payouts                            |
|     <img src="https://static.openfintech.io/payment_providers/paylink/logo.png?w=70" width="70px">     | [Paylink](paylink/)              | H2H payment connection, Payouts                 |
|    <img src="https://static.openfintech.io/payment_providers/paylogic/logo.png?w=70" width="70px">     | [Pay-logic](paylogic/)           | Payouts                                         |
|     <img src="https://static.openfintech.io/payment_providers/paymega/logo.svg?w=90" width="90px">     | [PayMega](paymega/)              | H2H connection, Payments and Payouts            |
|     <img src="https://static.openfintech.io/payment_providers/paymega/logo.svg?w=90" width="90px">     | [Paymega.io](paymegaio/)         | H2H connection, Payments and Payouts            |
|  <img src="https://static.openfintech.io/payment_providers/paymentcenter/logo.png?w=70" width="70px">  | [Payment Center](paymentcenter/) | H2H payment connection, Payouts                 |
|  <img src="https://static.openfintech.io/payment_providers/paymentwall/logo.svg?w=110" width="110px">  | [Paymentwall](paymentwall/)      | H2H payment connection                          |
|     <img src="https://static.openfintech.io/payment_providers/paypal/logo.svg?w=70" width="70px">      | [PayPal](paypal/)                | Payments and Payouts                            |
|   <img src="https://static.openfintech.io/payment_providers/paysafecard/logo.svg?w=90" width="90px">   | [paysafecard](paysafecard/)      | Payments and Payouts                            |
|     <img src="https://static.openfintech.io/payment_providers/paysec/logo.svg?w=70" width="70px">      | [PaySec](paysec/)                | Payments and Payouts                            |
|     <img src="https://static.openfintech.io/payment_providers/paysoft/logo.png?w=35" width="35px">     | [PaySoft Inc.](paysoft/)         | Payouts                                         |
|  <img src="https://static.openfintech.io/payment_providers/perfectmoney/logo.svg?w=35" width="35px">   | [Perfect Money](perfectmoney/)   | Payments and Payouts                            |
|    <img src="https://static.openfintech.io/payment_providers/piastrix/logo.svg?w=70" width="70px">     | [Piastrix](piastrix/)            | H2H connection, Payments and Payouts            |
|     <img src="https://static.openfintech.io/payment_providers/platio/logo.svg?w=70" width="70px">      | [Platio](platio/)                | H2H payment connection, Payouts                 |
|     <img src="https://static.openfintech.io/payment_providers/procard/logo.png?w=70" width="70px">     | [Procard](procard/)              | H2H payment & payout connection                 |
|      <img src="https://static.openfintech.io/payment_providers/rapyd/logo.svg?w=70" width="70px">      | [Rapyd.net](rapyd/)              | Payouts                                         |
|    <img src="https://static.openfintech.io/payment_providers/rbkmoney/logo.png?w=70" width="70px">     | [RBK Money](rbkmoney/)           | H2H connection, Payouts                 |
|   <img src="https://static.openfintech.io/payment_providers/safecharge/logo.svg?w=90" width="90px">    | [SafeCharge](safecharge/)        | H2H payment connection                          |
|   <img src="https://static.openfintech.io/payment_providers/satchelpay/logo.svg?w=90" width="90px">    | [SatchelPay](satchelpay/)        | Payouts                                         |
|     <img src="https://static.openfintech.io/payment_providers/selcom/logo.png?w=70" width="70px">      | [Selcom](selcom/)                | Payments and Payouts                            |
|     <img src="https://static.openfintech.io/payment_providers/skrill/logo.svg?w=50" width="50px">      | [Skrill](skrill/)                | Payments and Payouts                            |
|     <img src="https://static.openfintech.io/payment_providers/tkbpay/logo.svg?w=70" width="70px">      | [TKB Pay](rbkmoney/)             | H2H payment connection, Payouts                 |
|     <img src="https://static.openfintech.io/payment_providers/tranzzo/logo.svg?w=90" width="90px">     | [Tranzzo](tranzzo/)              | Payments                                        |
|   <img src="https://static.openfintech.io/payment_providers/twelvelive/logo.svg?w=25" width="25px">    | [Twelve.live](twelvelive/)       | H2H payment connection, Payments and Payouts                 |
|      <img src="https://static.openfintech.io/payment_providers/uapay/logo.svg?w=50" width="50px">      | [UAPay](uapay/)                  | H2H payment connection, Payouts                 |
|     <img src="https://static.openfintech.io/payment_providers/winpay/logo.png?w=70" width="70px">      | [WinPay](winpay/)                | Payments and Payouts                            |
|  <img src="https://static.openfintech.io/payment_providers/wirecapital/logo.svg?w=110" width="110px">  | [Wirecapital](wirecapital/)      | Payments                                        |
|    <img src="https://static.openfintech.io/payment_providers/wirecard/logo.svg?w=70" width="70px">     | [wirecard](wirecard/)            | H2H payment connection, Payouts                 |
|    <img src="https://static.openfintech.io/payment_providers/wlandpay/logo.png?w=90" width="90px">     | [WlandPay](wlandpay/)            | H2H payment connection                          |
|      <img src="https://static.openfintech.io/payment_providers/xpate/logo.svg?w=70" width="70px">      | [xpate](xpate/)                  | H2H payment connection                          |
|     <img src="https://static.openfintech.io/payment_providers/xpayua/logo.svg?w=70" width="70px">      | [XPAY](xpayua/)                  | Payments and Payouts                            |
|     <img src="https://static.openfintech.io/payment_providers/zotapay/logo.png?w=70" width="70px">     | [Zotapay](zotapay/)              | Payments and Payouts                            |

You can also send a request about a new connection by clicking the appropriate button on the [dashboard](https://dashboard.paycore.io/connect-directory/payment-providers) or [emailing our support team](mailto:support@paycore.io).

## How to Connect to the Payment Provider

![Step-by-Step](images/connection.png)

Usually, the connection algorithm includes the following steps:

1. Create an account on the side of the payment provider
2. Set up your provider or merchant account and get credentials for the further connection
3. Connect the account in the [PayСore.io Dashboard](https://dashboard.paycore.io/)

!!! attention "Please note"
    - Sub-steps can be different, since methods of data storage, delivery and organisation are unique for each provider.

    - The credential parameters format must be appropriate to the connection form's requirements.

!!! question "Contact us"
    If you have any questions, feature suggestions or ideas, feel free to contact our support team via [email](mailto:support@paycore.io) or [Jira service desk](https://support.paycore.io/).
