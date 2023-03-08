class CreateWetsuits < ActiveRecord::Migration[7.0]
  def change
    create_table :wetsuits do |t|
      t.string :url
      t.string :name
      t.float :thickness
      t.string :zip
      t.float :price
      t.string :image

      t.timestamps
    end
  end
end
