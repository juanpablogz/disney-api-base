class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :age
      t.integer :weight
      t.text :history
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
