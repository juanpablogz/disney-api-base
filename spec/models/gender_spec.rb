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
#
# Indexes
#
#  index_genders_on_movie_id  (movie_id)
#
require 'rails_helper'

RSpec.describe Gender, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
