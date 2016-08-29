# PowertexApi



## Installation

Add this line to your application's Gemfile:

```ruby
gem 'powertex_api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install powertex_api

## Usage

Create a Connection

```
PowertexApi::Api.initiate_connection(
        api_key: ENV['powertex_api_key'],
        username: ENV['powertex_username'],
        password: ENV['powertex_password'])   
```

Call Routes 

````
PowertexApi::Product.all
````


## Params From PowerTex Documention: 

The information we need to be submitted with an order is as follows:

 

Field
Data Type
Req?
Description
_______________________________________________________

Terrible format due to powertex api docs... should reformat 

Order Items should include the following:

## Required
Field | Data Type | Req? | Description
--- | --- | --- | --- 
OrderDate | DateTime | Y | The effective date of the order. Must be a valid date and time value (e.g. 2016-01-01 13:00:00).
OrderNumber | String | Y | The order number you have assigned to the order.
BillToName | String | Y | Name for the billing address.
BillToAddress | String | Y | Street address for the billing address.
BillToCity | String | Y | City name for the billing address.
BillToState | String | Y | State name for the billing address.
BillToZip | String | Y | Postal code for the billing address.
BillToCountry | String | Y | Two (2) letter country code for the billing address.
ShipToName | String | Y | Name for the shipping address.
ShipToAddress | String | Y | Street address for the shipping address.
ShipToCity | String | Y | City name for the shipping address.
ShipToState | String | Y | State name for the billing address.
ShipToZip | String | Y | Postal code for the shipping address.
ShipToCountry | String | Y | Two (2) letter country code for the shipping address.
ShipToAddressType | String | Y | Indicate if the shipping address is a Residential or Commercial address.
OrderSubTotal | Decimal | Y | The sub-total of the goods on the order, excluding tax, freight, handling, and processing charges.
OrderTaxTotal | Decimal | Y | Total of all taxes collected on the order.
OrderFreightTotal | Decimal | Y | Total amount of freight, processing, and handling charges on the order.
PaymentMethod | String | Y | The method of payment used for the order (e.g. Credit Card, PayPal, Check, Cash).
ShippingMethod | String | Y | The shipping method to be used for the order (e.g. USPS Priority Mail, UPS Ground, Next Day Air).
OrderItems | Other | Y | A list of the items on the order. See details on the next page.
ProductSku | String | Y | The SKU of the product associated with this item.
ProductName | String | Y | The name of the product associated with this item.
UnitPrice | Decimal | Y | The per-item amount charged for this item on the order.
Quantity | Integer | Y | The number of this item purchased on the order.
ItemSubTotal | Decimal | Y | The sub-total for this item on the order.
Taxable | Boolean | Y | Indicates if this item was taxable on the order.
ItemTaxAmount | Decimal | Y | The amount of tax charged for this item on the order.

## Not Required
 
 Field | Data Type | Req? | Description
 ------ | ---------- | ------ | -----------
BillToCompany | String | N | Company name for the billing address.
BillToAddress2 | String | N | Secondary address information for the billing address.
BillToPhone | String | N | Phone number for the billing address.
BillToEmail | String | N | Email address for the billing address.
ShipToCompany | String | N | Company name for the shipping address.
ShipToAddress2 | String | N | Secondary address information for the shipping address.
ShipToPhone | String | N | Phone number for the shipping address.
ShipToEmail | String | N | Email address for the shipping address.
PoNumber | String | N | PO Number assigned to the order.
OrderNote | String | N | A note to include with the order.
FreightCharge | Decimal | N | The amount of freight charged for this item on the order.


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

