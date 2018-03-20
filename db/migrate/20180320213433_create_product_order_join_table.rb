class CreateProductOrderJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :products, :orders do |t|
      t.index :product_id
      t.index :order_id
      t.integer :quantity
      t.float :price

      t.timestamps
    end
  end
end
