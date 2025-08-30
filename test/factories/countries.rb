FactoryBot.define do
  factory :country do
    name { "United States of America" }

    trait :usa do
      name { "United States of America" }
    end

    trait :brazil do
      name { "Brazil" }
    end

    trait :germany do
      name { "Germany" }
    end
  end
end