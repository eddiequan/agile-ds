require 'rails_helper'

feature 'Sign-up management' do
  scenario 'New User signs up' do
    visit '/'
    click_button 'Create Account'

    fill_in 'Name', with: 'Username'
    fill_in 'Password', with: 'Password'

    click_button 'Sign Up'

    expect(page).to have_css '.user-name', 'Username'
  end
end