FactoryBot.define do
  factory :link do
    site { "Official Website" }
    url { "https://example.com" }
    association :band

    trait :artist_link do
      association :artist
      band { nil }
    end

    trait :label_link do
      association :label
      band { nil }
    end
  end
end