class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :number
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
