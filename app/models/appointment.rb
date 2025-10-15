class Appointment < ApplicationRecord
  has_one :prescription, dependent: :destroy
  belongs_to :doctor
  belongs_to :patient
end
