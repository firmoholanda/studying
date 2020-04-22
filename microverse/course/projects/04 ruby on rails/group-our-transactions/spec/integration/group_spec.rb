require 'rails_helper'

RSpec.describe 'group management', type: :feature do
  before do
    @user = User.create(name: 'example user', email: 'example@example.com')
    @group = Group.create!(name: 'computer science 101', icon: 'android', user_id: @user.id)
  end

  scenario 'valid creation' do
    visit root_path
    click_on 'log in'
    fill_in 'Email', with: @user.email
    click_on 'log in'
    sleep(1)

    expect(page).to have_content(@user.name.to_s)
    find('.all-my-groups').click
    sleep(1)

    expect(page).to have_content('all my groups')
    click_on 'add new group'
    sleep(1)

    fill_in 'Name', with: 'group 01'
    find('[name=commit]').click
    sleep(1)

    expect(page).to_not have_content("Name can't be blank")
  end

  scenario 'invalid creation' do
    visit root_path
    click_on 'log in'
    fill_in 'Email', with: @user.email
    click_on 'log in'
    sleep(1)

    expect(page).to have_content(@user.name.to_s)
    find('.all-my-groups').click
    sleep(1)

    expect(page).to have_content(@user.name.to_s)
    click_on 'add new group'
    sleep(1)

    fill_in 'Name', with: ''
    find('[name=commit]').click
    sleep(1)

    expect(page).to have_content("Name can't be blank")
  end
end
