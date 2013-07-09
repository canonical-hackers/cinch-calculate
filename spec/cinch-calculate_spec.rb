require 'spec_helper'

describe Cinch::Plugins::Calculate do

  include Cinch::Test

  before(:each) do
    @bot = make_bot(Cinch::Plugins::Calculate)
  end

  describe 'configuration' do
    it 'should handle units binary not existing gracefully' do
      @bot = make_bot(Cinch::Plugins::Calculate, { :units_path => '/usr/baddir/units' })
      get_replies(make_message(@bot, '!math 2 + 2')).last.text.
        should == 'test: Sorry, I can\'t do that'
    end
  end

  it 'should allow basic math' do
    get_replies(make_message(@bot, '!math 2 + 2')).last.text.
      should == 'test: 4'
  end
end
