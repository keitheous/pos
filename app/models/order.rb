class Order < ApplicationRecord
  belongs_to :outlet
  belongs_to :employee

  belongs_to :customer
end
