require 'rails_helper'
require_relative '../helpers/feature_spec_helper.rb'
feature 'Authentication' do
  scenario 'User logs in' do
    login
    expect(page).to have_text 'Login successful'
  end

  scenario 'User logs out' do
    login
    click_link 'Logout'

    expect(page).to have_text 'Logged out!'
  end
end