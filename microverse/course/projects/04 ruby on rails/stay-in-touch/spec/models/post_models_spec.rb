require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'association tests' do
    describe 'post model associations' do
      it 'belongs to user' do
        assc = Post.reflect_on_association(:user)
        expect(assc.macro).to eq :belongs_to
      end
      it 'has many comments' do
        assc = Post.reflect_on_association(:comments)
        expect(assc.macro).to eq :has_many
      end

      it 'has many likes' do
        assc = Post.reflect_on_association(:likes)
        expect(assc.macro).to eq :has_many
      end
    end
  end
end
