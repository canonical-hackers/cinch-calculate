# Cinch::Plugins::Calculate

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

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
