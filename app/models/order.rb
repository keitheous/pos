class Order < ApplicationRecord
  belongs_to :outlet
  belongs_to :employee
end
