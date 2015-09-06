FactoryGirl.define do
  factory :user do
    email 'test@test.com'
    password 'pass'
    password_confirmation 'pass'
  end

  factory :iteration do
    date Date.today.to_s
    points_done 1
    points_done_for_release 1
    points_planned 1
    defects_completed 1
    defects_incomplete 1
  end
end