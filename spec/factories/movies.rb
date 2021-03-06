# == Schema Information
#
# Table name: movies
#
#  id           :bigint           not null, primary key
#  image        :string
#  title        :string
#  creating     :date
#  rating       :integer
#  character_id :bigint           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :bigint           not null
#
# Indexes
#
#  index_movies_on_character_id  (character_id)
#  index_movies_on_user_id       (user_id)
#
FactoryBot.define do
  factory :movie do
    image { "MyString" }
    title { "MyString" }
    creating { "2021-09-04" }
    rating { 1 }
    character { nil }
  end
end
