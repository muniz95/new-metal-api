FactoryBot.define do
  factory :artist do
    name { "Test Artist" }
    moniker { "Artist Alias" }
    birth { Date.new(1980, 1, 1) }
    death { nil }
    gender { "Male" }
    district { "Test District" }
    city { "Test City" }
    biography { "Test artist biography" }
    trivia { "Test trivia" }
    association :user
    association :country

    trait :female do
      gender { "Female" }
      name { "Jane Artist" }
    end

    trait :deceased do
      death { Date.new(2020, 5, 13) }
    end
  end
end