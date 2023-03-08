class CreateSurfboards < ActiveRecord::Migration[7.0]
  def change
    create_table :surfboards do |t|
      t.string :url
      t.string :name
      t.string :level
      t.float :volume
      t.float :dimension_length
      t.float :dimension_height
      t.float :dimension_thickness
      t.float :price
      t.string :image

      t.timestamps
    end
  end
end
