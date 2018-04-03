class Customer < ApplicationRecord
  belongs_to :outlet

  has_many :orders
  has_many :items, through: :orders
end
