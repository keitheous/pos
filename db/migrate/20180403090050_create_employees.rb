class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :phone_number
      t.string :position
      t.string :access_level
      t.boolean :active

      t.timestamps
    end
  end
end
