FactoryBot.define do
  factory :movie do
    image { "MyString" }
    title { "MyString" }
    creating { "2021-09-04" }
    rating { 1 }
    character { nil }
  end
end
