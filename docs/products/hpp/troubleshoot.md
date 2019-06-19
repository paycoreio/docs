# Troubleshoot your Integration


## Performance

Learn how to optimize loading the PayCore.io script and rendering the buttons for the best performance.

### Script tag

Load the Payment Widget script from  `https://unpkg.com/@paycore/payment-widget-js`  only. Reasons include:

-   The script is dynamically bundled, based on your client ID and on the current buyer. It includes only the specific code, images, localization, and other resources needed and does not slow down your page with unnecessary code. This approach is not possible with a statically distributed script.
-   The script also loads inside the button iframe and HPP popup window to communicate with the parent window. Loading from unpkg.com means your users' browsers cache the script and there is no need to download the script again inside the iframe or popup.
-   Security updates and bug fixes are instantly available to your users.
-   Conversion updates to drive extra sales and revenue through PayCore.io are instantly available.
-   Backwards compatibility with previous versions of the script is guaranteed.
    
### Minified script

The script is minified by default. To disable this for development purposes only, add  `debug=true`  to the script URL.

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

The PayCore.io JavaScript SDK works as a standalone script, with no strict requirement for installing polyfills. However, if you use features such as  `fetch`  or  `Promise`  in your integration to call your server or run asynchronous tasks, you might need to install a  [polyfill](https://developer.mozilla.org/en-US/docs/Glossary/Polyfill)  to allow your app to work in older browsers.

### Web views

-   If your site loads in a third-party web view, for example, if a buyer views your store after clicking a link on a social media mobile app, the HPP continue to work.
-   We recommends against loading your own site in a web view. This integration style is unsupported.

### Popup blockers

HPP continue to work if popup blockers are active. However, we recommends that you do not use popup blockers with this integration.

