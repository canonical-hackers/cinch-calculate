require 'coveralls'
Coveralls.wear!
require 'cinch-calculate'

require 'cinch/test'
=begin
def fake_bot
  bot = Cinch::Bot.new
  bot.loggers.level = :fatal
  bot
  return bot
end

module Cinch
  module Plugin
    def initialize(opts = {})
      @bot = fake_bot
      @handlers = []
      @timers   = []
      # Don't init the bot
      # __register
    end
  end
end
=end
