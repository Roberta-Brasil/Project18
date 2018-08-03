class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.integer :shop_id
      t.string :shop_address
      t.integer :manager_id
      t.string :employee_name
      t.integer :shop_phone

      t.timestamps
    end
  end
end
