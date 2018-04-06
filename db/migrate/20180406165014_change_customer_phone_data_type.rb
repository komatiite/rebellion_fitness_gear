class ChangeCustomerPhoneDataType < ActiveRecord::Migration[5.1]
  def change
    change_column :customers, :phone, :string
  end
end
