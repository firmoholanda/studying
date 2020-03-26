require 'rails_helper'

RSpec.describe Comment, type: :model do
  context 'association tests' do
    describe 'comment model associations' do
      it 'belongs to user' do
        assc = Comment.reflect_on_association(:user)
        expect(assc.macro).to eq :belongs_to
      end

      it 'belongs to post' do
        assc = Comment.reflect_on_association(:post)
        expect(assc.macro).to eq :belongs_to
      end
    end
  end
end
