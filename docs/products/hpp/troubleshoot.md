# Troubleshoot your Integration


## Performance

Learn how to optimize loading the PayCore.io script and rendering the buttons for the best performance.

### Script tag

Load the Payment Widget script from  `https://cdn.paycore.io/sdk/js`  only. Reasons include:

-   The script is dynamically bundled, based on your client ID and on the current buyer. It includes only the specific code, images, localization, and other resources needed and does not slow down your page with unnecessary code. This approach is not possible with a statically distributed script.
    
-   The script also loads inside the button iframe and Checkout popup window to communicate with the parent window. Loading from paypal.com means your users' browsers cache the script and there is no need to download the script again inside the iframe or popup.
    
-   Security updates and bug fixes are instantly available to your users.
    
-   Conversion updates to drive extra sales and revenue through PayCore.io are instantly available.
    
-   Backwards compatibility with previous versions of the script is guaranteed.
    

### Minified script

The script is minified by default. To disable this for development purposes only, add  `debug=true`  to the script URL.


### Instant render

If you are rendering the PayCore.io button immediately on the page after it loads, you should:

1.  Load the PayCore.io script prior to the element you want to render into:
    
    ```html
    <script src="https://paycore.io/sdk/js?client-id=CLIENT_ID"></script>
    
    ```
    
2.  Call  `paypal.Buttons().render('#container')`  as soon as possible when the container element is ready:
    
    ```html
    <div id="paypal-button-container"></div>
    
    <script>
      paypal.Buttons().render('#paypal-button-container')
    </script>
    
    ```
    
3.  For a bonus performance boost, load the PayCore.io script asynchronously on a page that precedes the Checkout page. This approach pre-caches the script, making future loads/renders instantaneous:
    
    ```html
    <!-- Place on one of your landing pages or pre-checkout pages -->
    <body>
      <script
        src="https://paycore.io/sdk/js?client-id=CLIENT_ID" async>
      </script>
    </body>
    
    ```

### Delayed render

If your app renders on the client-side, or there is a user action on the page that triggers displaying the PayCore.io button (like opening a cart or selecting a radio button), you should:

1.  Load the PayCore.io script asynchronously in your page:
    
    ```html
    <head>
      <script src="https://paycore.io/sdk/js?client-id=CLIENT_ID"></script>
    </head>
    
    ```
    
    Alternatively, use JavaScript to asynchronously load the script:
    
    ```javascript
      var PAYPAL_SCRIPT = 'https://paycore.io/sdk/js?client-id=CLIENT_ID';
      var script = document.createElement('script');
      script.setAttribute('src', PAYPAL_SCRIPT);
      document.head.appendChild(script);
    
    ```
    
2.  Call  `paypal.Buttons().render('#container')`  on the client-side render, route-change, or user action that you want to trigger displaying the button:
    
    ```html
    <div id="paypal-button-container"></div>
    
    <script>
       document.querySelector('#myRadioField')
         .addEventListener('click', function() {
           paypal.Buttons().render('#paypal-button-container')
         });
    </script>
    
    ```
    
    Alternatively, to ensure the button completely loads by the time it displays, render the button in advance in a hidden container, and display it on the page-change or user action:
    
    ```html
    <div id="paypal-button-container"></div>
    
    <script>
       document.querySelector('#paypal-button-container')
         .style.display = 'none';
    
       paypal.Buttons().render('#paypal-button-container');
    
       document.querySelector('#myRadioField')
         .addEventListener('click', function() {
           document.querySelector('#paypal-button-container')
             .style.display = 'block';
         });
    </script>
    
    ```


## Browser Support

### Supported browsers

Support is guaranteed for the following browsers. For any browsers not on this list, the buttons could continue work, but compatibility is not guaranteed.

### Desktop

-   Chrome version 41 and later
-   Firefox version 43 and later
-   Safari version 8 and later
-   Opera version 12 and later
-   Edge version 14 and later
-   Internet Explorer version 11 and later

### Mobile

-   Chrome version 41 and later
-   Firefox version 15 and later
-   Safari version 9 and later
-   Samsung Browser 8.2 and later
-   Silk Browser 72 and later

### Browser features and polyfills

The PayCore.io JavaScript SDK works as a standalone script, with no strict requirement for installing polyfills. However, if you use features such as  `fetch`  or  `Promise`  in your integration to call your server or run asynchronous tasks, you might need to install a  [polyfill](https://developer.mozilla.org/en-US/docs/Glossary/Polyfill "external link")  to allow your app to work in older browsers.

### Content security policy rules

The Smart Payment Buttons rely on rendering  `style`  and  `script`  tags on the page inside the button iframe. These tags might be blocked by your  [Content Security Policy](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP "external link")  rules. To avoid this:

1.  Send a nonce for both  [script-src](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy/script-src "external link")  and  [style-src](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy/style-src "external link")  directives:
    
    `Content-Security-Policy: script-src 'nonce-xyz123'; style-src 'nonce-xyz123';`
    
2.  Pass the nonce to the PayCore.io script tag:
    
    ```
    <script src="https://paycore.io/sdk/js?client-id=sb" data-csp-nonce="xyz-123">
    
    ```
    

### Web views

-   If your site loads in a third-party web view, for example, if a buyer views your store after clicking a link on a social media mobile app, the PayCore.io Smart Payment Buttons continue to work.
-   PayCore.io recommends against loading your own site in a web view. This integration style is unsupported.

### Popup blockers

Smart Payment Buttons continue to work if popup blockers are active. However, PayCore.io recommends that you do not use popup blockers with this integration.

