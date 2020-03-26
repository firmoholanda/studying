require 'rails_helper'

RSpec.describe FriendshipsController, type: :controller do
  let(:user) { FactoryBot.create :user }
  before { sign_in user }

  describe '#new' do
    it 'should initialize empty friendship' do
      get :new, params: { id: user.id }
      expect(user.friendships.empty?).to eql(true)
    end
  end

  describe '#create' do
    it 'should create a friend request' do
      expect(user.friendships.empty?).to eql(true)
      post :create, params: { id: user.id }
      expect(user.friendships.empty?).to eql(false)
    end
  end

  describe '#index' do
    it 'should initialize empty friendship index' do
      get :index, params: { id: user.id }
      expect(user.friendships.empty?).to eql(true)
    end
  end

  describe '#update' do
    it 'should update friendship' do
      expect(user.friendships.empty?).to eql(true)
      post :create, params: { id: user.id }
      patch :update, params: { id: user.id }
      expect(user.friendships.empty?).to eql(false)
    end
  end
end
