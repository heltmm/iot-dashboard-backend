class CreateReadings < ActiveRecord::Migration[5.1]
  def change
    create_table :readings do |t|
      t.column :temperature, :decimal
      t.column :humidity, :decimal

      t.timestamps
    end
  end
end
