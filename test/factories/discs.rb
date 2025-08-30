FactoryBot.define do
  factory :disc do
    title { "Disc 1" }
    association :album
  end
end