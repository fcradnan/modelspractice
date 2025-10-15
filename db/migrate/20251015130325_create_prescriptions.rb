class CreatePrescriptions < ActiveRecord::Migration[8.0]
  def change
    create_table :prescriptions do |t|
      t.string :medicine_name
      t.integer :dosage
      t.references :appointment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
