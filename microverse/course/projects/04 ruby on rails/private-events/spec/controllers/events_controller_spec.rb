require 'rails_helper'

RSpec.describe EventsController, type: :controller do
  before :each do
    @user = User.new(name: 'example user', email: 'example@example.com')
    @non_host = User.new(name: 'example user 02 non host', email: 'example2@example.com')
    @event = @user.events_as_host.build(name: 'example event', description: 'lorem ipsum.', event_date: 1.week.from_now)
  end

  describe '#new' do
    it 'should redirect new when not logged in' do
      get :new
      assert_redirected_to login_url
    end
  end

  describe '#create' do
    it 'should redirect create when not logged in' do
      post :create
      assert_redirected_to login_url
    end
  end
end
