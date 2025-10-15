class Doctor < ApplicationRecord

  has_many :patients ,through: :appointments
  has_many :appointments, dependent: :destroy
  belongs_to :department
end
