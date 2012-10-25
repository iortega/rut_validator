# RutValidator

Chilean RUT validator for ActiveRecord on rails 3.

[![Build Status](https://secure.travis-ci.org/iortega/rut_validator.png)](http://travis-ci.org/iortega/rut_validator)
[![Dependency Status](https://gemnasium.com/iortega/rut_validator.png)](https://gemnasium.com/iortega/rut_validator)

## Installation

Add this line to your application's Gemfile:

    gem 'rut_validator'

Run:

    $ bundle

## Usage

Add the following to your model:

    validates :rut_attribute, rut: true


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
