class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :filename
      t.boolean :default
      t.integer :productid

      t.timestamps
    end
  end
end
