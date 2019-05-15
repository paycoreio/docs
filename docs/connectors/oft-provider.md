# Worldpay

![](https://static.openfintech.io/payment_providers/worldpay/logo.svg?w=400&c=v0.59.26)

## General

**Code:** `worldpay`

**Vendor:** `worldpay` [show -->](#)

**Name:**

:   [EN] Worldpay
:   [RU] Ворлдпей

**Description:**

:   [RU] «Interkassa» – это система, позволяющая онлайн-магазинам, сайтам и другим торговым площадкам принимать все возможные формы оплаты в максимально сжатые сроки. Мы предлагаем клиентам более 50 платежных инструментов и работаем в 5 валютных зонах: гривна, рубль, доллар, евро и лари.  Запустившись в 2009 году, сегодня «Interkassa» сотрудничает с более 10.000 компаний в СНГ и Европе. Кроме того, мы являемся партнером 10 ведущих провайдеров электронной коммерции и представляем самые распространенные европейские платежные системы.  Обеспечивая современные платежные решения всех направлений и полную поддержку клиентов, «Interkassa» каждый день работает над развитием и усовершенствованием электронной коммерции, делая ее еще удобнее и безопаснее.

**Categories:** `distributing`, `aggregating`, `acquiring`, `collecting`

**Countries:**

:   ![ax](https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.3.0/flags/4x3/ax.svg#w24)
    ![ax](https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.3.0/flags/4x3/al.svg#w24)
    ![ax](https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.3.0/flags/4x3/ad.svg#w24)
    ![ax](https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.3.0/flags/4x3/ba.svg#w24)
    ![ax](https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.3.0/flags/4x3/cy.svg#w24)
    ![ax](https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.3.0/flags/4x3/gr.svg#w24)
    ![ax](https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.3.0/flags/4x3/gg.svg#w24)
    ![ax](https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.3.0/flags/4x3/gi.svg#w24)
    ![ax](https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.3.0/flags/4x3/ge.svg#w24)

## Images

### Logo

![](https://static.openfintech.io/payment_providers/worldpay/logo.svg?w=600&c=v0.59.26#w200)

```
https://static.openfintech.io/payment_providers/worldpay/logo.svg?w=600&c=v0.59.26
```

### Icon

![](https://static.openfintech.io/payment_providers/worldpay/icon.svg?w=600&c=v0.59.26#w100)

```
https://static.openfintech.io/payment_providers/worldpay/icon.svg?w=600&c=v0.59.26
```

## Payment Methods

The list of supported [Payment Methods](#):

|Code        |
|------------|
|`girocard`            |
|`visa2`               |
|`paysafecard`         |
|`cashu`               |
|`americanexpress`     |

## Payout Methods

The list of supported [Payout Methods](#):

|Icon                                                                                                 | Name                      |Code        |
|-----------------------------------------------------------------------------------------------------|---------------------------|------------|
|![](https://static.openfintech.io/payment_methods/girocard/icon.png?w=278&c=v0.59.26#w40)            |[Girocard](#)    |`girocard`            |
|![](https://static.openfintech.io/payment_methods/visa2/icon.png?w=278&c=v0.59.26#w40)               |[Visa](#)        |`visa2`               |
|![](https://static.openfintech.io/payment_methods/paysafecard/icon.png?w=278&c=v0.59.26#w40)         |[Paysafe Card](#)|`paysafecard`         |
|![](https://static.openfintech.io/payment_methods/cashu/icon.png?w=278&c=v0.59.26#w40)               |[Name](#)        |`cashu`               |
|![](https://static.openfintech.io/payment_methods/americanexpress/icon.png?w=278&c=v0.59.26#w40)     |[Name](#)        |`americanexpress`     |
|![](https://static.openfintech.io/payment_methods/mastercard/icon.png?w=278&c=v0.59.26#w40)          |[Name](#)        |`mastercard`          |   
|![](https://static.openfintech.io/payment_methods/ukash/icon.png?w=278&c=v0.59.26#w40)               |[Name](#)        |`ukash`               |
|![](https://static.openfintech.io/payment_methods/bancontactmistercash/icon.png?w=278&c=v0.59.26#w40)|[Name](#)        |`bancontactmistercash`|
|![](https://static.openfintech.io/payment_methods/cartebleue/icon.png?w=278&c=v0.59.26#w40)          |[Name](#)        |`cartebleue`          |

## JSON Object

```json
{
    "code": "worldpay",
    "vendor": "worldpay",
    "categories": [
        "distributing",
        "aggregating",
        "acquiring",
        "collecting"
    ],
    "countries": [
        "AX",
        "AL",
        "AD",
        "AR",
        "AU",
        "BY",
        "BE",
        "BA",
        "BR",
        "BG",
        "CA",
        "CL",
        "HR",
        "CY",
        "CZ"
    ],
    "payment_method": [
        "girocard",
        "visa2",
        "paysafecard",
        "cashu",
        "americanexpress",
        "mastercard",
        "ukash",
        "bancontactmistercash",
        "cartebleue",
        "visaelectron",
        "maestro",
        "cartebancaires",
        "visadebit",
        "mastercarddebit",
        "neosurf",
        "postepay",
        "elektronischeslastschriftverfahren",
        "directdebit",
        "trustly",
        "ideal",
        "enetsdirectdebit",
        "klarna",
        "giropay",
        "safetypay",
        "sofortbanking",
        "usemyservices",
        "boletobancariopay",
        "sepadirectdebit",
        "polipayonline",
        "acceptemail",
        "tenpay",
        "qiwi",
        "dokuwallet",
        "vmevisa",
        "paypal",
        "alipay",
        "applepay",
        "yandexmoney",
        "neteller",
        "dwolla",
        "masterpass",
        "visacheckout"
    ],
    "metadata": {
        "about_payments_code": "worldpay"
    },
    "name": {
        "en": "Worldpay"
    }
}
```