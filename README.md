# BootstrapMan

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/BootstrapMan`. To experiment with that code, run `bin/console` for an interactive prompt.

You don't need to customize the stylesheets manually, the only gem you need is the `BootstrapMan`

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'BootstrapMan', '~> 0.1.4'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install BootstrapMan

## Usage

### Installing the CSS stylesheets

After running `bundle install`, run the generator:

    rails generate bootstrap:install

This command will create required asset files and update your application layout.

## Generating layouts and views

You can run following generators to get started with Bootstrap quickly.

Strapify (generates Bootstrap compatible scaffold views.) - (Haml and Slim supported)

Usage:

    rails g bootstrap:strapify [RESOURCE_NAME]


Example:

    rails g scaffold Post title:string description:text
    rake db:migrate
    rails g bootstrap:strapify Posts

Notice the plural usage of the resource to generate bootstrap:strapify.

## Rails Server

Run bundle install before running Rails Server. Gem Install step has added few Gems to the end of Gemfile for ease.

Gems Added:
    gem 'jquery-rails'
    gem 'bootstrap'
    gem 'font-awesome-rails'
    gem 'bootstrap_form'

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/BootstrapMan. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the BootstrapMan project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/BootstrapMan/blob/master/CODE_OF_CONDUCT.md).
