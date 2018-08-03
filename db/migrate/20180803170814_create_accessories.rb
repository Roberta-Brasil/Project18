class CreateAccessories < ActiveRecord::Migration[5.2]
  def change
    create_table :accessories do |t|
      t.string :name
      t.text :model
      t.string :brand
      t.integer :availability
      t.decimal :price
      t.string :location
      t.string :image_url

      t.timestamps
    end
  end
end
