# Cinch::Plugins::Calculate

[![Gem Version](https://badge.fury.io/rb/cinch-calculate.png)](http://badge.fury.io/rb/cinch-calculate)
[![Dependency Status](https://gemnasium.com/canonical-hackers/cinch-calculate.png)](https://gemnasium.com/canonical-hackers/cinch-calculate)
[![Build Status](https://travis-ci.org/canonical-hackers/cinch-calculate.png?branch=master)](https://travis-ci.org/canonical-hackers/cinch-calculate)
[![Coverage Status](https://coveralls.io/repos/canonical-hackers/cinch-calculate/badge.png?branch=master)](https://coveralls.io/r/canonical-hackers/cinch-calculate?branch=master)
[![Code Climate](https://codeclimate.com/github/canonical-hackers/cinch-calculate.png)](https://codeclimate.com/github/canonical-hackers/cinch-calculate)

Plugin that alows users to find the answers to math problems.

## Installation

Add this line to your application's Gemfile:

    gem 'cinch-calculate'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cinch-calculate

## Usage

Just add the plugin to your list:

    @bot = Cinch::Bot.new do
      configure do |c|
        c.plugins.plugins = [Cinch::Plugins::Calculate]
      end
    end

You will also need to have GNU Units installed. The Units binary that
ships with OSX is old and doesn't work. If you have units installed
some place that's not '/usr/bin/units' you will have to specify the
alternate location.

    c.plugins.options[Cinch::Plugins::Calculate][:units_path] = '/usr/bin/gunits'

Once that's all done, just use .math in the channel.

    17:31 <@xentrac> .math 1000 W/m^2 * pi * earthradius^2
    17:31 < marvin> xentrac: 1.2751652e+17 kg m^2 / s^3
    17:31 <@xentrac> .math (1000 W/m^2 * pi * earthradius^2) / (quadrillion btu / year)
    17:31 < marvin> xentrac: 3814043.9


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
