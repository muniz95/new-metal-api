FactoryBot.define do
  factory :participation do
    association :band
    association :album
  end
end