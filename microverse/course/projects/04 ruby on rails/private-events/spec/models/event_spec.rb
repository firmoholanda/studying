require 'rails_helper'

RSpec.describe Event, type: :model do
  context 'validation tests' do
    before :each do
      @user = User.new(name: 'example user', email: 'example@example.com')
      @event = @user.events_as_host.build(name: 'example event', description: 'lorem ipsum.', event_date: Time.now)
    end

    it 'should not be valid if event host is not present' do
      expect(@event).to_not be_valid
    end

    it 'name should be present' do
      @event.name = '   '
      expect(@event).to_not be_valid
    end

    it 'description should be present' do
      @event.description = '   '
      expect(@event).to_not be_valid
    end

    it 'event_date should be present' do
      @event.event_date = nil
      expect(@event).to_not be_valid
    end

    it 'host_id should be present' do
      @event.host_id = nil
      expect(@event).to_not be_valid
    end
  end

  context 'association tests' do
    describe 'event model associations' do
      it 'belongs to host' do
        assc = Event.reflect_on_association(:host)
        expect(assc.macro).to eq :belongs_to
      end
      it 'has many invites' do
        assc = Event.reflect_on_association(:invites)
        expect(assc.macro).to eq :has_many
      end
      it 'has many guests' do
        assc = Event.reflect_on_association(:guests)
        expect(assc.macro).to eq :has_many
      end
    end
  end
end
