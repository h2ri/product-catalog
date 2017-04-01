class CreateTestmodels < ActiveRecord::Migration[5.0]
  def change
    create_table :testmodels do |t|

      t.timestamps
    end
  end
end
