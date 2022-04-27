class DropFields2 < ActiveRecord::Migration[7.0]
  def change
    remove_column :countries, :user_id
  end
end
