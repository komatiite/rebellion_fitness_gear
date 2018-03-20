class RemoveFalseForeignKeys < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :provinceid
    remove_column :orders, :customer
    remove_column :images, :productid
  end
end
