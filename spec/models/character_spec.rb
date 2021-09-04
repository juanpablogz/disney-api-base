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
#  image      :string
#
# Indexes
#
#  index_characters_on_user_id  (user_id)
#
require 'rails_helper'

RSpec.describe Character, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
