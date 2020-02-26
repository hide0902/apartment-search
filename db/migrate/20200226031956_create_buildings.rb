class CreateBuildings < ActiveRecord::Migration[5.2]
  def change
    create_table :buildings do |t|
      t.string :name
      t.string :prefecture
      t.string :city
      t.string :street
      t.string :number
      t.string :year
      t.integer :age
      t.integer :lock
      t.integer :net
      t.integer :pets
      t.integer :parking
      t.integer :bike
      t.string :image_top
      t.timestamps
    end
  end
end
