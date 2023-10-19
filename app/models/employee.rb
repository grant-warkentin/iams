class Employee < ApplicationRecord
  has_one_attached :profile_picture do |attachable| 
    attachable.variant :thumb, resize_to_limit: [100,100]
  end

  has_many :devices
  has_and_belongs_to_many :softwares, through: :employees_softwares
end
