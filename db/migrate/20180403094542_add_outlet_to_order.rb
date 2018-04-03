class AddOutletToOrder < ActiveRecord::Migration[5.1]
  def change
    add_reference :orders, :outlet, foreign_key: true
  end
end
