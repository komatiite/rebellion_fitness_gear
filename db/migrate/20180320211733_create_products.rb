class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :sku
      t.string :name
      t.text :description
      t.integer :quantity
      t.boolean :active

      t.timestamps
    end
  end
end
