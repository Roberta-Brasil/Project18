class CreateClothings < ActiveRecord::Migration[5.2]
  def change
    create_table :clothings do |t|
      t.string :type
      t.string :brand
      t.text :model
      t.string :gender
      t.string :location
      t.integer :availability
      t.decimal :price
      t.string :size

      t.timestamps
    end
  end
end
