FactoryBot.define do
  factory :role do
    start { 2000 }
    end_year { nil }
    title { "Vocals" }
    association :band
    association :artist
  end
end