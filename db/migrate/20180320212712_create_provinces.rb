class CreateProvinces < ActiveRecord::Migration[5.1]
  def change
    create_table :provinces do |t|
      t.string :code
      t.float :gst
      t.float :pst

      t.timestamps
    end
  end
end
