class AddColumnToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :role, :integer
    change_column :users, :role, :integer, :default => 2
  end
end
