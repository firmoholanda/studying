require 'rails_helper'

RSpec.describe Project, type: :model do
  before do
    @user = User.create(name: 'example user', email: 'example@example.com')
    @project = Project.create!(name: 'project 01', hours: 10, author_id: @user.id)
  end

  it 'is valid' do
    expect(@project).to be_valid
  end

  context 'association tests' do
    it 'belongs_to author' do
      assc = Project.reflect_on_association(:author)
      expect(assc.macro).to eq :belongs_to
    end

    it 'has many projects_groups' do
      assc = Project.reflect_on_association(:projects_groups)
      expect(assc.macro).to eq :has_many
    end

    it 'has many groups' do
      assc = Project.reflect_on_association(:groups)
      expect(assc.macro).to eq :has_many
    end
  end
end
