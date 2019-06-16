# HPP Guide: Use cases

## With a predefined service

### Service without fields

Each method has services that are used to make payments.

You can watch all enable methods/services in dashboard commerce HPP sandbox.

Also in dashboard user can configure payment link or code snippet to execute on client page. And immediately test the required configuration.

If you specify the code of the service in the service field, the HPP will be opened immediately on this service.

```javascript
window.payment_widget.init({
  selector: "HTML_ID_SELECTOR_TO_INSERT_WIDGET_INTO",
  flow: "iframe",
  public_key: "YOUR_PUBLIC_KEY",
  amount: "AMOUNT_OF_INVOICE",
  currency: "USD",
  service: "CODE_OF_SERVICE_TO_OPEN",
});
```

![alt text](images/sandbox_service_demo.png)

### Service with fields

For some payment services it is necessary to specify the data for payment execution. For example, the user's name and phone number.

You can check fields for every service also in the dashboard.
Fill them and add to widget init payload.
If the fields are valid, the service will be performed immediately

```javascript
window.payment_widget.init({
  selector: "HTML_ID_SELECTOR_TO_INSERT_WIDGET_INTO",
  flow: "iframe",
  public_key: "YOUR_PUBLIC_KEY",
  amount: "AMOUNT_OF_INVOICE",
  currency: "USD",
  service: "CODE_OF_SERVICE_TO_OPEN",
  service_fields: [
    { key: "first_name", value: "john" },
    { key: "last_name", value: "doe" },
    { key: "email", value: "johndoe@gmail.com" },
  ],
});
```

![alt text](images/service_with_fields.png)

## By payment invoice id

In the list of transactions on your commercial account, you can find a list of payment requests that have already been created. Taking the id of any of them you can immediately initialize the widget.

<b> Smart redirect. </b>

If the service is already in its final status, the user will see its status page.

![Payment invoice id](images/payment_invoice_ID.png)

![Payment detedect ](images/finalStatus.png)

If the service needs additional actions, such as entering payment data on the PSP side - the user will be directed to the external service.

```javascript
window.payment_widget.init({
  cpi: "PAYMENT_INVOICE_ID",
});
```
