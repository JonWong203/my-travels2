class CreateStreets < ActiveRecord::Migration[7.0]
  def change
    create_table :streets do |t|
      t.references :country, null: false, foreign_key: true
      t.string :city
      t.string :street_name
      t.string :location

      t.timestamps
    end
  end
end
