class Item < ApplicationRecord
  belongs_to :outlet

  has_many :orders
  has_many :customers, through: :orders
end
