require 'rails_helper'

RSpec.describe GroupsController, type: :controller do
  before :each do
    @user = User.create(name: 'example user', email: 'example@example.com')
    @group = Group.create!(name: 'computer science 101', icon: 'android', user_id: @user.id)
  end

  describe '#new' do
    it 'should get new' do
      get :new
      assert_response :success
    end
  end

  describe '#index' do
    it 'should get index' do
      get :index
      assert_response :success
    end
  end
end
