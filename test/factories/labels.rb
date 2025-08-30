FactoryBot.define do
  factory :label do
    name { "Test Label" }
    address { "123 Test St" }
    phone { "+1-555-0123" }
    status { "Active" }
    specialities { "Metal" }
    founding_date { Date.new(2000, 1, 1) }
    online_shopping { "Yes" }
    description { "Test label description" }
    association :user
    association :country
  end
end