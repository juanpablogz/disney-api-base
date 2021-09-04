class AddToUserRefToGenders < ActiveRecord::Migration[6.0]
  def change
    add_reference :genders, :user, null: false, foreign_key: true
  end
end
