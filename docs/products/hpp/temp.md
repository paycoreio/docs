
## Redirecting customers to HPP

You can use a standard HTML form to collect and pass payment and customer details to HPP.
See Example HTML forms on page below. When the customer selects the payment option, your website should post the HTML form containing their transaction details to: https://com.paycore.io/hpp/.
The HTML form should contain the mandatory hidden input fields listed in [Configuration](#).
You should use a secure method of obtaining a session ID before redirecting customers to HPP, as described in [Secure redirection method](#).

!!! tip "Tips for improving the customer experience"
     -   Any parameters that you pass through in your HTML form, such as customer first name, last name, and email, will be automatically populated (or populated and hidden) as appropriate, on the HPP making it easier for the customer to complete these forms.
     -   You can customize the appearance of the HPP using the options described in [Customization Guide](/products/hpp/customization/).
     -   To maximise conversion, PayCore.io recommends that you redirect customers to the HPP in the same browser window or embed the HPP in an iframe (see Embedding on [Quickstart Guide](#)).

### Secure redirection method

This method can be used to ensure that details of the payment are communicated securely between
your server and Skrill. 

!!! note "Important!"
     We strongly recommend that you use this method when redirecting your customers to Skrill, as it does not require sending any payment parameters to their browser. This prevents customers from being able to view or modify any hidden parameters in your source code.

The redirection process is as follows:
1. Your web server makes a standard POST request with the payment parameters, using the
‘prepare_only=1’ parameter (see Table 2-1 below).
2. The Skrill server prepares a session for the payment and returns a standard HTTP(S) response.
3. Your web server takes the body of the response which contains a SESSION_ID value.
4. Using this SESSION_ID value the customer can be redirected to: https://pay.skrill.com/?sid=<SESSION_ID>

The normal flow of events continues. This redirect must happen within 15 minutes of the original
request or the session will expire.

!!! note
    The Skrill Payment Platform treats GET/POST requests to the payment URL identically. As a result, you can also use an HTTP GET operation in place of POST in step 1 above and pass the payment parameters as name/value pairs in the query string. Similarly, in Step 4 above you could use a HTTP POST operation and pass the SESSION_ID value from Step 3 as the sid parameter in the message body. For code examples of how to implement this, see Redirecting the customer to Skrill on page 5-3.

## Secure redirection restriction

The Quick Checkout Secure Restriction service allows merchants to create a whitelist of IP addresses
(including ranges) specific to them, so that Gateway transactions are generated only for the IP
addresses in the list. When the service is enabled and the list is populated, any request that doesn’t
have a “SID” in Skrill will be blocked. By default, the service is disabled, and the Gateway allows all
payment requests, with no restrictions.
Configure the service as follows:
1. Note the IP addresses/address ranges to add to the whitelist.
2. Log in to your merchant account.
3. Go to Settings > DEVELOPER SETTINGS.
4. Under Quick Checkout Secure Restriction, set Enable service, and then, in the field below,
type the IP addresses separated by spaces, or an address range in CIDR notation.
5. Click Save. 
