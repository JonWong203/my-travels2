class DropDepartments < ActiveRecord::Migration[7.0]
  def change
    drop_table :departments
  end
end
