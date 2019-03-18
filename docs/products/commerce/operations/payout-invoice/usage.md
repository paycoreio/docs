# Payout Invoice: Usage

Payout Invoice is located in Operations section. This entity includes **List**, **Overview** and **Creating** screens.

## List

This screen contains an enumeration of transactions with main properties, such as Commerce account, Payout Method, Amount, Currency, Current status, Resolution, Created time.

It also contains filters and search features to facilitate use.

!!! info "Payout Invoice Overview"
    [![Payout Invoice](images/payout_invoice_list.png)](images/payout_invoice_list.png)

## Creating

This action consists of 3 stages:

- Create : this stage requires the setting of Invoice proerties and parameters. It contains **basic** properties and **options**.

    !!! tip
        Hover over the option label to see info tooltip!

    ??? info "Payout Invoice Creating: Create"
        [![Payout Invoice](images/payout_invoice_creating1.png)](images/payout_invoice_creating1.png)

        [![Payout Invoice](images/payout_invoice_creating1_1.png)](images/payout_invoice_creating1_1.png)

- Confirm : this stage is intended to get user ensured that all data is correct and functionality for **manual** process

    ??? info "Payout Invoice Creating: Confirm"
        [![Payout Invoice](images/payout_invoice_creating2.png)](images/payout_invoice_creating2.png)

- Result : contains processing data 

    ??? info "Payout Invoice Creating: Result"
        [![Payout Invoice](images/payout_invoice_creating3.png)](images/payout_invoice_creating3.png)


## Overview

Overview page is intended to display detailed info about:

- Operation states
- Amounts
- Service, Method, Provider
- Related entities etc. 

!!! info "Payout Invoice Overview"
    [![Payout Invoice](images/payout_invoice_overview.png)](images/payout_invoice_overview.png)



## Configuration


To configure the payout invoice  set necessary properties at Commerce Account **```Payout options```** page:

1. Navigate to the <a href =https://dashboard.paycore.io/commerce/accounts/" target="_blank" rel="noopener">Commerce accounts</a>
2. Go to the Setting of neccessary one
3. Find **Payout Options** section
4. Set property value

!!! info "Payout Options"
    [![Payout Invoice](images/payout_options1.png)](images/payout_options1.png)

!!! tip
    Do not forget to Save changes!

### Payout options table

<table >
<tr><th><b>Option</b></th><th><b>Description</b></th></tr>

<tr><td style="font-weight:bold;">Public Zero-Fee badge</td><td>Wheather to give a sign "without commission" for each service through the Public API.</td></tr>
<tr><td style="font-weight:bold;">Public fee details</td><td>Wheather to give detailed commission values for each service through the Public API.</td></tr>
<tr><td style="font-weight:bold;">Moderation required</td><td>Do not perform an operation without manual moderation</td></tr>
<tr><td style="font-weight:bold;">Allow partially</td><td>Partial processing allowed</td></tr>
<tr><td style="font-weight:bold;">Parallel mode</td><td>Parallel or sequential processing strategy</td></tr>
<tr><td style="font-weight:bold;">Split mode</td><td>Allow the splitting of operation when exceeding the amount limit</td></tr>
<tr><td style="font-weight:bold;">Include commission</td><td>Put the commission in the payment amount and calculate it from the amount of the write-off</td></tr>
<tr><td style="font-weight:bold;">Expose internal callback data</td><td>Expose internal callback data</td></tr>
<tr><td style="font-weight:bold;">Invoice lifetime</td><td>Set operation expiration time based on creation. Expires = created + lifetime</td></tr>
<tr><td style="font-weight:bold;">Attempts limit</td><td>How many times processor will try to create new operation based on failed status</td></tr>
<tr><td style="font-weight:bold;">Descriptor template</td><td>Operation descriptor generation template for processing provider</td></tr>











</table>
