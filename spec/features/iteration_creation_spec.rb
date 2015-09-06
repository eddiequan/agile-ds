require 'rails_helper'
require_relative '../helpers/feature_spec_helper.rb'

feature 'Iteration tracking' do
  scenario 'User adds a new iteration' do
    login
    click_link "New iteration"

    fill_in 'Points done', with: 4
    fill_in 'Points done for release', with: 2
    fill_in 'Points planned', with: 22
    fill_in 'Defects complete', with: 3
    fill_in 'Defects incomplete', with: 9

    click_button 'Add'

    expect(page).to have_text 'Entry added'
  end
end