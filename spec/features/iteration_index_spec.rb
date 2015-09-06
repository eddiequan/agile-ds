require 'rails_helper'
require_relative '../helpers/feature_spec_helper.rb'

feature 'Iteration tracking' do
  scenario 'User accesses the Iterations index page' do
    user = login
    iteration = create(:iteration, user_id: user.id )

    visit '/iterations/'

    expect(page).to have_text "Iteration 1"
  end
end