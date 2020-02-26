class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.float :rent
      t.integer :service
      t.integer :plan
      t.float :exclusive
      t.integer :security
      t.integer :key
      t.integer :floor
      t.integer :bath
      t.integer :washroom
      t.integer :washing
      t.integer :air
      t.integer :second
      t.string :image_plan
      t.references :building, foreign_key: true
      t.timestamps
    end
  end
end
