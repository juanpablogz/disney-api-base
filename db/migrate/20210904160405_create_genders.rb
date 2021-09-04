class CreateGenders < ActiveRecord::Migration[6.0]
  def change
    create_table :genders do |t|
      t.string :name
      t.string :image
      t.references :movie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
