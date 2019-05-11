# Hosted Payment Page Integration Guide


## Using metadata

In the example above we suppose you will store the  `reference_id`  that’s unique to the payment in your order table. This way your website is able to look-up the order for this payment when the webhook is triggered by PayCore.io. Your website is keeping track of the payment, effectively bringing about the connection between order and payment. This approach is easiest to grasp, which is why we use it in our example.

Alternatively you could ask PayCore.io to remember the unique identifier of your order by instructing the PayCore.io API to store it in the payment’s  `metadata`. You would provide it while creating the payment. In our example  `order_id` would be a good candidate. PayCore.io stores the metadata for you, when you fetch the payment during processing the webhook the metadata is included in the response. This is another way to connect orders and payments. We advise to use the  `metadata`  approach. This is the most popular approach and it’s easiest to implement.