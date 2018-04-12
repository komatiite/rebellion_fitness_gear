class ChangeFieldsInOrder < ActiveRecord::Migration[5.1]
  def change
    rename_column :orders, :stripeid, :stripe_customer_id
    add_column :orders, :stripe_charge_id, :int
  end
end