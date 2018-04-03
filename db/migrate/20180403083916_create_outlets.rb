class CreateOutlets < ActiveRecord::Migration[5.1]
  def change
    create_table :outlets do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.integer :staff
      t.integer :tables

      t.timestamps
    end
  end
end
