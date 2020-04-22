require 'rails_helper'

RSpec.describe 'Project management tests', type: :feature do
  before do
    @user = User.create(name: 'example user', email: 'example@example.com')
  end

  scenario 'valid creation' do
    visit root_path
    click_on 'log in'
    fill_in 'Email', with: @user.email
    click_button 'log in'
    sleep(1)

    expect(page).to have_content('my profile')
    find('.all-my-projects').click
    sleep(1)

    expect(page).to have_content('all my projects')
    click_on 'add new project'
    fill_in 'Name', with: 'project01'
    fill_in 'Hours', with: 33
    click_button 'Create Project'
    sleep(1)

    expect(page).to have_content(@user.name.to_s)
  end

  scenario 'invalid creation' do
    visit root_path
    click_on 'log in'
    fill_in 'Email', with: @user.email
    click_button 'log in'
    sleep(1)

    expect(page).to have_content(@user.name.to_s)
    find('.all-my-projects').click
    sleep(1)

    expect(page).to have_content('all my projects')
    click_on 'add new project'
    fill_in 'Name', with: ''
    fill_in 'Hours', with: ''
    click_button 'Create Project'
    sleep(1)

    expect(page).to have_content("Name can't be blank")
  end
end
