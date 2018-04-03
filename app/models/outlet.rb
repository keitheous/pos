class Outlet < ApplicationRecord
  has_many :items
  has_many :employees
  has_many :customers
  has_many :orders
end
