FactoryGirl.define do
  factory :user do
    email Faker::Internet.email
    password 'password'
    password_confirmation 'password'

    trait :admin do
      admin DateTime.now
    end
  end
end
