class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :phone_number
      t.decimal :total_sum, precision: 8, scale: 2
      t.boolean :take_out, default: false
      t.date :dine_in_date
      t.time :dine_in_time
      t.datetime :session

      t.timestamps
    end
  end
end
