# Carmen ISO 4217

Adds a new `currency_code` method to the [Carmen](https://github.com/jim/carmen) gem's Country object. This will return the ISO 4217 currency code associated with the country. Currency codes are retrieved from the [GeoNames](http://www.geonames.org/) webservice using the [geonames_api](https://github.com/buytruckload/geonames_api) gem.

## Installation

Add this line to your application's Gemfile:

    gem 'carmen-iso-4217'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install carmen-iso-4217

## Usage

Fetch a Carmen::Country object and call the new currency_code method on it:
```ruby
country = Carmen::Country.coded('ca')
country.country_code #=> 'CAD'
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/carmen-iso-4217/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
