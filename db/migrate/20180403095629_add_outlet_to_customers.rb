class AddOutletToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_reference :customers, :outlet, foreign_key: true
  end
end
