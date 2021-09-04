# == Schema Information
#
# Table name: genders
#
#  id         :bigint           not null, primary key
#  name       :string
#  image      :string
#  movie_id   :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_genders_on_movie_id  (movie_id)
#  index_genders_on_user_id   (user_id)
#
class Gender < ApplicationRecord
  belongs_to :movie
  belongs_to :user
end
