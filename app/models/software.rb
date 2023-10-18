class Software < ApplicationRecord
  has_and_belongs_to_many :employees, through: :employees_softwares
end
