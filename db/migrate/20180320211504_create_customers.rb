class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :password
      t.integer :phone
      t.string :address
      t.string :city
      t.string :province
      t.string :postalcode
      t.string :shippingaddress
      t.string :shippingcity
      t.string :shippingprovince
      t.string :shippingpostalcode

      t.timestamps
    end
  end
end
