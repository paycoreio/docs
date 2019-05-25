# HPP Guide: Reference

Our HPP reference is here to help you find those hard-to-find bits of information all in one place. Use the navigation on the right to find your way around the page.

## Configuration options

Here's a complete list of HPP configuration options.

### Required

!!! note
    You can only create charges in currencies that have been enabled for your account. Please contact your Customer Success Manager if you need to process in additional currencies.


JavaScript keys

Description

`publicKey`

Your public key — find it in the  [Hub](https://hub.checkout.com/v2/login).

### Optional


JavaScript keys

Description

Default

`theme`

Choose the  [theme](https://docs.checkout.com/docs/frames-customization-guide)  of your payment form.

`standard`

`themeOverride`

Use this to load your  [custom stylesheet](https://docs.checkout.com/docs/frames-customization-guide#section-using-custom-styling).

`none`

`debugMode`

Set to  `true`  to view console messages.

`false`

`namespace`

Customize the default Frames namespace.

`Frames`

`containerSelector`

The  `.class`  or  `#id`  of the parent element in the Frames payment form.

`none`

### Payment details

### Customer details

### Localization options


`localisation`

Sets the  [language](https://docs.checkout.com/v2.1/docs/frames-customization-guide#section-localization)  of the text used.

Available options are:

-   EN-GB (English)
-   ES-ES (Spanish)
-   DE-DE (German)
-   KR-KR (Korean)
-   FR-FR (French)
-   IT-IT (Italian)
-   NL-NL (Dutch)

EN-GB

### Widget options

### Localization

## Advanced styling

You can define advanced styling and customization of Checkout.js using the Javascript API and setting the styling property in the configuration object.


## Lightbox options


## Handlers

With Checkout.js, we dispatch events which you can handle for various purposes. The table below provides the full list of events — use them to attach to one or more handlers.


### Widget and lightbox events

### Events

HPP dispatches events which can be handled for various purposes. The table below provides the full list of events that you can attach one or more handlers to.

!!! note
    Event constants on the JavaScript API are accessible via `Frames.Events`.


Event name

JavaScript constant

When

`ready`

`READY`

Triggered when Frames is registered on the global namespace and safe to use.

`frameActivated`

`FRAME_ACTIVATED`

Triggered when the form is rendered.

`cardValidationChanged`

`CARD_VALIDATION_CHANGED`

Triggered when the state of the card form validation changes.

This will return:  
`isValid: true / false`

`cardSubmitted`

`CARD_SUBMITTED`

Triggered when the card form has been submitted.

`cardTokenised`

`CARD_TOKENISED`

Triggered after a card is tokenized. Returns an object containing the card token and card information such as payment methods, expiration date, the first 6 (bin) and last 4 digits of the credit card.

`cardTokenisationFailed`

`CARD_TOKENISATION_FAILED`

Triggered if card tokenization fails.


### Adding an event handler

There are two ways to add an event handler:

-   using the standard approach
-   using configuration options

-   [Standard approach](https://docs.checkout.com/docs/checkoutjs-reference)
-   [Configuration options](https://docs.checkout.com/docs/checkoutjs-reference)

Copy

```
Checkout.addEventHandler(Checkout.Events.<EVENT_CONSTANT>, handler, options);
```

### Adding an event handler

There are two ways to add an event handler; the standard approach or configuration options.

Method 1:  The standard approach  
`Frames.addEventHandler(Frames.Events.<EVENT_CONSTANT>, handler);`

Method 2:  Configuration options

-   [Config options](https://docs.checkout.com/docs/frames-reference)

Copy

```
Frames.init({
  publicKey: 'pk_test_6ff46046-30af-41d9-bf58-929022d2cd14',
  <eventName>: handler
});
```

## Actions

### Synchronous


## Functions

### Getters / Setters


## Examples

### Using the cardTokenised handler

The example here uses a cardTokenised handler to gain a payment token for your customers' card details.

### Loading Frames asynchronously

If you load Frames asynchronously, you can change the namespace to a name other than  `Frames`. The example below uses  `Checkout`  as the namespace.

Use  `window.CKOConfig`  to change the namespace, or to load Frames asynchronously.


## Customization

One of our favorite things about Frames is its customizability. By following this styling guide, you can make changes to just about anything.


### Using custom styling

Frames can be customized to fit seamlessly with your brand. By using a  `style`  variable within the Frames script itself, it's easy to start making changes. All customizations are achieved using selectors, properties and values in a manner very familiar to developers.

Use the tabs below to view an example of styling, and a reference of selectors to use when styling your version of Frames.


### Localization

Make your customers feel at home by using our localization settings to change the language of your payment form. Use one of our pre-defined languages or create your own.

#### Pre-defined Localization

If the language you would like to use appears in our pre-defined list, then just set the  `localization`  parameter, for example  `localization: 'FR-FR'`.

The pre-defined languages:

English =  **EN-GB**  
Dutch =  **NL-NL**  
French =  **FR-FR**  
German =  **DE-DE**  
Italian =  **IT-IT**  
Korean =  **KR-KR**  
Spanish =  **ES-ES**


### Customization example

Customizing Frames for the first time can be a little daunting. To make it easier for you, we have provided the code example below. The comments in the code are there to help you with customizing your own payment form. Notice how we fit the custom styling and localization within the same script. This means there is no need to rely on external files, making Frames more secure and PCI compliant.

## Can we help?

Thanks for using PayCore.io. If you need any help or support, then message our support team at  [support@paycore.io](mailto:support@paycore.io).
