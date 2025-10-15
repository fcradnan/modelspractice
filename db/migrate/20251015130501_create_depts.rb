class CreateDepts < ActiveRecord::Migration[8.0]
  def change
    create_table :depts do |t|
      t.string :name
      t.integer :floor

      t.timestamps
    end
  end
end
