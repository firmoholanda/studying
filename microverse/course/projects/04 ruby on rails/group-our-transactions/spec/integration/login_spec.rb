require 'rails_helper'

RSpec.describe 'Log in tests', type: :feature do
  before do
    @user = User.create(name: 'example user', email: 'example@example.com')
  end

  scenario 'valid login' do
    visit root_path
    click_on 'log in'
    fill_in 'Email', with: @user.email
    click_button 'log in'
    sleep(1)
    expect(page).to have_content(@user.name.to_s)
  end

  scenario 'invalid login' do
    visit root_path
    click_on 'log in'
    fill_in 'Email', with: ''
    click_button 'log in'
    sleep(1)
    expect(page).to_not have_content(@user.name.to_s)
  end
end
