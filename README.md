# in_italiano

Ruby methods in Italian.

[Perché?](./docs/WHY.md)

## Requirements

* Ruby 3.4.7+

## Installation

```bash
gem install in_italiano
```

...or add the following to your `Gemfile`:

```ruby
gem 'in_italiano'
```

and run `bundle install`

## Usage

```
require in_italiano
```

### Method Translations

```
Class.in_italiano(:method_name)
=> "method name in Italian"
```

Example for the String class and it's capitalize method:

```
String.in_italiano(:capitalize)
=> "capitalizzare"
```

## Experimental API

The experimental API will eventually be removed because it breaks Ruby conventions.

```
instance_object.method.in_italiano
=> "method name in Italian"
```

```
"foobar".capitalize.in_italiano
```

## Similar Projects

* https://github.com/Pluvie/italian-ruby/