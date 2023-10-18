class Employee < ApplicationRecord
  has_many :devices
  has_and_belongs_to_many :softwares, through: :employees_softwares
end
