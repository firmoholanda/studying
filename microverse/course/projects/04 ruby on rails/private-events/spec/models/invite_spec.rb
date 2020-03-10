require 'rails_helper'

RSpec.describe Invite, type: :model do
  context 'validation tests' do
    before :each do
      @user = User.create(name: 'example user', email: 'example@example.com')
      @event = @user.events_as_host.build(name: 'example event', description: 'lorem ipsum.', event_date: Time.now)
      @invite = Invite.new(reply: 'yes')
    end

    it 'should reject when not given anything' do
      @invite = Invite.new
      expect(@invite.valid?).to eql(false)
    end

    it 'user_id should be present' do
      @invite.user_id = nil
      expect(@invite).to_not be_valid
    end

    it 'event_id should be present' do
      @invite.event_id = nil
      expect(@invite).to_not be_valid
    end
  end
end
