class Employee < ApplicationRecord
  belongs_to :outlet
  has_many :orders
end
