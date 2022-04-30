class DropFields3 < ActiveRecord::Migration[7.0]
  def change
    remove_column :streets, :location
    add_column :streets, :longitude, :string
    add_column :streets, :latitude, :string
  end
end
