# Domains and IP Addresses

Your integration must be able to reach any of PayCore’s fully qualified  [domain names](#domains)  for it to function properly. Depending on how your integration operates, you may need to whitelist them.

To help your integration operate securely, it must also verify that it’s communicating with  **api.paycore.io**  through SSL certificate on it and DNS IP address.

For correct communication between PayCore and Payment Providers or third-party services what PayCore have access to, use [PayCore white-list IP addresses](#white-list-ip-addresses).

## Domains

PayCore uses the following fully qualified domain names to interact with your integration:

```html
api.paycore.io
checkout.paycore.io
hp.paycore.io
```
!!! warning
    Always use the **api.paycore.io** DNS name to contact our API—never an IP address.

## White-list IP addresses

The full list of IP addresses that PayCore use to interact with Payment Providers & third-party services:

```html
54.36.117.30
51.38.147.254
54.38.139.222
```

## Downloading IP address lists

As a convenience, both lists are available in other formats for easy import into `iptables` or similar tools:

- [https://docs.paycore.io/ips/ips_access.txt](/ips/ips_access.txt)
- [https://docs.paycore.io/ips/ips_access.json](/ips/ips_access.json)