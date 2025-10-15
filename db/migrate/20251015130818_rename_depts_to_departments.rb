class RenameDeptsToDepartments < ActiveRecord::Migration[8.0]
  def change
    rename_table :depts, :departments
  end

end
