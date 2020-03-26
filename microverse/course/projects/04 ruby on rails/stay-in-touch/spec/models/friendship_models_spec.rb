require 'rails_helper'

RSpec.describe Friendship, type: :model do
  let(:active_friend) { FactoryBot.create :user }
  let(:passive_friend) { FactoryBot.create :user }

  it 'should set approved = false by default' do
    friendship = active_friend.friendships.create(passive_friend_id: passive_friend.id, approved: false)
    expect(friendship.approved).to be false
  end

  context 'association tests' do
    describe 'friendship model associations' do
      it 'belongs to sender' do
        assc = Friendship.reflect_on_association(:active_friend)
        expect(assc.macro).to eq :belongs_to
      end
      it 'belongs to reciever' do
        assc = Friendship.reflect_on_association(:passive_friend)
        expect(assc.macro).to eq :belongs_to
      end
    end
  end
end
