[gem]: https://rubygems.org/gems/minitest-reporters
[travis]: https://travis-ci.org/kern/minitest-reporters

# minitest-reporters - create customizable Minitest output formats

[![Join the chat at https://gitter.im/kern/minitest-reporters](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/kern/minitest-reporters?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
[![Gem Version](https://badge.fury.io/rb/minitest-reporters.svg)][gem]
[![Build Status](https://secure.travis-ci.org/kern/minitest-reporters.png)][travis]

Death to haphazard monkey-patching! Extend Minitest through simple hooks.

## Installation ##

    gem install minitest-reporters

## Usage ##

In your `test_helper.rb` file, add the following lines:

```ruby
require "minitest/reporters"
Minitest::Reporters.use!
```

This will swap out the Minitest runner to the custom one used by minitest-reporters and use the correct reporters for Textmate, Rubymine, and the console. If you would like to write your own reporter, just `include Minitest::Reporter` and override the methods you'd like. Take a look at the provided reporters for examples.

Don't like the default progress bar reporter?

```ruby
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
```

Want to use multiple reporters?

```ruby
Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new, Minitest::Reporters::JUnitReporter.new]
```

The following reporters are provided:

```ruby
Minitest::Reporters::DefaultReporter  # => Redgreen-capable version of standard Minitest reporter
Minitest::Reporters::SpecReporter     # => Turn-like output that reads like a spec
Minitest::Reporters::ProgressReporter # => Fuubar-like output with a progress bar
Minitest::Reporters::RubyMateReporter # => Simple reporter designed for RubyMate
Minitest::Reporters::RubyMineReporter # => Reporter designed for RubyMine IDE and TeamCity CI server
Minitest::Reporters::JUnitReporter    # => JUnit test reporter designed for JetBrains TeamCity
Minitest::Reporters::MeanTimeReporter # => Produces a report summary showing the slowest running tests
Minitest::Reporters::HtmlReporter     # => Generates an HTML report of the test results
```

Options can be passed to these reporters at construction-time, e.g. to force
color output from `DefaultReporter`:

```ruby
Minitest::Reporters.use! [Minitest::Reporters::DefaultReporter.new(:color => true)]
```

## Screenshots ##

**Default Reporter**

![Default Reporter](./assets/default-reporter.png?raw=true)

**Spec Reporter**

![Spec Reporter](./assets/spec-reporter.png?raw=true)

**Progress Reporter**

![Progress Reporter](./assets/progress-reporter.png?raw=true)

## Caveats ##

If you are using minitest-reporters with ActiveSupport 3.x, make sure that you require ActiveSupport before invoking `Minitest::Reporters.use!`. Minitest-reporters fixes incompatibilities caused by monkey patches in ActiveSupport 3.x. ActiveSupport 4.x is unaffected.

**Rails Backtrace Filtering and Custom Backtrace Filtering**

Minitest lets you configures your own, custom backtrace filter via
`Minitest.backtrace_filter=`. If you're using Rails, then by default
`Minitest.backtrace_filter` is a filter designed specially for Rails.

But minitest-reporters overwrites `Minitest.backtrace_filter` by default. That means it
will overwrite your custom filter and Rails' default filter. (You'll know this is
happening if you see overly long or otherwise unexpected backtraces.)

To avoid that, you must manually tell minitest-reporters which filter to use. In Rails,
do this in `test_helper.rb`:

    Minitest::Reporters.use!(
      Minitest::Reporters::DefaultReporter.new,
      ENV,
      Minitest.backtrace_filter
    )

The third parameter to `.use!`, in this case `Minitest.backtrace_filter`, should be a
filter object. In the above example, you're telling minitest-reporters to use the filter
that Rails has already set.

## Note on Patches/Pull Requests ##

* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a future version unintentionally.
* Commit, but do not mess with the `Rakefile`. If you want to have your own version, that is fine but bump the version in a commit by itself in another branch so I can ignore it when I pull.
* Send me a pull request. Bonus points for git flow feature branches.

## Resources ##

* [GitHub Repository](https://github.com/CapnKernul/minitest-reporters)
* [Documentation](http://www.rubydoc.info/github/kern/minitest-reporters/master)

## License ##

Minitest-reporters is licensed under the MIT License. See `LICENSE` for details.
