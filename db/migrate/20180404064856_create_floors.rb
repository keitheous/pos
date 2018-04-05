class CreateFloors < ActiveRecord::Migration[5.1]
  def change
    create_table :floors do |t|
      t.string :x_range
      t.string :y_range

      t.timestamps
    end
  end
end
