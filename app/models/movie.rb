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
#
# Indexes
#
#  index_movies_on_character_id  (character_id)
#
class Movie < ApplicationRecord
  belongs_to :character
end
