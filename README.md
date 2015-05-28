# Rails Reseed

When working on a rails app in development you may want to start fresh
with the database, which is where this gem comes in.
As long as you have a seeds file with some initial data, this gem will
serve you well.

A new rake task is created that will drop the database, create the
database, run the migrations and reseed the newly created database with
your seed data.

Happy building!

Inspired by Nithin Bekal's article at
[http://nithinbekal.com/posts/rake-db-reseed/](http://nithinbekal.com/posts/rake-db-reseed/)

## Installation

Add this line to your application's Gemfile in the development group:

```ruby
gem 'rails_reseed'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rails_reseed

## Usage

There is not much to do, install the gem then run Rake -T to find the
shiny new rake command.
To run, simply type ```rake db:reseed```

## Contributing

1. Fork it ( https://github.com/pixelstack/reseed/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
