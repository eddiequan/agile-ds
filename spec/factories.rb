FactoryGirl.define do
  factory :user do
    email 'test@test.com'
    password 'pass'
    password_confirmation 'pass'
  end
end