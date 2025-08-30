FactoryBot.define do
  factory :lineup do
    role { "Vocals" }
    association :artist
    association :album
  end
end