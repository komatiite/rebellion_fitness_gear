class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :customer
      t.datetime :date
      t.string :status
      t.string :stripeid
      t.float :gst
      t.float :pst
      t.integer :provinceid

      t.timestamps
    end
  end
end
