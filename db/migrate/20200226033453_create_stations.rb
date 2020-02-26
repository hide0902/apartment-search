class CreateStations < ActiveRecord::Migration[5.2]
  def change
    create_table :stations do |t|
      t.integer :route
      t.integer :name
      t.integer :walk
      t.references :building, foreign_key: true
      t.timestamps
    end
  end
end
