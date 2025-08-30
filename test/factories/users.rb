FactoryBot.define do
  factory :user do
    first_name { "John" }
    last_name { "Doe" }
    gender { "Male" }
    birth { Date.new(1990, 1, 1) }
    favorite_genres { "Metal" }
    biography { "Test biography" }
    sequence(:email) { |n| "test#{n}@example.com" }
    sequence(:username) { |n| "testuser#{n}" }
    password { "password123" }
    association :country

    trait :female do
      first_name { "Jane" }
      gender { "Female" }
    end
  end
end