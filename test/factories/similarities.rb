FactoryBot.define do
  factory :similarity do
    association :left_band, factory: :band
    association :right_band, factory: :band
  end
end