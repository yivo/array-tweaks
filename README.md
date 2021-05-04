## A gem extending Ruby's array with useful utilities.

[![Gem Version](https://badge.fury.io/rb/array-tweaks.svg)](https://badge.fury.io/rb/array-tweaks)
[![Build Status](https://travis-ci.org/yivo/array-tweaks.svg?branch=master)](https://travis-ci.org/yivo/array-tweaks)

## Current features

* `drop_last`
* `drop_last!`
* `each_with_index_and_size`
* `each_after`
* `map_key`
* `not_in?`

## Installing gem

Add to your Gemfile:
```ruby
gem "array-tweaks", "~> 1.0"
```

## Running tests

Install Bundler:
```bash
gem install bundler
```

Install dependencies:
```bash
cd array-tweaks && bundle
```

Run tests:
```bash
cd array-tweaks && bundle exec rake test
```
