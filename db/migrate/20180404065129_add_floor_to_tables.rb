class AddFloorToTables < ActiveRecord::Migration[5.1]
  def change
    add_reference :tables, :floor, foreign_key: true
  end
end
