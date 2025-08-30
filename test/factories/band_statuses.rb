FactoryBot.define do
  factory :band_status do
    title { "Active" }
    color { "690" }

    trait :active do
      title { "Active" }
      color { "690" }
    end

    trait :split_up do
      title { "Split-up" }
      color { "AC0000" }
    end
  end
end