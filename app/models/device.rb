class Device < ApplicationRecord
  belongs_to :employee
  belongs_to :category
  belongs_to :manufacturer
end
