class AddAttributeIdToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :attribute_id, :integer
  end
end
