FactoryGirl.define do
  factory :user do
    email 'user@user.com'
    password '12341234'
  end

  factory :question do
    option_a 'use Ember'
    option_b 'use Rails'
    option_a_count 0
    option_b_count 0
  end
end
