FactoryBot.define do
  factory :character do
    name { "MyString" }
    age { 1 }
    weight { 1 }
    history { "MyText" }
    user { nil }
  end
end
