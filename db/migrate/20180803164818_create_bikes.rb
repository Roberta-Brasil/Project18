class CreateBikes < ActiveRecord::Migration[5.2]
  def change
    create_table :bikes do |t|
      t.decimal :size
      t.string :gender
      t.string :colour
      t.string :type
      t.decimal :price
      t.string :brand
      t.string :image_url
      t.string :location
      t.integer :availability
      t.string :model

      t.timestamps
    end
  end
end
