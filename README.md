# RailsFormBuilderParamName

Written by Nat Budin.  Copyright &copy; 2015 PatientsLikeMe, Inc.  Released under the MIT license.

This gem is a horrid, but small and self-contained, hack.  It adds a method to Rails' global helpers, and a corresponding method in `FormBuilder`, called `field_param_name`.  This method returns the value of the `name` attribute on fields that the Rails form helpers would hypothetically generate if you were to call them.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rails_form_builder_param_name'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rails_form_builder_param_name

## Usage

Inside a `form_for` or `fields_for` block:

```erb
<%= form_for :user do |f| %>
  <div data-user-birth-date-field-name="<%= f.field_param_name :birth_date %>"></div>
<% end %>
```

Outside one of those:

```erb
<div data-user-birth-date-field-name="<%= field_param_name :user, :birth_date %>"></div>
```

Both forms accept a `multiple: true` option, which will effectively add `[]` to the param name, just like passing that option to Rails input tag helpers would.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/rails_form_builder_param_name. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

