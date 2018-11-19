# Domains and IP Addresses

Your integration must be able to reach any of PayCore’s fully qualified  [domain names](#domains)  for it to function properly. Depending on how your integration operates, you may need to whitelist them.

To help your integration operate securely, it must also verify that it’s communicating with  **api.paycore.com**  through one of our listed  [IP addresses](#ip-addresses).

If your integration also receives  [webhooks](/webhooks)  from PayCore, you should ensure these events originate from one of our [webhook IP addresses](#webhook-notifications).

## Domains

PayCore uses the following fully qualified domain names to interact with your integration:

```html
api.paycore.io
checkout.paycore.io
js.paycore.io
```

## IP addresses

The full list of IP addresses that  **api.paycore.io**  may resolve to is:

```html
54.36.117.30
51.38.147.254
54.38.139.222
```
!!! warning
    Always use the **api.paycore.io** DNS name to contact our API—never an IP address.

## Webhook notifications

The full list of IP addresses that webhook notifications may come from is:

```html
54.36.117.30
51.38.147.254
54.38.139.222
```

## Downloading IP address lists

As a convenience, both lists are available in other formats for easy import into `iptables` or similar tools:

- [https://paycore.io/files/ips/ips_api.txt](https://paycore.io/files/ips/ips_api.txt)
- [https://paycore.io/files/ips/ips_api.json](https://paycore.io/files/ips/ips_api.json)
- [https://paycore.io/files/ips/ips_webhooks.txt](https://paycore.io/files/ips/ips_webhooks.txt)
- [https://paycore.io/files/ips/ips_webhooks.json](https://paycore.io/files/ips/ips_webhooks.json)