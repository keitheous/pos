class Customer < ApplicationRecord
  belongs_to :outlet
  has_one :order
end
