class Patient < ApplicationRecord
  has_many :appointments, dependent: :destroy
  has_many :doctors ,through: :appointments #issue fix : miss ta 
end

