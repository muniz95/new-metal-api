FactoryBot.define do
  factory :song do
    title { "Test Song" }
    length { 3.5 }
    lyrics { "Test lyrics" }
    bonus { false }
    association :disc

    trait :bonus_track do
      bonus { true }
      title { "Bonus Track" }
    end
  end
end