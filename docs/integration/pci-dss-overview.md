# PCI compliance

## Overview

If you're processing payments, transmitting and storing card data, you must comply with the  [Payment Card Industry Data Security Standards](https://www.pcisecuritystandards.org/security_standards)  (PCI DSS).

_PayCore.io Ltd company is certified for PCI DSS as a Level 1 Service Provider._

PCI compliance is a responsibility shared between both us and your business. So when accepting payments, it is essential that you do so in a PCI compliant manner. The complexity of this depends upon your integration methods, but the simplest way is never to see or access your customers' card data. Here are our tips:

-   Use one of our integration methods that allows you to accept payments without ever handling card data:  [HPP](/products/hpp/)  and  [payment.widget.js](/integration/payment-widget-js).
-   Use Transport Layer Security (TLS) for all payment pages, so that they use HTTPS.
-   Review and validate your PCI compliance once a year.

## What is PCI DSS?

The PCI Security Standards Council manages the security standards for the payment cards industry. The council was formed by Visa, MasterCard, American Express, JCB and Discover.

**It works across five main areas:**

-   Develop and maintain a global, industry-wide technical data security standard to protect card-holders’ account information
-   Reduce costs and lead times to implement the Data Security Standard. The council works to establish and ensure compliance with common technical standards and audit procedures
-   Providing a list of globally available, qualified security solution providers on its web site to help the industry become compliant.
-   Lead training, education, and a streamlined process for certifying Qualified Security Assessors (QSAs) and Approved Scanning Vendors (ASVs). This provides a single source of approval recognised by all five founding members.
-   Provide a transparent forum, where all stakeholders can contribute to the ongoing development, enhancement and dissemination of data security standards.

Compensating Controls may be considered when an entity cannot meet a requirement explicitly as stated, due to legitimate technical or documented business constraints but has sufficiently mitigated the risk associated with the requirement through implementation of other controls.

### Level 1

Any merchant processing over six million Visa or MasterCard transactions per year AND any merchant compromised in the last year, or identified by a card scheme as a level 1 merchant.

-   Annual Report on Compliance (ROC) by a Qualified Security Assessor  [(QSA)](/getting-started/glossary/)  or;
-   Annual Report on Compliance (ROC) by an Internal Security Assessor(ISA)
-   Quarterly network scan by an Approved Scan Vendor  [(ASV)](/getting-started/glossary/)
-   Attestation of Compliance Form

### Level 2

Any merchant processing between one and six million Visa or MasterCard transactions per year.

-   Annual Report on Compliance (ROC) by a Qualified Security Assessor  [(QSA)](/getting-started/glossary/)  or;
-   Annual Report on Compliance (ROC) by an Internal Security Assessor (ISA)
-   Quarterly network scan by an Approved Scan Vendor  [(ASV)](/getting-started/glossary/)
-   Attestation of Compliance Form

### Level 3

Any merchant processing between 20,000 and one million Visa or MasterCard eCommerce transactions per year.

-   Annual Self Assessment Questionnaire  [(SAQ)](https://support.worldpay.com/support/saferbusiness/saq.html)
-   Quarterly network scan by an Approved Scan Vendor  [(ASV)](/getting-started/glossary/)  - if applicable
-   Attestation of Compliance Form – found within the SAQs

### Level 4
    
Any merchant processing less than 20,000 Visa or MasterCard eCommerce transactions per year, and all other merchants processing up to one million Visa or MasterCard transactions per year.

-   Annual Self Assessment Questionnaire  [(SAQ)](https://support.worldpay.com/support/saferbusiness/saq.html)
-   Quarterly network scan by an Approved Scan Vendor  [(ASV)](/getting-started/glossary/)  – if applicable
-   Attestation of Compliance Form found within the SAQs

## Validate your PCI compliance

If you are not compliant to the Payment Card Industry Data Security Standards (PCI DSS) you will be responsible for any losses through fraud, and may also face considerable fines. Your customers will suffer if their card details are compromised.

Your business reputation will suffer as a result. Taking responsibility for PCI compliance forms part of your merchant Terms & Conditions.

All of our merchants must validate their PCI compliance annually. Most can do this with a  [Self-Assessment Questionnaire](https://www.pcisecuritystandards.org/document_library?category=saqs#results)  (SAQ), which is provided by the  [PCI Security Standards Council](https://www.pcisecuritystandards.org/).

The PCI requirements for our integration methods are as follows:

-   payment.widget.js and Frames:  **Pre-filled SAQ A**
-   Mobile SDK:  **Pre-filled SAQ A**
-   Full card details:  **SAQ D**

## Can we help?

If you have any questions or are unsure about PCI compliance, please contact our support team at  [support@paycore.io](mailto:support@paycore.io).