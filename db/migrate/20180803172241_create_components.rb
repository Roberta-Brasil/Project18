class CreateComponents < ActiveRecord::Migration[5.2]
  def change
    create_table :components do |t|
      t.string :name
      t.string :brand
      t.string :model
      t.integer :availability
      t.decimal :price
      t.string :location

      t.timestamps
    end
  end
end
