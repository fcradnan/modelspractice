class AddRefinDr < ActiveRecord::Migration[8.0]
  def change
    add_reference :doctors, :department, foreign_key: true
  end
end
