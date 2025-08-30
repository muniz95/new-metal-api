FactoryBot.define do
  factory :review do
    title { "Great Album" }
    rating { 5 }
    date { Date.current }
    content { "This is an excellent album with great songs." }
    status { "Published" }
    association :album
    association :user
  end
end