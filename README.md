# panolint-rails

[![Build Status](https://github.com/panorama-ed/panolint-rails/workflows/Main/badge.svg)](https://github.com/panorama-ed/panolint-rails/actions)

A small gem containing rules for linting Ruby on Rails code at Panorama Education.

This gem inherits RuboCop configuration from [panolint-ruby](https://github.com/panorama-ed/panolint-ruby) so it should be used *in place of* (not in combination with) `panolint-ruby`.

## Installation

Add this line to your application's Gemfile:

```
gem "panolint-rails", git: "https://github.com/panorama-ed/panolint-rails.git", branch: "main"
```

And then execute:

    $ bundle

**Do not install this gem from RubyGems**, as updates are only pushed to this repo. We have only pushed an initial version to RubyGems to avoid supply chain attacks from malicious squatters.

## Usage

### `Brakeman`

You can use `panolint-rails`'s `brakeman` configuration in your project by pointing the `brakeman` run at the configuration file in this repo:

```
$ bundle exec brakeman -c "$(bundle show brakeman)/brakeman.yml"
```

### `RuboCop`

You can use `panolint-rails`'s RuboCop configuration in your project with the following addition to the top of your project's `.rubocop.yml`:

```
inherit_gem:
  panolint-rails: panolint-rails-rubocop.yml
```

This gem uses a gem-specific named file instead of the traditional `.rubocop.yml` due to a [previous issue](https://github.com/rubocop/rubocop/issues/4154#issuecomment-316004878) with RuboCop extensions in VS Code [reading the wrong repository's `.rubocop.yml` file](https://github.com/panorama-ed/panolint/pull/95).

## Contributing

While this gem is intended for internal use by Panorama Education engineers, bug reports and pull requests are welcome on GitHub at https://github.com/panorama-ed/panolint-rails. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the `panolint-rails`'s project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/panorama-ed/panolint-rails/blob/master/CODE_OF_CONDUCT.md).
