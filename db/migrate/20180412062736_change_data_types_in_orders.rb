class ChangeDataTypesInOrders < ActiveRecord::Migration[5.1]
  def change
    change_column :orders, :stripe_customer_id, :string
    change_column :orders, :stripe_charge_id, :string
  end
end
