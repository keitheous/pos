class CreateTables < ActiveRecord::Migration[5.1]
  def change
    create_table :tables do |t|
      t.string :x
      t.string :y
      t.string :name
      t.boolean :active

      t.timestamps
    end
  end
end
