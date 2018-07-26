FactoryBot.define do
  factory :user do
    confirmed_at Time.now # to create confirmed users by default

  end
end
