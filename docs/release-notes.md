
# Release notes

PayCore.io<sup>®</sup> regularly updates the platform and its APIs with new features, bug fixes, and performance improvements. This changelog lists releases by date and version number, along with associated changes. Read more about [versioning](https://semver.org).

## **PayCore.io v0.56: March 4, 2019**
*By Dmytro Dziubenko, Chief Technology Officer*

Hello all, we have released a new version of [PayCore.io](http://paycore.io/)<sup>®</sup>. This major release introduces new functionality and improvements. It’s often helpful to know what’s happening under the hood because it gives you insight into things you cannot see. Thus in this document, we will give a brief overview of the highlights of this release.

**Introducing [PayCore.io](http://paycore.io/)<sup>®</sup> Commerce feature**

v0.56 comes with a new platform layer overhead the Payment and Payout Gateways in which we centralised the common functionality and services for ecommerce for both online business and FinTech customers. This is a fundamental architectural restructuring which hugely simplifies and standardises the interaction and operation of your payment infrastructure in  [PayCore.io](http://paycore.io/)<sup>®</sup>. Major ecommerce services now all are taken care of within the Commerce layer and no longer from within each Payment and Payout Gateways, making integration and interaction a much easier and leaner process.

Instead of having multiple PayCore.io accounts to support various projects or business entities now you can create as many  **Commerce Accounts**  as you require within one PayCore.io<sup>®</sup> account. When it comes to running multiple businesses now you can manage them all in one place. For our FinTech and marketplace customers, this means an ability to create accounts for their merchants and manage them in one place.

With  **Currency Accounts**  now is possible to create and manage currency holding accounts that give your merchants the flexibility to make and receive foreign currency payments in selected currencies without converting the funds into a base currency. For online businesses, multiple currency accounts enable to support billing in multiple currencies and consolidate transaction data made in the same currency for accounting and financial management purposes.

**Contract Schemes**  are to create a set of rules comprises routing and FX-rate schemes for both ingoing and outgoing transactions in supported currencies. You need to create first a contract scheme before you'll be able to create a Commerce Account. This is due to requiring that every commerce account has linked to a certain Contract Scheme. Online businesses can create multiple Contract Schemes to be assigned to numerous Commerce Accounts to support different types of offerings or multiple storefronts. The ability to assign one Contract Scheme to any number of Commerce Accounts allows FinTechs and marketplaces to apply the same conditions mirror agreement conditions to a certain group of merchants (i.g. toy retailers or ticketing) such as available payment methods, commissions, reserves, and etc.
