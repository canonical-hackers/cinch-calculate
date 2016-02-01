require 'spec_helper'

describe Cinch::Plugins::Calculate do

  include Cinch::Test

  before(:each) do
    opts = ENV.key?('UNITS_PATH') ? { :units_path => ENV['UNITS_PATH'] } : {}
    @bot = make_bot(Cinch::Plugins::Calculate, opts)
  end

  describe 'configuration' do
    it 'handles units binary not existing gracefully' do
      bot = make_bot(Cinch::Plugins::Calculate, { units_path: '/usr/baddir/units' })
      reply = get_replies(make_message(bot, '!math 2 + 2')).last.text
      expect(reply).to eq('test: Sorry, I can\'t do that')
    end
  end

  it 'allows basic math' do
    message = get_replies(make_message(@bot, '!math 2 + 2')).last.text
    expect(message).to eq('test: 4')
  end
end
