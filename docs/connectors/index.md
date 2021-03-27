# Payment providers

![Go global!](/images/go-global-new.png)

This section explains how to connect your payment providers' accounts and the {{custom.company_name}} platform. It describes setup processes and helps you to put in place new services that can relay requests to the payment or payout gateways.

Click on the name of the desired connector and follow the link to the step-by-step guide.

!!! info "Payment Service Provider (PSP)"
    **Payment Service Provider (PSP)** is a third party that helps [merchants](/getting-started/glossary/#merchant) accept and facilitate payments.

    PSPs partner with [acquiring banks](/getting-started/glossary/#acquiring-bank) to offer merchants the capability to accept payments. They often offer services in addition to processing transactions. These services include [Payment Card Industry Data Security Standard (PCI)](/getting-started/glossary/#payment-card-industry-data-security-standard-pci) compliance, fraud protection, and the ability to process different currencies and translate different languages.

## List of Ready-Made Connections

<!-- 18/01/2021: 100 connectors + Test + manual
|                                                  Logo                                                  | Name                             | Supported Features                              |
|:------------------------------------------------------------------------------------------------------:|:---------------------------------|:------------------------------------------------|
|      <img src="https://static.openfintech.io/payment_providers/123x/logo.png?w=70" width="70px">       | [123x](123x/)                    | Payments                                        |
|     <img src="https://static.openfintech.io/payment_providers/paymega/logo.svg?w=90" width="90px">     | [PayMega](paymega/)              | H2H connection, Payments and Payouts            |
|   <img src="https://static.openfintech.io/payment_providers/twelvelive/logo.svg?w=25" width="25px">    | [Twelve.live](twelvelive/)       | H2H connection, Payments and Payouts                 |
 -->

| Logo | Name | Supported Connections | Supported Currencies[^1] |
|:--:|:---|:----|:----|
| <img src="https://static.openfintech.io/payment_providers/4bill/logo.svg?w=70" width="70px"> | [4bill](4bill/) | H2H&nbsp;connection,&nbsp;Payments, Payouts, Account balances | AUD, CAD, EUR, GBP, UAH, USD |
| <img src="https://static.openfintech.io/payment_providers/accentpay/logo.png?w=100" width="100px"> | [Accentpay](accentpay/) | H2H connection, Payments, Payouts, Account balances | EUR, PLN, RUB, UAH, USD |
| <img src="https://static.openfintech.io/payment_providers/adgroup/logo.svg?w=70" width="70px">  | [ADgroup](adgroup/)  | H2H connection, Payments, Payouts, Account balances   | EUR, RUB, USD |
| <img src="https://static.openfintech.io/payment_providers/advcash/logo.svg?w=100" width="100px"> | [AdvCash](advcash/) | Payments, Payouts, Account balances | [according to the provider account settings] |
| <img src="https://static.openfintech.io/payment_providers/alfabank/logo.svg?w=90" width="90px">  | [Alfa Bank](alfabank/) | H2H connection, Payouts, Account balances  | UAH |
| <img src="https://static.openfintech.io/payment_providers/alikassa/logo.svg?w=70" width="100px"> | [AliKassa](alikassa/) | H2H connection, Payouts, Account balances | EUR, RUB, UAH, USD |
| <img src="https://static.openfintech.io/payment_providers/anycash/logo.svg?w=70" width="100px"> | [any.cash](anycash/) | Payments, Payouts, Account balances | [according to the provider account settings] |
| <img src="https://static.openfintech.io/payment_providers/anymoney/logo.svg?w=80" width="80px"> | [Any.Money](anymoney/) | Payments, Payouts, Account balances | [according to the provider account settings] |
| <img src="https://static.openfintech.io/payment_providers/axcessmerchantservices/logo.png?w=60" width="60px"> | [Axcess Merchant Services](axcessmerchantservices/) | H2H connection  | EUR, RUB, UAH, USD |
| <img src="https://static.openfintech.io/payment_providers/bankonego/logo.png?w=60" width="60px"> | [Bank Onego](bankonego/) | H2H connection, Payouts, Account balances  | RUB |
| <img src="https://static.openfintech.io/payment_providers/billline/logo.svg?w=70" width="70px">  | [BillLine](billline/) | Payments, Payouts, Account balances  | [according to the provider account settings] |
| <img src="https://static.openfintech.io/payment_providers/cardgate/logo.svg?w=70" width="70px"> | [Card Payments](cardgate/) | Card Payments & Payouts | AMD, AUD, AZN, BGN, BYN, CAD, CHF, CNY, CZK, DKK, EUR, GBP, GEL, GIP, HKD, INR, JPY, KZT, MDL, MXN, NGN, NOK, NZD, PHP, PLN, RUB, SEK, SGD, TJS, TMT, TRY, TZS, UAH, USD, UZS, VND |
| <img src="https://static.openfintech.io/payment_providers/cardpay/logo.svg?w=70" width="70px"> | [cardpay](cardpay/)  | H2H connection, Payments, Payouts, Account balances | AUD, CAD, CZK, EUR, GBP, INR, MXN, PLN, RUB, UAH, USD |
| <img src="https://static.openfintech.io/payment_providers/cashfree/logo.png?w=80" width="80px"> | [Cashfree](cashfree/) | Payouts, Account balances | [according to the provider account settings] |
| <img src="https://static.openfintech.io/payment_providers/cauri/logo.png?w=35" width="35px"> | [Cauri](cauri/) | H2H connection | CAD, CZK, EUR, GBP, INR, MXN, PLN, RUB, UAH, USD |
| <img src="https://static.openfintech.io/payment_providers/certusfinance/logo.png?w=120" width="120px">  | [Certus Finance](certusfinance/) | Payouts  | [according to the provider account settings] |
| <img src="https://static.openfintech.io/payment_providers/cib/logo.svg?w=120" width="120px"> | [ComIn Bank](cib/)  | H2H connection, Payouts, Account balances | UAH |
| <img src="https://static.openfintech.io/payment_providers/coingate/logo.svg?w=70" width="70px"> | [CoinGate](coingate/) | Payments | BCH, BTC, ETH, EUR, LTC, USD |
| <img src="https://static.openfintech.io/payment_providers/coinspaid/logo.svg?w=70" width="70px"> | [CoinsPaid](coinspaid/) | Payments, Payouts, Account Balances | [according to the provider account settings] | |
| <img src="https://static.openfintech.io/payment_providers/concord/logo.svg?w=120" width="120px"> | [Concord Bank](concord/)  | H2H connection, Payouts, Account balances | UAH |
| <img src="https://static.openfintech.io/payment_providers/connectum/logo.svg?w=70" width="70px">  | [Connectum](connectum/) | H2H connection, Payouts, Account Balances | AUD, CAD, EUR, GBP, UAH, USD |
| <img src="https://static.openfintech.io/payment_providers/crosspay/logo.png?w=80" width="80px">  | [CrossPay](crosspay/) | Payouts, Account Balances | [according to the provider account settings] |
| <img src="https://static.openfintech.io/payment_providers/cypix/logo.svg?w=70" width="70px"> | [Cypix](cypix/) | H2H connection, Payouts, Account balances | EUR, RUB, UAH, USD |
| <img src="https://static.openfintech.io/payment_providers/decta/logo.svg?w=70" width="70px">  | [Decta](decta/)  | H2H connection | EUR, PLN, USD |
| <img src="https://static.openfintech.io/payment_providers/dlocal/logo.svg?w=70" width="70px"> | [dLocal](dlocal/) | Payouts | ARS, BOB, BRL, CLP, COP, INR, MXN, PEN, PYG |
| <img src="https://static.openfintech.io/payment_providers/dotpay/logo.svg?w=70" width="70px"> | [dotpay](dotpay/)  | Payouts, Account balances | [according to the provider account settings] |
| <img src="https://static.openfintech.io/payment_providers/easybits/logo.svg?w=100" width="100px"> | [EasyBits.io](easybits/) | Payments, Payouts, Account balances | [according to the provider account settings] |
| <img src="https://static.openfintech.io/payment_providers/ecobanq/logo.png?w=70" width="70px"> | [Ecobanq](ecobanq/) | Payments, Payouts, Account balances | [according to the provider account settings] |
| <img src="https://static.openfintech.io/payment_providers/ecommpay/logo.png?w=100" width="100px"> | [ECommPay](ecommpay/) | Payouts, Account balances | [according to the provider account settings] |
| <img src="https://static.openfintech.io/payment_providers/ecopayz/logo.svg?w=70" width="70px">  | [ecoPayz](ecopayz/) | Payments, Payouts,  Account balances | AUD, BRL, CAD, EUR, GBP, INR, MDL, NGN, PLN, RUB, UAH, USD, UZS |
| <img src="https://static.openfintech.io/payment_providers/epay/logo.png?w=70" width="70px"> | [ePay](epay/) | H2H connection, Payouts, Account balances  | UAH |
| <img src="https://static.openfintech.io/payment_providers/exactly/logo.svg?w=70" width="70px"> | [exactly](exactly/) | H2H connection, Payouts, Account Balances   | EUR, USD |
| <img src="https://static.openfintech.io/payment_providers/externalprovider/logo.svg?w=70" width="70px">  | [External Provider](externalprovider/) |  Payouts, Account Balances | [according to the provider account settings] |
| <img src="https://static.openfintech.io/payment_providers/flashpay/logo.png?w=80" width="80px"> | [FlashPay](flashpay/) | Payouts, Account balances | [according to the provider account settings] |
| <img src="https://static.openfintech.io/payment_providers/fondy/logo.svg?w=70" width="70px"> | [Fondy](fondy/) | H2H connection, Payouts, Account balances | AUD, CAD, CZK, EUR, GBP, PLN, RUB, UAH, USD |
| <img src="https://static.openfintech.io/payment_providers/forta/logo.png?w=35" width="35px"> | [Forta](forta/) | Payouts | RUB |
| <img src="https://static.openfintech.io/payment_providers/forwardbank/logo.svg?w=70" width="70px"> | [Forward Bank](forwardbank/) | H2H connection, Payouts, Account balances | UAH |
| <img src="https://static.openfintech.io/payment_providers/genome/logo.svg?w=70" width="70px">  | [Genome](genome/) | H2H connection, Payouts, Account balances | AUD, CAD, EUR, GBP, UAH, USD |
| <img src="https://static.openfintech.io/payment_providers/geopaynet/logo.svg?w=70" width="70px">  | [GEO pay](geopaynet/) | Payments, Payouts, Account balances | [according to the provider account settings] |
| <img src="https://static.openfintech.io/payment_providers/globalmoney/logo.svg?w=50" width="50px"> | [Global Money](globalmoney/) | Payouts, Account balances  | [according to the provider account settings] |
| <img src="https://static.openfintech.io/payment_providers/hashconnect/logo.png?w=50" width="50px">  | [Hashconnect](hashconnect/) | H2H connection, Payouts, Account balances  | RUB |
| <img src="https://static.openfintech.io/payment_providers/iboxbank/logo.png?w=50" width="50px">  | [Ibox Bank](iboxbank/) | H2H connection, Payouts  | UAH |
| <img src="https://static.openfintech.io/payment_providers/ingbankpl/logo.svg?w=70" width="70px"> | [ING Bank Poland](ingbankpl/) | Payments   | [according to the provider account settings] |
| <img src="https://static.openfintech.io/payment_providers/interkassa/logo.svg?w=80" width="80px"> | [Interkassa](interkassa/) | Payments, Payouts, Account balances | [according to the provider account settings] |
| <img src="https://static.openfintech.io/payment_providers/ipaytotal/logo.png?w=80" width="80px"> | [IPayTotal](ipaytotal/) | H2H Connection  | EUR, INR, MXN, PLN, USD |
| <img src="https://static.openfintech.io/payment_providers/kassa/logo.svg?w=70" width="70px">  | [Kassa](/connectors/kassa/) | H2H Connection, Payouts, Account Balances  | BYN, EUR, KZT, RUB, UAH, USD |
| <img src="https://static.openfintech.io/payment_providers/klarna/logo.svg?w=90" width="90px"> | [Klarna](klarna/) | Payments | [according to the provider account settings] |
| <img src="https://static.openfintech.io/payment_providers/kuna/logo.svg?w=70" width="70px"> | [Kuna](kuna/) | Payments, Payouts, Account balances  | [according to the provider account settings] |
| <img src="https://static.openfintech.io/payment_providers/kunapay/logo.svg?w=70" width="70px"> | [Kuna Pay](kunapay/) | H2H Connection, Payments, Payouts, Account balances  | EUR, RUB, UAH, USD |
| <img src="https://static.openfintech.io/payment_providers/leogaming/logo.svg?w=80" width="80px"> | [LeoGaming](leogaming/) | Payouts, Account balances | [according to the provider account settings] |
| <img src="https://static.openfintech.io/payment_providers/liqpay/logo.svg?w=70" width="70px">  | [LiqPay](liqpay/)  | H2H connection, Payments, Payouts, Account balances   | EUR, RUB, UAH, USD |
| <img src="https://static.openfintech.io/payment_providers/manual/logo.svg?w=25" width="25px">  | [Manual](manual/) | manual connector for Swift and bank transfer methods | [according to the transfer parameters] |
| <img src="https://static.openfintech.io/payment_providers/maxpay/logo.svg?w=90" width="90px">  | [Maxpay](maxpay/) | H2H Connection, Payments, Payouts, Account balances | EUR, RUB, UAH, USD |
| <img src="https://static.openfintech.io/payment_providers/mercuryo/logo.svg?w=90" width="90px">  | [mercuryo](mercuryo/)  | Payments | [according to the provider account settings] |
|<img src="https://static.openfintech.io/payment_providers/mineexchange/logo.png?w=90" width="90px">    | [Mine.Exchange](mineexchange/) |  Payments, Payouts, Account balances | [according to the provider account settings] |
| <img src="https://static.openfintech.io/payment_providers/muchbetter/logo.svg?w=90" width="90px"> | [MuchBetter](muchbetter/) | Payments, Payouts, Account balances | [according to the provider account settings] |
| <img src="https://static.openfintech.io/payment_providers/neteller/logo.svg?w=75" width="75px"> | [Neteller](neteller/) | Payouts, Account balances | [according to the provider account settings] |
| <img src="https://static.openfintech.io/payment_providers/odysseq/logo.svg?w=90" width="90px">  | [Odysseq](odysseq/) | Payments, Payouts, Account balances | [according to the provider account settings] |
| <img src="https://static.openfintech.io/payment_providers/offsetpay/logo.png?w=90" width="90px">  | [OffsetPay](offsetpay/)  | H2H connection | EUR, RUB, USD |
| <img src="https://static.openfintech.io/payment_providers/parimatch/logo.svg?w=70" width="70px"> | [Parimatch](parimatch/) | Payouts, Account balances |  [according to the provider account settings] |
| <img src="https://static.openfintech.io/payment_providers/paybox/logo.svg?w=70" width="70px"> | [Paybox](paybox/) | H2H connection, Payouts, Account balances  | KZT |
| <img src="https://static.openfintech.io/payment_providers/paydoo/logo.png?w=70" width="70px"> | [Paydoo](paydoo/)  | H2H connection | EUR |
| <img src="https://static.openfintech.io/payment_providers/payeer/logo.svg?w=70" width="70px"> | [Payeer](payeer/) | Payments, Payouts, Account balances  | BCH, BTC, DASH, ETH, EUR, LTC, RUB, USD |
| <img src="https://static.openfintech.io/payment_providers/paylink/logo.png?w=70" width="70px"> | [Paylink](paylink/)  | H2H connection, Payouts, Account balances | UAH |
| <img src="https://static.openfintech.io/payment_providers/paylogic/logo.png?w=70" width="70px">  | [Pay-logic](paylogic/)  | Payouts, Account balances | [according to the provider account settings] |
| <img src="https://static.openfintech.io/payment_providers/paymega/logo.svg?w=90" width="90px">  | [Paymega.io](paymegaio/)  | H2H connection, Payments, Payouts, Account balances  | EUR, RUB, UAH, USD |
| <img src="https://static.openfintech.io/payment_providers/paymentcenter/logo.png?w=70" width="70px"> | [Payment Center](paymentcenter/) | H2H connection, Payouts, Account balances | EUR, RUB, USD |
| <img src="https://static.openfintech.io/payment_providers/paymentwall/logo.svg?w=110" width="110px"> | [Paymentwall](paymentwall/) | H2H connection  | USD |
| <img src="https://static.openfintech.io/payment_providers/paypal/logo.svg?w=70" width="70px"> | [PayPal](paypal/) | Payments, Payouts, Account balances | [according to the provider account settings] |
| <img src="https://static.openfintech.io/payment_providers/paysafe/logo.svg?w=90" width="90px"> | [Paysafe](paysafe/)  | Payments, Payouts, Account balances |  AZN, BRL, EUR, INR, NGN, PKR, USD, UZS |
| <img src="https://static.openfintech.io/payment_providers/paysafecard/logo.svg?w=90" width="90px"> | [paysafecard](paysafecard/) | Payments, Payouts, Account balances | [according to the provider account settings] |
| <img src="https://static.openfintech.io/payment_providers/paysage/logo.png?w=90" width="90px"> | [PaySage.io](paysage/) | H2H connection, Payouts, Account balances | RUB, EUR |
| <img src="https://static.openfintech.io/payment_providers/paysec/logo.svg?w=70" width="70px">  | [PaySec](paysec/) | Payments, Payouts, Account balances | AUD, BTC, CNY, INR, KRW, MYR, THB, VND |
| <img src="https://static.openfintech.io/payment_providers/paysoft/logo.png?w=35" width="35px"> | [PaySoft Inc.](paysoft/) | Payouts, Account balances | [according to the provider account settings] |
| <img src="https://static.openfintech.io/payment_providers/perfectmoney/logo.svg?w=35" width="35px"> | [Perfect Money](perfectmoney/) | Payments, Payouts, Account balances | [according to the provider account settings] |
| <img src="https://static.openfintech.io/payment_providers/piastrix/logo.svg?w=70" width="70px"> | [Piastrix](piastrix/) | H2H connection, Payments, Payouts, Account balances | EUR, RUB, UAH, USD |
| <img src="https://static.openfintech.io/payment_providers/pivdennybank/logo.svg?w=100" width="100px">  | [Pivdenny Bank](pivdennybank/) | H2H connection, Payouts, Account balances | UAH |
| <img src="https://static.openfintech.io/payment_providers/platio/logo.svg?w=70" width="70px"> | [Platio](platio/) | H2H connection, Payouts, Account balances | RUB |
| <img src="https://static.openfintech.io/payment_providers/portmone/logo.svg?w=70" width="70px">  | [Portmone.com](portmone/) | H2H connection | UAH |
| <img src="https://static.openfintech.io/payment_providers/procard/logo.png?w=70" width="70px"> | [Procard](procard/)  | H2H connection | UAH |
| <img src="https://static.openfintech.io/payment_providers/pumb/logo.svg?w=35" width="35px"> | [PUMB (FUIB)](pumb/)  | H2H connection | UAH |
| <img src="https://static.openfintech.io/payment_providers/raiffeisenbank/logo.svg?w=100" width="100px"> | [Raiffeisen Bank](raiffeisenbank/) | H2H connection, Account balances | UAH |
| <img src="https://static.openfintech.io/payment_providers/rapyd/logo.svg?w=70" width="70px"> | [Rapyd.net](rapyd/) | Payouts, Account balances  | [according to the provider account settings] |
| <img src="https://static.openfintech.io/payment_providers/rbkmoney/logo.png?w=70" width="70px">  | [RBK Money](rbkmoney/) | H2H connection, Payouts, Account balances   | EUR, RUB, USD |
| <img src="https://static.openfintech.io/payment_providers/royalpay/logo.svg?w=90" width="90px"> | [Royal Pay](royalpay/) | H2H connection, Payouts, Account balances | RUB |
| <img src="https://static.openfintech.io/payment_providers/russianstandardbank/logo.png?w=70" width="70px">  | [Russian Standard Bank](russianstandardbank/) | H2H connection | RUB |
| <img src="https://static.openfintech.io/payment_providers/safecharge/logo.svg?w=90" width="90px"> | [SafeCharge](safecharge/) | H2H connection, Payouts | AUD, CAD, EUR, GBP, USD |
| <img src="https://static.openfintech.io/payment_providers/satchelpay/logo.svg?w=90" width="90px"> | [SatchelPay](satchelpay/)  | Payouts, Account balances | [according to the provider account settings] |
| <img src="https://static.openfintech.io/payment_providers/selcom/logo.png?w=70" width="70px">  | [Selcom](selcom/) | Payments, Payouts, Account balances | [according to the provider account settings] |
| <img src="https://static.openfintech.io/payment_providers/skrill/logo.svg?w=50" width="50px"> | [Skrill](skrill/) | Payments, Payouts, Account balances | AUD, BGN, CHF, CZK, DKK, EUR, GBP, HRK, HUF, MYR, NOK, PLN, RON, SEK, THB, USD |
| <img src="https://static.openfintech.io/payment_providers/square/logo.svg?w=70" width="70px">  | [Square](square/) | Payments | [according to the provider account settings] |
| <img src="https://static.openfintech.io/payment_providers/stripe/logo.svg?w=70" width="70px"> | [Stripe](stripe/)  | H2H connection | AUD, CAD, EUR, GBP, USD |
| <img src="https://static.openfintech.io/payment_providers/tkbpay/logo.svg?w=70" width="70px"> | [TKB Pay](tkbpay/) | H2H connection, Payouts, Account balances | RUB |
| <img src="https://static.openfintech.io/payment_providers/tome/logo.svg?w=70" width="70px"> | [tome](tome/) | H2H connection, Payouts, Account balances | BYN, EUR, KZT, RUB, UAH, USD |
| <img src="https://static.openfintech.io/payment_providers/transferhub/logo.svg?w=60" width="60px"> | [TransferHub](transferhub/) | H2H connection, Payments, Payouts, Account balances | EUR, RUB, UAH, USD |
| <img src="https://static.openfintech.io/payment_providers/tranzzo/logo.svg?w=90" width="90px"> | [Tranzzo](tranzzo/) | Payments | [according to the provider account settings] |
| <img src="https://static.openfintech.io/payment_providers/trustpay/logo.svg?w=90" width="90px"> | [TrustPay](trustpay/)  | H2H connection | RUB |
| <img src="https://static.openfintech.io/payment_providers/uapay/logo.svg?w=50" width="50px"> | [UAPay](uapay/)  | H2H connection, Payouts, Account balances | UAH |
| <img src="https://static.openfintech.io/payment_providers/ukrgasbank/logo.png?w=90" width="90px"> | [UKRGASBANK](ukrgasbank/)  | Payouts, Account balances | [according to the provider account settings] |
| <img src="https://static.openfintech.io/payment_providers/vcreditos/logo.svg?w=70" width="70px"> | [VCreditos](vcreditos/) | Payments, Payouts, Account balances | [according to the provider account settings]  |
| <img src="https://static.openfintech.io/payment_providers/winpay/logo.png?w=70" width="70px"> | [WinPay](winpay/) | H2H connection, Payments, Payouts, Account balances | EUR, USD, RUB |
|  <img src="https://static.openfintech.io/payment_providers/wirecapital/logo.svg?w=110" width="110px">   | [Wirecapital](wirecapital/) | H2H connection, Payments  | AZN, EUR, INR, KGS, MDL, PLN, RUB, TJS, UAH, USD, UZS |
| <img src="https://static.openfintech.io/payment_providers/wirecard/logo.svg?w=70" width="70px">     | [wirecard](wirecard/) | H2H connection, Payouts, Account balances | AZN, BYN, EUR, KGS, KZT, MDL, RUB, TJS, TMT, UAH, USD, UZS |
| <img src="https://static.openfintech.io/payment_providers/wlandpay/logo.png?w=90" width="90px"> | [WlandPay](wlandpay/) | H2H connection | AED, AUD, CAD, CHF, DKK, EUR, GBP, HKD, ILS, INR, KRW, MYR, NOK, NZD, PHP, RUB, SEK, SGD, THB, TRY, TWD, USD, ZAR |
| <img src="https://static.openfintech.io/payment_providers/wpayments/logo.png?w=90" width="90px"> | [WPayments](wpayments/) | H2H connection, Payouts, Account balances | EUR, RUB |
| <img src="https://static.openfintech.io/payment_providers/xpate/logo.svg?w=70" width="70px"> | [xpate](xpate/) | H2H connection, Payouts, Account balances  | EUR, RUB, USD |
| <img src="https://static.openfintech.io/payment_providers/xpayua/logo.svg?w=70" width="70px">  | [XPAY](xpayua/)  | Payments, Payouts, Account balances  | [according to the provider account settings] |
| <img src="https://static.openfintech.io/payment_providers/zotapay/logo.png?w=70" width="70px">  | [Zotapay](zotapay/)   | Payments, Payouts, Account balances | EUR, GHS, IDR, KES, MYR, NGN, THB, TZS, USD, VND, ZAR |

You can also send a request about a new connection by clicking the appropriate button on the [dashboard]({{custom.dashboard_base_url}}connect-directory/payment-providers) or <!--email_off-->[emailing our support team](mailto:{{custom.support_email}}).<!--/email_off-->

## How to Connect to the Payment Provider

![Step-by-Step](images/connection.png)

Usually, the connection algorithm includes the following steps:

1. Create an account on the side of the payment provider
2. Set up your provider or merchant account and get credentials for the further connection
3. Connect the account in the [{{custom.company_name}} Dashboard]({{custom.dashboard_base_url}})

!!! attention "Please note"
    - Sub-steps can be different, since methods of data storage, delivery and organisation are unique for each provider.

    - The credential parameters format must be appropriate to the connection form's requirements.

!!! question "Contact us"
    If you have any questions, feature suggestions or ideas, feel free to contact our support team via <!--email_off-->[email](mailto:{{custom.support_email}})<!--/email_off--> or [Jira service desk]({{custom.support_url}}).

[^1]: You can find the complete list of currencies {{custom.company_name}} support [here](/products/currency-rates/supported-currencies/).

--8<-- "includes/abbr.md"
