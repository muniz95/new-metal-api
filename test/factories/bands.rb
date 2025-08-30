FactoryBot.define do
  factory :band do
    name { "Test Band" }
    genre { "Metal" }
    location { "Test City" }
    formed_in { Date.new(2000, 1, 1) }
    themes { "Test themes" }
    photo { nil }
    info { "Test band info" }
    approved { true }
    association :user
    association :band_status
    association :label
    association :country

    trait :rock do
      genre { "Rock" }
      name { "Rock Band" }
    end

    trait :split_up do
      association :band_status, :split_up
    end
  end
end