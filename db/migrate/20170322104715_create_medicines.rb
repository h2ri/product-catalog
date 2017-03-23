class CreateMedicines < ActiveRecord::Migration[5.0]
  def change
    create_table :medicines do |t|
      t.string :drug_form
      t.string :pack_form
      t.string :schedule
      t.boolean :is_h1
      t.boolean :is_chronic
      t.string :use_form
      t.string :use_form_head
      t.string :therapeutic
      t.integer :product_id

      t.timestamps
    end
  end
end
