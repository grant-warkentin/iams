class Device < ApplicationRecord
  belongs_to :employee, optional: true
  belongs_to :category
  belongs_to :manufacturer
end
