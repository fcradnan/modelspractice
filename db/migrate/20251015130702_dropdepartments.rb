class Dropdepartments < ActiveRecord::Migration[8.0]
  def change
    drop_table :departments
  end
end
