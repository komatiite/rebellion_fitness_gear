class AddProvinceToOrder < ActiveRecord::Migration[5.1]
  def change
    add_reference :orders, :province, foreign_key: true
  end
end
