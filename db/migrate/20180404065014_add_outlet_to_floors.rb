class AddOutletToFloors < ActiveRecord::Migration[5.1]
  def change
    add_reference :floors, :outlet, foreign_key: true
  end
end
