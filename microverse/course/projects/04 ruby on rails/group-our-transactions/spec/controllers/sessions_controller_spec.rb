require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  before :each do
    @user = User.new(name: 'example user', email: 'example@example.com')
  end

  describe '#new' do
    it 'should get new' do
      get :new
      assert_response :success
    end
  end

  describe '#destroy' do
    it 'should delete destroy' do
      delete :destroy
      assert_response :redirect
    end
  end
end
