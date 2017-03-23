class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.integer :qty_per_pack
      t.string :name
      t.string :brand
      t.integer :manufacturer_id
      t.boolean :is_banned
      t.float :min_mrp
      t.float :max_mrp
      t.boolean :is_refrigerated
      t.integer :created_by
      t.boolean :is_verified
      t.integer :category_id

      t.timestamps
    end
  end
end
