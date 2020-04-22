require 'rails_helper'

RSpec.describe 'sign up tests', type: :feature do
  scenario 'valid signup' do
    visit root_path
    click_on 'sign up'
    fill_in 'Name', with: 'example user'
    fill_in 'Email', with: 'example@example.com'
    click_button 'create my account'
    sleep(1)

    expect(page).to have_content('user successfully created.')
  end

  scenario 'invalid signup' do
    visit root_path
    click_on 'sign up'
    fill_in 'Name', with: ''
    fill_in 'Email', with: ''
    click_button 'create my account'
    sleep(1)

    expect(page).to have_content("Name can't be blank")
  end
end
