require 'rails_helper'

feature 'Sign-up management' do
  scenario 'New User signs up' do
    visit '/'

    click_link 'Register'

    fill_in 'Email', with: 'test2@test.com'
    fill_in 'Password', with: 'Password'
    fill_in 'Password confirmation', with: 'Password'

    click_button 'Create User'

    expect(page).to have_text 'User was successfully created.'
  end
end