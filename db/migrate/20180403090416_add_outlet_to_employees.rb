class AddOutletToEmployees < ActiveRecord::Migration[5.1]
  def change
    add_reference :employees, :outlet, foreign_key: true
  end
end
