class RemoveProvinceFromCustomer < ActiveRecord::Migration[5.1]
  def change
    remove_column :customers, :province
  end
end
