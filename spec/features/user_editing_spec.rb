require 'rails_helper'
require_relative '../helpers/feature_spec_helper.rb'

feature 'Edit user' do
  scenario 'Edit a user' do
    login
    click_link 'Edit Profile'

    fill_in 'Password', with: "pass123"
    fill_in 'Password confirmation', with: "pass123"

    click_button 'Update User'

    expect(page).to have_text 'User was successfully updated.'
  end
end
