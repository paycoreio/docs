# Domains and IP Addresses

Your integration must be able to reach any of {{custom.company_name}}’s fully qualified  [domain names](#domains)  for it to function properly. Depending on how your integration operates, you may need to whitelist them.

To help your integration operate securely, it must also verify that it’s communicating with  **api.paycore.io**  through SSL certificate on it and DNS IP address.

For correct communication between {{custom.company_name}} and Payment Providers or third-party services what {{custom.company_name}} have access to, use [{{custom.company_name}} white-list IP addresses](#white-list-ip-addresses).

## Domains

{{custom.company_name}} uses the following fully qualified domain names to interact with your integration:

```html
api.paycore.io
com.paycore.io
```

## White-list IP addresses

The list of IP addresses that {{custom.company_name}} uses to interact with payment providers & third-party services:

``` html
3.126.246.226
3.127.19.165
3.126.219.223
3.65.180.235
```

The following IP addresses are also in use but will be deprecated in the nearest future:

``` html
54.36.117.30
51.38.147.254
54.38.139.222
```

## Downloading IP address lists

As a convenience, both lists are available in other formats for easy import into `iptables` or similar tools:

- [IP Addresses (TXT)](/integration/ips_access.txt)
- [IP Addresses (JSON)](/integration/ips_access.json)
