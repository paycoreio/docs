# SEPA Credit Transfer (service)

![](https://static.openfintech.io/payment_methods/sepacredittransfer/logo.svg?w=400&c=v0.59.26)


## General

**Code:** `sepa_credit_transfer_individual_eur`

**Method:** `sepa_credit_transfer` [show -->](/payment-methods/sepa_credit_transfer/)

**Currency:** `EUR` [show -->](/currencies/EUR/)

**Name:**

:   [EN] SEPA Credit Transfer

**Amount limits:** from `0.01` to `1000000` EUR


## Fields

### Overview

|Key         |Required|Type    |Regexp                      |
|------------|--------|--------|----------------------------|
|`first_name`|✔       |`string`|`\/^(\\w){3,64}$\/`         |
|`last_name` |✔       |`string`|`\/^(\\w){3,64}$\/`         |
|`iban`      |✔       |`string`|`\/^[A-Z]{2}(\\w){13,29}$\/`|
|`descriptor`|✔       |`string`|`\/^[A-z,a-z,0-9]{4,128}$\/`|

### Details

1.  **`first_name`**

    Type: `string`

    Regexp: `\/^(\\w){3,64}$\/`

    Required: `true`

    Label:
    :   [en] First name
    :   [ru] Имя получателя
    :   [uk] Імʼя отримувача

    Hint:
    :   [en] Enter first name
    :   [ru] Введите имя получателя
    :   [uk] Введіть імʼя отримувача

2. **`last_name`**

    Type: `string`

    Regexp: `\/^(\\w){3,64}$\/`

    Required: `true`

    Label:
    :   [en] First name
    :   [ru] Имя получателя
    :   [uk] Імʼя отримувача

    Hint:
    :   [en] Enter first name
    :   [ru] Введите имя получателя
    :   [uk] Введіть імʼя отримувача


## JSON Object

```json
{
    "code": "sepa_credit_transfer_individual_eur",
    "method": "sepa_credit_transfer",
    "currency": "EUR",
    "fields": [
      {
        "key": "first_name",
        "type": "string",
        "label": {
          "en": "First name",
          "ru": "Имя получателя",
          "uk": "Імʼя отримувача"
        },
        "hint": {
          "en": "Enter first name",
          "ru": "Введите имя получателя",
          "uk": "Введіть імʼя отримувача"
        },
        "regexp": "\/^(\\w){3,64}$\/",
        "required": true,
        "position": 1
      },
      {
        "key": "last_name",
        "type": "string",
        "label": {
          "en": "Last name",
          "ru": "Фамилия получателя",
          "uk": "Прізвище отримувача"
        },
        "hint": {
          "en": "Enter last name",
          "ru": "Введите фамилию получателя",
          "uk": "Введіть прізвище отримувача"
        },
        "regexp": "\/^(\\w){3,64}$\/",
        "required": true,
        "position": 2
      },
      {
        "key": "iban",
        "type": "string",
        "label": {
          "en": "IBAN",
          "ru": "IBAN",
          "uk": "IBAN"
        },
        "hint": {
          "en": "Enter IBAN",
          "ru": "Введите IBAN",
          "uk": "Введіть IBAN"
        },
        "regexp": "\/^[A-Z]{2}(\\w){13,29}$\/",
        "required": true,
        "position": 3,
        "options": {
          "validators": [
            {
              "name": "Iban"
            }
          ]
        }
      },
      {
        "key": "descriptor",
        "type": "string",
        "label": {
          "en": "Description",
          "ru": "Описание",
          "uk": "Опис"
        },
        "hint": {
          "en": "Enter description",
          "ru": "Введите описание",
          "uk": "Введіть опис"
        },
        "regexp": "\/^[A-z,a-z,0-9]{4,128}$\/",
        "required": true,
        "position": 4
      }
    ],
    "amount_min": 0.01,
    "amount_max": 1000000
}
```