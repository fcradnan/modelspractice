class Doctor < ApplicationRecord

  has_many :patients ,through: :appointments
  has_many :appointments, dependent: :destroy
  belongs_to :department



   def todays_appointments
    appointments.where(date: Date.today.all_day)
  end
end
