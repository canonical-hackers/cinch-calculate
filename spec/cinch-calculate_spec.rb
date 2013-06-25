require 'spec_helper'

describe Cinch::Plugins::Calculate do

  include Cinch::Test

  before(:each) do
    @bot = make_bot(Cinch::Plugins::Calculate, {})
  end

  it 'should work!' do
    msg = make_message(@bot, '!math 2 + 2')
    get_replies(msg).first.
      should match(/4/)
  end

end
