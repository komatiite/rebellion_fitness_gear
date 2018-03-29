class AddNewSaleToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :new, :boolean
    add_column :products, :sale, :boolean
  end
end
