#Lenguajes y Paradigmas de programación curso 2015-2016

##  Número de grupo LPP_43 
### Práctica de Laboratorio #5. TDD creación de una clase Fracción en Ruby

### Amatista
La siguiente gema contiene los métodos esenciales para las operaciones aritméticas de fracciones

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'amatista'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install amatista

## Usage 
 Example : 

	 @fraccion1 = Amatista::Fraccion.new(1,2) 
	 @fraccion2 = Amatista::Fraccion.new(1,2) 
	 @fraccion1 + @fraccion2
	 @fraccion1 - @fraccion2
	 @fraccion1 * @fraccion2
	 @fraccion1 / @fraccion2
	 puts @fraccion1

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com//amatista/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
