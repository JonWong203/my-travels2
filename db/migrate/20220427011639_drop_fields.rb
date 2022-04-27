class DropFields < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :pennkey, :string
    remove_column :users, :is_instructor, :boolean
  end
end
