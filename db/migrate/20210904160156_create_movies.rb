class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :image
      t.string :title
      t.date :creating
      t.integer :rating
      t.references :character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
