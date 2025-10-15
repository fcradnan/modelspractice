class CreateDoctors < ActiveRecord::Migration[8.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :specialization
      t.integer :experience_years

      t.timestamps
    end
  end
end
