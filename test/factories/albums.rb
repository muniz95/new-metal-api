FactoryBot.define do
  factory :album do
    name { "Test Album" }
    description { "Test album description" }
    album_type { "Full-length" }
    genre { "Metal" }
    format { "CD" }
    catalog_id { "TEST001" }
    additional_notes { "Test notes" }
    recording_information { "Test recording info" }
    identifiers { "TEST-ID-001" }
    album_date { Date.new(2020, 1, 1) }
    association :user
    association :label

    trait :vinyl do
      format { "Vinyl" }
    end

    trait :rock do
      genre { "Rock" }
      name { "Rock Album" }
    end
  end
end