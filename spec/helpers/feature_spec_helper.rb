def login
  user = create(:user)

  visit '/login'

  fill_in 'Email', with: "#{user.email}"
  fill_in 'Password', with: "pass"

  click_button 'Login'

  return user
end