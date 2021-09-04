# == Schema Information
#
# Table name: characters
#
#  id         :bigint           not null, primary key
#  name       :string
#  age        :integer
#  weight     :integer
#  history    :text
#  user_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_characters_on_user_id  (user_id)
#
FactoryBot.define do
  factory :character do
    name { "MyString" }
    age { 1 }
    weight { 1 }
    history { "MyText" }
    user { nil }
  end
end
